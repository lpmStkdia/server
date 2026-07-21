import { RankService } from "@/shared/services/rank.service";
import { UserDocument } from "@/shared/models/user.model";

const RESOURCE_BASE_URL = (() => {
  const explicit = process.env.RESOURCE_URL?.trim();
  if (explicit) return explicit.replace(/\/+$|\s+$/g, "");

  const panelUrl = process.env.WEBPANEL_URL?.trim();
  if (panelUrl) {
    try {
      const url = new URL(panelUrl);
      url.pathname = "";
      url.search = "";
      url.hash = "";
      return url.toString().replace(/\/$/, "");
    } catch {
      return "";
    }
  }

  return "";
})();

function resourcePath(relativePath: string): string {
  if (!RESOURCE_BASE_URL) {
    return relativePath;
  }
  return `${RESOURCE_BASE_URL}${relativePath}`;
}

export interface ProfileCardItem {
  id: string;
  name: string;
  category: string;
  icon?: string;
  owned: boolean;
  equipped: boolean;
  level?: number;
  previewUrl?: string;
  alphaUrl?: string;
  textureUrl?: string;
  // NEW: base *directories* (trailing slash), matching the real client's
  // BaseLoader.loadCommon(), which appends "object.3ds", "lightmap.jpg",
  // "details.jpg", "details_alpha.jpg", "image.jpg" itself. This replaces
  // the old pre-built filename URLs, since the game's loader needs to own
  // that filename convention for the alignment logic to match exactly.
  modelBaseUrl?: string; // hull / turret only
  colormapBaseUrl?: string; // paint only
  // Optional "live" (animated) paint source — NOT part of the real client
  // code available to us; best-effort addition, falls back to image.jpg.
  liveImageUrl?: string;
  livePropertiesUrl?: string;
  count?: number;
}

export interface ProfileViewModel {
  username: string;
  rank: { id: number; name: string; minScore: number; experienceToNextRank: number };
  rankIconUrl?: string;
  experience: number;
  nextRankScore: number;
  rankProgress: number;
  crystals: number;
  kills: number;
  deaths: number;
  kdRatio: string;
  suppliesUsed: number;
  goldBoxesCaught: number;
  battles: number;
  wins: number;
  losses: number;
  winRate: string;
  maxKillsInBattle: number;
  maxCrystalsInBattle: number;
  maxDamageInBattle: number;
  maxXpInBattle: number;
  ownedHulls: ProfileCardItem[];
  ownedTurrets: ProfileCardItem[];
  ownedPaints: ProfileCardItem[];
  ownedSupplies: ProfileCardItem[];
  ownedKits: ProfileCardItem[];
  equippedHull: ProfileCardItem;
  equippedTurret: ProfileCardItem;
  equippedPaint: ProfileCardItem;
  equipmentSummary: ProfileCardItem[];
}

function formatName(input: string): string {
  return input
    .split(/[_-]/)
    .filter(Boolean)
    .map((part) => part.charAt(0).toUpperCase() + part.slice(1))
    .join(" ");
}

function getCounterValue(counters: Map<string, number> | Record<string, number> | undefined, key: string): number {
  if (!counters) return 0;
  if (counters instanceof Map) return counters.get(key) ?? 0;
  return counters[key] ?? 0;
}

function toProfileItem(id: string, category: string, owned: boolean, equipped: boolean, level?: number, mod?: number): ProfileCardItem {
  const displayName = formatName(id);
  const safeMod = mod ?? 0;
  const resourceId = id.toLowerCase();

  const supplyPreviewId = id === "n2o" ? "nitro" : id === "double_damage" ? "damage" : resourceId;

  const previewUrl = category === "hull"
    ? resourcePath(`/hull/${resourceId}/m${safeMod}/preview/v1/image.png`)
    : category === "turret"
      ? resourcePath(`/turret/${resourceId}/m${safeMod}/preview/v1/image.png`)
      : category === "paint"
        ? resourcePath(`/paint/${resourceId}/preview/v1/image.png`)
        : category === "kit"
          ? resourcePath(`/kits/${resourceId}/preview/v1/image.png`)
          : category === "supply"
            ? resourcePath(`/bonuses/${supplyPreviewId}/preview/v1/image.png`)
            : undefined;

  const alphaUrl = category === "hull"
    ? resourcePath(`/hull/${resourceId}/m${safeMod}/preview/v1/alpha.png`)
    : category === "turret"
      ? resourcePath(`/turret/${resourceId}/m${safeMod}/preview/v1/alpha.png`)
      : category === "paint"
        ? resourcePath(`/paint/${resourceId}/preview/v1/alpha.png`)
        : category === "kit"
          ? resourcePath(`/kits/${resourceId}/preview/v1/alpha.png`)
          : category === "supply"
            ? resourcePath(`/bonuses/${supplyPreviewId}/preview/v1/alpha.png`)
            : undefined;

  const textureUrl = category === "paint"
    ? resourcePath(`/paint/${resourceId}/texture/v1/image.jpg`)
    : undefined;

  // Base *directories* — the client appends the real filenames itself,
  // exactly like BaseLoader.loadCommon() does in the actual game bundle.
  const modelBaseUrl = category === "hull"
    ? resourcePath(`/hull/${resourceId}/m${safeMod}/model/v1/`)
    : category === "turret"
      ? resourcePath(`/turret/${resourceId}/m${safeMod}/model/v1/`)
      : undefined;

  const colormapBaseUrl = category === "paint"
    ? resourcePath(`/paint/${resourceId}/texture/v1/`)
    : undefined;

  const liveImageUrl = category === "paint"
    ? resourcePath(`/paint/${resourceId}/texture/v1/image.tara`)
    : undefined;
  const livePropertiesUrl = category === "paint"
    ? resourcePath(`/paint/${resourceId}/texture/v1/properties.json`)
    : undefined;

  return {
    id,
    name: displayName,
    category,
    icon: previewUrl,
    owned,
    equipped,
    level,
    previewUrl,
    alphaUrl,
    textureUrl,
    modelBaseUrl,
    colormapBaseUrl,
    liveImageUrl,
    livePropertiesUrl,
  };
}

function getRankIconUrl(rankId: number): string | undefined {
  if (rankId === 31) {
    return "/rank/BigRank31.png";
  }
  return undefined;
}

export function buildProfileViewModel(user: UserDocument, rankService: RankService): ProfileViewModel {
  const rank = rankService.getRankById(user.rank) ?? rankService.getRankForExperience(user.experience);
  const counters = (user.stats?.counters as Map<string, number> | undefined) ?? new Map();

  const kills = getCounterValue(counters, "kills");
  const deaths = getCounterValue(counters, "deaths");
  const goldBoxesCaught = getCounterValue(counters, "bonus_taken:gold");
  const suppliesUsed = getCounterValue(counters, "supplies_used");

  const hullEntries = Array.from(user.hulls?.entries?.() ?? []).map(([id, level]) => ({ id, level }));
  const turretEntries = Array.from(user.turrets?.entries?.() ?? []).map(([id, level]) => ({ id, level }));
  const paintEntries = (user.paints ?? []).map((id: string) => ({ id }));
  const supplyEntries = Array.from(user.supplies?.entries?.() ?? []).map(([id, count]) => ({ id, count }));
  const kitEntries = (user.kits ?? []).map((id: string) => ({ id }));

  const ownedHulls = hullEntries
    .map(({ id, level }) => toProfileItem(id, "hull", true, id === user.equippedHull, level, level))
    .sort((a, b) => a.name.localeCompare(b.name));
  const ownedTurrets = turretEntries
    .map(({ id, level }) => toProfileItem(id, "turret", true, id === user.equippedTurret, level, level))
    .sort((a, b) => a.name.localeCompare(b.name));
  const ownedPaints = paintEntries
    .map(({ id }) => toProfileItem(id, "paint", true, id === user.equippedPaint))
    .sort((a, b) => a.name.localeCompare(b.name));
  const ownedSupplies = supplyEntries
    .filter(({ count }) => count > 0)
    .map(({ id, count }) => ({ ...toProfileItem(id, "supply", true, false), count }))
    .sort((a, b) => a.name.localeCompare(b.name));
  const ownedKits = kitEntries
    .map(({ id }) => toProfileItem(id, "kit", true, false))
    .sort((a, b) => a.name.localeCompare(b.name));

  const equippedHull = ownedHulls.find((item) => item.equipped) ?? toProfileItem(user.equippedHull ?? "hunter", "hull", true, true, 0, 0);
  const equippedTurret = ownedTurrets.find((item) => item.equipped) ?? toProfileItem(user.equippedTurret ?? "smoky", "turret", true, true, 0, 0);
  const equippedPaint = ownedPaints.find((item) => item.equipped) ?? toProfileItem(user.equippedPaint ?? "green", "paint", true, true);

  const games = user.ranked?.games ?? 0;
  const wins = user.ranked?.wins ?? 0;
  const losses = user.ranked?.losses ?? 0;
  const winRate = games > 0 ? `${Math.round((wins / games) * 100)}%` : "0%";
  const nextRankScore = user.nextRankScore;
  const rankProgress = nextRankScore > rank.minScore
    ? Math.min(100, Math.max(0, Math.round(((user.experience - rank.minScore) / (nextRankScore - rank.minScore)) * 100)))
    : 100;

  return {
    username: user.username,
    rank,
    rankIconUrl: getRankIconUrl(rank.id),
    experience: user.experience,
    nextRankScore: user.nextRankScore,
    rankProgress,
    crystals: user.crystals,
    kills,
    deaths,
    kdRatio: deaths > 0 ? (kills / deaths).toFixed(2) : (kills > 0 ? "∞" : "0.00"),
    suppliesUsed,
    goldBoxesCaught,
    battles: games,
    wins,
    losses,
    winRate,
    maxKillsInBattle: user.stats?.maxKillsInBattle ?? 0,
    maxCrystalsInBattle: user.stats?.maxCrystalsInBattle ?? 0,
    maxDamageInBattle: user.stats?.maxDamageInBattle ?? 0,
    maxXpInBattle: user.stats?.maxXpInBattle ?? 0,
    ownedHulls,
    ownedTurrets,
    ownedPaints,
    ownedSupplies,
    ownedKits,
    equippedHull,
    equippedTurret,
    equippedPaint,
    equipmentSummary: [equippedHull, equippedTurret, equippedPaint],
  };
}

// ---------------------------------------------------------------------------
// 3D viewer config — base directories only; the client appends the real
// filenames itself (object.3ds / lightmap.jpg / details.jpg /
// details_alpha.jpg / image.jpg), same as the game's BaseLoader.loadCommon().
// ---------------------------------------------------------------------------
function buildViewerConfig(view: ProfileViewModel) {
  return {
    hull: { baseUrl: view.equippedHull.modelBaseUrl },
    turret: { baseUrl: view.equippedTurret.modelBaseUrl },
    colormapUrl: view.equippedPaint.colormapBaseUrl,
    // Best-effort live paint (not present in the real client bundle).
    live: {
      image: view.equippedPaint.liveImageUrl,
      properties: view.equippedPaint.livePropertiesUrl,
    },
  };
}

function getViewerScript(config: ReturnType<typeof buildViewerConfig>): string {
  const configJson = JSON.stringify(config);

  return `
<script type="importmap">
{
  "imports": {
    "three": "https://unpkg.com/three@0.160.0/build/three.module.js",
    "three/addons/": "https://unpkg.com/three@0.160.0/examples/jsm/"
  }
}
</script>

<script type="module">
import * as THREE from 'three';
import { Reflector } from 'three/addons/objects/Reflector.js';

const TANK_CONFIG = ${configJson};

const container = document.getElementById('tank-viewer-canvas');
const statusEl = document.getElementById('tank-viewer-status');
function logStatus(msg) {
  if (!msg) return;
  const line = document.createElement('div');
  line.textContent = msg;
  statusEl.appendChild(line);
  console.warn(msg);
}

// =============================================================================
// 3DS PARSER — ported 1:1 from the real ProTanki client bundle's chunk reader
// (class "za" in the compiled source), including the KEYFRAMER/PIVOT handling
// that the old bounding-box heuristic did not use. This is what makes hull
// origin + turret mount points line up exactly like in-game.
// =============================================================================
const CHUNK = {
  MAIN: 0x4D4D, SCENE: 0x3D3D, MATERIAL: 0xAFFF, MAT_NAME: 0xA000, COLOR_24: 0x0011,
  MAP_DIFFUSE: 0xA200, MAP_OPACITY: 0xA210, MAP_FILE: 0xA300,
  MAP_SCALE_U: 0xA354, MAP_SCALE_V: 0xA356, MAP_OFFSET_U: 0xA358, MAP_OFFSET_V: 0xA35A, MAP_ROT: 0xA35C,
  OBJECT: 0x4000, TRIMESH: 0x4100, VERTS: 0x4110, FACES: 0x4120, FACES_MAT: 0x4130,
  MAPCOORDS: 0x4140, SMOOTH: 0x4150, TRANSFORM: 0x4160,
};
const KF_CHUNK = { KEYFRAMER: 0xB000, NODE_HDR: 0xB010, PIVOT: 0xB013 };

class TDS3DSParser {
  materials = {};
  objects = {};
  animPivots = [];

  async parse(arrayBuffer, opts) {
    const o = {
      scale: opts?.scale ?? 1,
      zUpToYUp: opts?.zUpToYUp ?? true,
      flipV: opts?.flipV ?? false,
      unityReset: opts?.unityReset ?? true,
      mirrorX: opts?.mirrorX ?? false,
    };
    this.dv = new DataView(arrayBuffer);
    this.materials = {};
    this.objects = {};
    this.animPivots = [];
    this.parse3DS(0, this.dv.byteLength);

    const zUpToYUp = new THREE.Matrix4().set(
      1, 0, 0, 0,
      0, 0, 1, 0,
      0, -1, 0, 0,
      0, 0, 0, 1
    );

    let originOffset = new THREE.Vector3(0, 0, 0);
    {
      const first = Object.values(this.objects).find((f) => f.d !== undefined);
      if (first) {
        originOffset.set(first.d, first.h, first.l);
        const firstPivot = this.animPivots[0];
        if (!firstPivot || firstPivot.childCount === 0) originOffset.set(0, 0, 0);
      }
    }

    const pivotMap = new Map();
    this.animPivots.forEach((p) => { if (p.pivot) pivotMap.set(p.name, p.pivot.clone()); });

    const group = new THREE.Group();
    const meshes = [];
    const byName = {};

    for (const obj of Object.values(this.objects)) {
      if (!obj.vertices || !obj.faces) continue;

      const objTransform = obj.d !== undefined ? new THREE.Vector3(obj.d, obj.h, obj.l) : new THREE.Vector3(0, 0, 0);
      const animPivot = pivotMap.get(obj.name) ?? new THREE.Vector3(0, 0, 0);

      const src = obj.vertices;
      const out = new Float32Array(src.length);
      const p = new THREE.Vector3();
      for (let i = 0; i < src.length; i += 3) {
        if (o.unityReset) {
          p.set(
            src[i] - (objTransform.x + animPivot.x),
            src[i + 1] - (objTransform.y + animPivot.y),
            src[i + 2] - (objTransform.z + animPivot.z)
          );
        } else {
          p.set(src[i], src[i + 1], src[i + 2]);
        }
        if (o.zUpToYUp) p.applyMatrix4(zUpToYUp);
        p.multiplyScalar(o.scale);
        if (o.mirrorX) p.x = -p.x;
        out[i] = p.x; out[i + 1] = p.y; out[i + 2] = p.z;
      }

      const geometry = new THREE.BufferGeometry();
      geometry.setAttribute('position', new THREE.BufferAttribute(out, 3));

      if (obj.uvs && obj.uvs.length > 0) {
        const uv = new Float32Array(obj.uvs.length);
        for (let i = 0; i < obj.uvs.length; i += 2) {
          uv[i] = obj.uvs[i];
          uv[i + 1] = o.flipV ? 1 - obj.uvs[i + 1] : obj.uvs[i + 1];
        }
        geometry.setAttribute('uv', new THREE.BufferAttribute(uv, 2));
      }

      let groups = [];
      if (obj.surfaces && Object.keys(obj.surfaces).length > 0) {
        for (const [matName, faceIdx] of Object.entries(obj.surfaces)) {
          const idx = [];
          for (const fi of faceIdx) { const w = fi * 3; idx.push(obj.faces[w], obj.faces[w + 1], obj.faces[w + 2]); }
          groups.push({ matName, idx });
        }
      } else {
        groups.push({ matName: '__default__', idx: Array.from(obj.faces) });
      }

      const indices = [];
      const submaterials = [];
      geometry.clearGroups();
      for (const g of groups) {
        const start = indices.length;
        indices.push(...g.idx);
        const count = g.idx.length;
        let mat;
        if (g.matName === '__default__') {
          mat = new THREE.MeshStandardMaterial({ color: 0xaaaaaa });
        } else {
          mat = new THREE.MeshStandardMaterial({ color: 0xff00ff });
        }
        let idx = submaterials.findIndex((m) => m === mat);
        if (idx === -1) { submaterials.push(mat); idx = submaterials.length - 1; }
        geometry.addGroup(start, count, idx);
      }
      geometry.setIndex(indices);
      geometry.computeVertexNormals();
      geometry.computeBoundingBox();
      geometry.computeBoundingSphere();

      const mesh = new THREE.Mesh(geometry, submaterials.length > 1 ? submaterials : submaterials[0]);
      mesh.name = obj.name || 'object';

      const worldPos = new THREE.Vector3(objTransform.x - originOffset.x, objTransform.y - originOffset.y, objTransform.z - originOffset.z);
      if (o.zUpToYUp) worldPos.applyMatrix4(zUpToYUp);
      worldPos.multiplyScalar(o.scale);
      if (o.mirrorX) worldPos.x = -worldPos.x;
      mesh.position.copy(worldPos);

      meshes.push(mesh);
      (byName[mesh.name] ??= []).push(mesh);
      group.add(mesh);
    }

    return { group, meshes, byName };
  }

  readU16(p) { return this.dv.getUint16(p, true); }
  readU32(p) { return this.dv.getUint32(p, true); }
  readF32(p) { return this.dv.getFloat32(p, true); }
  chunkAt(p) {
    const id = this.readU16(p);
    const size = this.readU32(p + 2);
    return { id, size, dataPos: p + 6, nextPos: p + size, dataSize: size - 6 };
  }
  readZString(p) {
    const bytes = [];
    let n = p;
    while (n < this.dv.byteLength) {
      const b = this.dv.getUint8(n++);
      if (b === 0) break;
      bytes.push(b);
    }
    return { text: new TextDecoder().decode(new Uint8Array(bytes)), next: n };
  }

  parse3DS(p, len) {
    if (len < 6) return;
    const c = this.chunkAt(p);
    if (c.id === CHUNK.MAIN) this.parseMain(c.dataPos, c.dataSize);
    this.parse3DS(c.nextPos, len - c.size);
  }
  parseMain(p, len) {
    while (len >= 6) {
      const c = this.chunkAt(p);
      if (c.id === CHUNK.SCENE) this.parseScene(c.dataPos, c.dataSize);
      else if (c.id === KF_CHUNK.KEYFRAMER) this.parseKeyframer(c.dataPos, c.dataSize);
      p = c.nextPos; len -= c.size;
    }
  }
  parseScene(p, len) {
    while (len >= 6) {
      const c = this.chunkAt(p);
      if (c.id === CHUNK.MATERIAL) {
        const mat = { name: '' };
        this.parseMaterial(mat, c.dataPos, c.dataSize);
        if (mat.name) this.materials[mat.name] = mat;
      } else if (c.id === CHUNK.OBJECT) {
        this.parseObject(c);
      }
      p = c.nextPos; len -= c.size;
    }
  }
  parseMaterial(mat, p, len) {
    if (len < 6) return;
    const c = this.chunkAt(p);
    switch (c.id) {
      case CHUNK.MAT_NAME: { const { text } = this.readZString(c.dataPos); mat.name = text; break; }
      case CHUNK.COLOR_24: {
        const s = c.dataPos + 6 <= c.nextPos ? c.dataPos + 6 : c.dataPos;
        mat.color = (this.dv.getUint8(s) << 16) | (this.dv.getUint8(s + 1) << 8) | this.dv.getUint8(s + 2);
        break;
      }
    }
    this.parseMaterial(mat, c.nextPos, len - c.size);
  }
  parseObject(chunk) {
    const { text, next } = this.readZString(chunk.dataPos);
    const obj = { name: text };
    this.objects[text] = obj;
    const consumed = next - chunk.dataPos;
    this.parseObjectChunk(obj, chunk.dataPos + consumed, chunk.dataSize - consumed);
  }
  parseObjectChunk(obj, p, len) {
    if (len < 6) return;
    const c = this.chunkAt(p);
    if (c.id === CHUNK.TRIMESH) this.parseMesh(obj, c.dataPos, c.dataSize);
    this.parseObjectChunk(obj, c.nextPos, len - c.size);
  }
  parseMesh(obj, p, len) {
    if (len < 6) return;
    const c = this.chunkAt(p);
    switch (c.id) {
      case CHUNK.VERTS: this.readVerts(obj, c.dataPos); break;
      case CHUNK.MAPCOORDS: this.readUVs(obj, c.dataPos); break;
      case CHUNK.TRANSFORM: this.readTransform(obj, c.dataPos); break;
      case CHUNK.FACES: this.readFacesAndSubs(obj, c); break;
    }
    this.parseMesh(obj, c.nextPos, len - c.size);
  }
  readVerts(obj, p) {
    const n = this.readU16(p); p += 2;
    const out = new Array(n * 3);
    for (let i = 0, j = 0; i < n; i++) {
      out[j++] = this.readF32(p); p += 4;
      out[j++] = this.readF32(p); p += 4;
      out[j++] = this.readF32(p); p += 4;
    }
    obj.vertices = out;
  }
  readUVs(obj, p) {
    const n = this.readU16(p); p += 2;
    const out = new Array(n * 2);
    for (let i = 0, j = 0; i < n; i++) {
      out[j++] = this.readF32(p); p += 4;
      out[j++] = this.readF32(p); p += 4;
    }
    obj.uvs = out;
  }
  readTransform(obj, p) {
    obj.a = this.readF32(p); p += 4;
    obj.e = this.readF32(p); p += 4;
    obj.i = this.readF32(p); p += 4;
    obj.b = this.readF32(p); p += 4;
    obj.f = this.readF32(p); p += 4;
    obj.j = this.readF32(p); p += 4;
    obj.c = this.readF32(p); p += 4;
    obj.g = this.readF32(p); p += 4;
    obj.k = this.readF32(p); p += 4;
    obj.d = this.readF32(p); p += 4;
    obj.h = this.readF32(p); p += 4;
    obj.l = this.readF32(p); p += 4;
  }
  readFacesAndSubs(obj, chunk) {
    let p = chunk.dataPos;
    const n = this.readU16(p); p += 2;
    const faces = new Array(n * 3);
    for (let i = 0, j = 0; i < n; i++) {
      faces[j++] = this.readU16(p); p += 2;
      faces[j++] = this.readU16(p); p += 2;
      faces[j++] = this.readU16(p); p += 2;
      p += 2; // face flags
    }
    obj.faces = faces;
    const subP = chunk.dataPos + (2 + 8 * n);
    const subLen = chunk.dataSize - (2 + 8 * n);
    this.readFacesSubs(obj, subP, subLen);
  }
  readFacesSubs(obj, p, len) {
    if (len < 6) return;
    const c = this.chunkAt(p);
    if (c.id === CHUNK.FACES_MAT) {
      obj.surfaces ??= {};
      const { text, next } = this.readZString(c.dataPos);
      let q = next;
      const n = this.readU16(q); q += 2;
      const idx = new Array(n);
      for (let i = 0; i < n; i++) { idx[i] = this.readU16(q); q += 2; }
      obj.surfaces[text] = idx;
    }
    this.readFacesSubs(obj, c.nextPos, len - c.size);
  }
  parseKeyframer(p, len) {
    while (len >= 6) {
      const c = this.chunkAt(p);
      const node = { name: '', parentIndex: 65535, childCount: 0 };
      this.parseKFObject(node, c.dataPos, c.dataSize);
      if (node.name) this.animPivots.push(node);
      p = c.nextPos; len -= c.size;
    }
    const childCounts = {};
    this.animPivots.forEach((node) => {
      if (node.parentIndex !== 65535) childCounts[node.parentIndex] = (childCounts[node.parentIndex] ?? 0) + 1;
    });
    this.animPivots.forEach((node, i) => { node.childCount = childCounts[i] ?? 0; });
  }
  parseKFObject(node, p, len) {
    if (len < 6) return;
    const c = this.chunkAt(p);
    switch (c.id) {
      case KF_CHUNK.NODE_HDR: {
        const { text, next } = this.readZString(c.dataPos);
        node.name = text;
        let q = next;
        q += 4;
        node.parentIndex = this.readU16(q);
        break;
      }
      case KF_CHUNK.PIVOT: {
        node.pivot = new THREE.Vector3(this.readF32(c.dataPos), this.readF32(c.dataPos + 4), this.readF32(c.dataPos + 8));
        break;
      }
    }
    this.parseKFObject(node, c.nextPos, len - c.size);
  }
}

// =============================================================================
// Paint texture pipeline — ported from the real client's BaseLoader +
// details/alpha merge helper. Fragment/vertex shader *contents* are fetched
// from external .glsl files in the real client and weren't part of the
// bundle we have access to, so this uses a close equivalent with the same
// uniform names (uColor/uLight/uDetails/uColorScale/uColorOffset/uExposure).
// =============================================================================
const textureLoader = new THREE.TextureLoader();
textureLoader.setCrossOrigin('anonymous');

function setSRGB(tex, flipY = false) {
  tex.colorSpace = THREE.SRGBColorSpace;
  tex.flipY = flipY;
  tex.needsUpdate = true;
  return tex;
}

function loadImage(url) {
  return new Promise((resolve, reject) => {
    const img = new Image();
    img.crossOrigin = 'anonymous';
    img.onload = () => resolve(img);
    img.onerror = () => { logStatus('Could not load: ' + url); reject(new Error(url)); };
    img.src = url;
  });
}

// Matches the real client's details+alpha merge exactly: alpha channel of
// the merged texture = RED channel of the alpha image.
async function mergeDetailsAlpha(detailsImg, alphaImg) {
  const w = detailsImg.naturalWidth || detailsImg.width;
  const h = detailsImg.naturalHeight || detailsImg.height;
  const dCanvas = document.createElement('canvas');
  dCanvas.width = w; dCanvas.height = h;
  const dCtx = dCanvas.getContext('2d', { willReadFrequently: true });
  dCtx.drawImage(detailsImg, 0, 0, w, h);

  const aw = alphaImg.naturalWidth || alphaImg.width;
  const ah = alphaImg.naturalHeight || alphaImg.height;
  const aCanvas = document.createElement('canvas');
  aCanvas.width = aw; aCanvas.height = ah;
  const aCtx = aCanvas.getContext('2d', { willReadFrequently: true });
  aCtx.drawImage(alphaImg, 0, 0, aw, ah);
  const alphaData = aCtx.getImageData(0, 0, aw, ah).data;

  const detailsData = dCtx.getImageData(0, 0, w, h);
  const pixels = detailsData.data;
  const minW = Math.min(w, aw), minH = Math.min(h, ah);
  for (let y = 0; y < minH; y++) {
    for (let x = 0; x < minW; x++) {
      const di = (y * w + x) * 4;
      const ai = (y * aw + x) * 4;
      pixels[di + 3] = alphaData[ai + 0];
    }
  }
  dCtx.putImageData(detailsData, 0, 0);

  return new Promise((resolve) => {
    const merged = new Image();
    merged.onload = () => resolve({ image: merged, rawWidth: w, rawHeight: h });
    merged.src = dCanvas.toDataURL('image/png');
  });
}

// ---- Live/animated paint (image.tara + properties.json) — best-effort,
// not part of the confirmed client source; falls back to static image.jpg.
async function loadLivePaintFrames(imageUrl, propsUrl) {
  const propsRes = await fetch(propsUrl);
  if (!propsRes.ok) return null;
  const props = await propsRes.json();
  const width = props.weight || props.width;
  const height = props.height;
  const numFrames = Math.max(1, props.numFrames || 1);
  const fps = Math.max(1, props.fps || 24);
  if (!width || !height) return null;

  const taraRes = await fetch(imageUrl);
  if (!taraRes.ok) return null;
  const bytes = new Uint8Array(await taraRes.arrayBuffer());
  const frameBytes = width * height * 4;
  const frameCount = Math.min(numFrames, Math.max(1, Math.floor(bytes.length / frameBytes)));
  if (bytes.length < frameBytes) { logStatus('Live paint data smaller than one frame: ' + imageUrl); return null; }

  const canvas = document.createElement('canvas');
  canvas.width = width; canvas.height = height;
  const ctx = canvas.getContext('2d');
  const texture = new THREE.CanvasTexture(canvas);
  texture.colorSpace = THREE.SRGBColorSpace;
  texture.flipY = false;
  texture.wrapS = texture.wrapT = THREE.RepeatWrapping;

  let current = -1;
  function setFrame(i) {
    if (i === current) return;
    current = i;
    const offset = i * frameBytes;
    if (offset + frameBytes > bytes.length) return;
    const slice = new Uint8ClampedArray(bytes.buffer.slice(bytes.byteOffset + offset, bytes.byteOffset + offset + frameBytes));
    ctx.putImageData(new ImageData(slice, width, height), 0, 0);
    texture.needsUpdate = true;
  }
  setFrame(0);

  const frameMs = 1000 / fps;
  let last = performance.now();
  let stopped = false;
  function tick(now) {
    if (stopped) return;
    if (now - last >= frameMs) { last = now; setFrame((current + 1) % frameCount); }
    requestAnimationFrame(tick);
  }
  requestAnimationFrame(tick);

  return { texture, width, height, stop: () => { stopped = true; } };
}

async function resolveColormap(colormapUrl, liveCfg) {
  if (liveCfg && liveCfg.image && liveCfg.properties) {
    try {
      const live = await loadLivePaintFrames(liveCfg.image, liveCfg.properties);
      if (live) return live;
    } catch (e) {
      logStatus('Live paint failed, falling back to image.jpg: ' + (e && e.message));
    }
  }
  const url = colormapUrl + 'image.jpg';
  const [tex, img] = await Promise.all([textureLoader.loadAsync(url), loadImage(url)]);
  setSRGB(tex);
  return { texture: tex, width: img.naturalWidth || img.width, height: img.naturalHeight || img.height };
}

const paintVertexShader = 'varying vec2 vUv; void main() { vUv = uv; gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0); }';
const paintFragmentShader = [
  'uniform sampler2D uColor;',
  'uniform sampler2D uLight;',
  'uniform sampler2D uDetails;',
  'uniform vec2 uColorScale;',
  'uniform vec2 uColorOffset;',
  'uniform float uExposure;',
  'varying vec2 vUv;',
  'void main() {',
  '  vec2 paintUv = vUv * uColorScale + uColorOffset;',
  '  vec3 paint = texture2D(uColor, paintUv).rgb;',
  '  vec3 lightSample = texture2D(uLight, vUv).rgb;',
  '  vec3 base = paint * lightSample * uExposure;',
  '  vec4 details = texture2D(uDetails, vUv);',
  '  vec3 finalColor = base * (1.0 - details.a) + details.rgb;',
  '  gl_FragColor = vec4(finalColor, 1.0);',
  '}',
].join('\\n');

function createPaintMaterial({ texPaint, texLight, texDetails, colorScale }) {
  texPaint.wrapS = texPaint.wrapT = THREE.RepeatWrapping;
  if ('minFilter' in texPaint) texPaint.minFilter = THREE.LinearMipmapLinearFilter;
  texPaint.magFilter = THREE.LinearFilter;
  return new THREE.ShaderMaterial({
    vertexShader: paintVertexShader,
    fragmentShader: paintFragmentShader,
    toneMapped: false,
    uniforms: {
      uColor: { value: texPaint },
      uLight: { value: texLight },
      uDetails: { value: texDetails },
      uColorScale: { value: colorScale },
      uColorOffset: { value: new THREE.Vector2(0, 0) },
      uExposure: { value: 1.2 },
    },
  });
}

function fallbackMaterial() {
  return new THREE.MeshStandardMaterial({ color: 0x888888, roughness: 0.7, metalness: 0.1 });
}

function flipV(geometry) {
  const uv = geometry.getAttribute('uv');
  if (!uv) return;
  for (let i = 0; i < uv.count; i++) uv.setY(i, 1 - uv.getY(i));
  uv.needsUpdate = true;
}

// =============================================================================
// BaseLoader.loadCommon() equivalent — fetches object.3ds + paint/lightmap/
// details/details_alpha from the SAME base-directory convention as the real
// client, then returns { group, meshes, byName, material }.
// =============================================================================
async function loadCommon(baseResourceUrl, colormapUrl, liveCfg) {
  const [modelBuf, paintResult] = await Promise.all([
    fetch(baseResourceUrl + 'object.3ds').then((r) => r.ok ? r.arrayBuffer() : Promise.reject(new Error('object.3ds ' + r.status))),
    (async () => {
      const [colormap, texLightRaw] = await Promise.all([
        resolveColormap(colormapUrl, liveCfg),
        textureLoader.loadAsync(baseResourceUrl + 'lightmap.jpg'),
      ]);
      const [detailsImg, alphaImg] = await Promise.all([
        loadImage(baseResourceUrl + 'details.jpg'),
        loadImage(baseResourceUrl + 'details_alpha.jpg'),
      ]);
      const merged = await mergeDetailsAlpha(detailsImg, alphaImg);
      const texDetails = new THREE.Texture(merged.image);
      texDetails.needsUpdate = true;
      texDetails.colorSpace = THREE.SRGBColorSpace;
      texDetails.flipY = false;
      texDetails.premultiplyAlpha = true;
      const colorScale = new THREE.Vector2(merged.rawWidth / colormap.width, merged.rawHeight / colormap.height);
      return { texPaint: colormap.texture, texLight: setSRGB(texLightRaw, false), texDetails, colorScale };
    })(),
  ]);

  const parser = new TDS3DSParser();
  const { group, meshes, byName } = await parser.parse(modelBuf, { scale: 1, zUpToYUp: true, flipV: false, unityReset: true, mirrorX: false });
  for (const m of meshes) flipV(m.geometry);

  let material;
  try {
    material = createPaintMaterial(paintResult);
  } catch (e) {
    logStatus('Paint material failed, using fallback: ' + (e && e.message));
    material = fallbackMaterial();
  }

  return { group, meshes, byName, material };
}

// =============================================================================
// HullLoader — finds the mesh literally named "hull" plus a dummy mesh whose
// name starts with "mount" (case-insensitive), matching the real HullLoader.
// =============================================================================
class HullLoader {
  hull = null;
  mountPoint = null;
  async load(colormapUrl, baseResourceUrl) {
    const { group, meshes, material } = await loadCommon(baseResourceUrl, colormapUrl, TANK_CONFIG.live);
    for (const child of group.children) {
      if (child.name?.toLowerCase?.() === 'hull') this.hull = child;
      if (child.name?.toLowerCase?.().startsWith?.('mount')) this.mountPoint = child;
    }
    if (!this.hull) this.hull = meshes.find((m) => !m.name.toLowerCase().startsWith('mount')) ?? meshes[0] ?? null;
    if (!this.hull) { logStatus('HullLoader: no usable mesh found'); return; }
    this.hull.material = material;
    scene.add(this.hull);
  }
}

// =============================================================================
// TurretLoader — takes the first mesh in the file (matching the real
// TurretLoader), and aligns via the SAME transform as the game:
//   local = translate(mount.position + (0,0,1)) * rotateY(yaw)
//   world = hull.matrixWorld * local
// =============================================================================
class TurretLoader {
  turret = null;
  async load(colormapUrl, baseResourceUrl) {
    const { group, meshes, material } = await loadCommon(baseResourceUrl, colormapUrl, TANK_CONFIG.live);
    this.turret = meshes[0] ?? null;
    if (!this.turret) { logStatus('TurretLoader: no mesh found'); scene.add(group); return; }
    this.turret.material = material;
    scene.add(this.turret);
  }
  updateTransform(hullMatrixWorld, yaw, mountPoint) {
    if (!this.turret || !mountPoint) return;
    const m = new THREE.Matrix4()
      .makeRotationY(yaw)
      .setPosition(mountPoint.position.clone().add(new THREE.Vector3(0, 0, 1)));
    m.premultiply(hullMatrixWorld);
    const pos = new THREE.Vector3(), quat = new THREE.Quaternion(), scl = new THREE.Vector3();
    m.decompose(pos, quat, scl);
    this.turret.position.copy(pos);
    this.turret.quaternion.copy(quat);
  }
}

// =============================================================================
// Scene setup
// =============================================================================
const scene = new THREE.Scene();
scene.background = null;

// Real client defaults: fov 60, near .1, far 5000, radius 2000, height/radius = .25
const camera = new THREE.PerspectiveCamera(60, container.clientWidth / container.clientHeight, 0.1, 5000);
const renderer = new THREE.WebGLRenderer({ antialias: true, alpha: true });
renderer.setSize(container.clientWidth, container.clientHeight);
renderer.setPixelRatio(Math.min(window.devicePixelRatio, 2));
renderer.outputColorSpace = THREE.SRGBColorSpace;
container.appendChild(renderer.domElement);

scene.add(new THREE.AmbientLight(0xffffff, 0.8));
const keyLight = new THREE.DirectionalLight(0xffffff, 1.2);
keyLight.position.set(5, 10, 7);
scene.add(keyLight);

// Glass mirror floor at ground level. The real client's ReflectionFragmentShader
// content wasn't available to us; this uses the stock Reflector tint instead.
const mirror = new Reflector(new THREE.PlaneGeometry(2000, 2000), {
  color: 0x222222,
  textureWidth: Math.max(1, Math.floor(container.clientWidth * Math.min(window.devicePixelRatio, 2) * 0.5)),
  textureHeight: Math.max(1, Math.floor(container.clientHeight * Math.min(window.devicePixelRatio, 2) * 0.5)),
  clipBias: 0.003,
});
mirror.rotation.x = -Math.PI / 2;
mirror.position.y = 0;
mirror.renderOrder = -1;
scene.add(mirror);

const cameraHeightFactor = 500 / 2000;
let cameraRadius = 2000;
let cameraHeight = cameraRadius * cameraHeightFactor;
let cameraAngle = Math.PI / 4;
let targetBoundsRadius = 50;
const lookAtTarget = new THREE.Vector3(0, 0, 0);

function updateCameraPosition() {
  const x = Math.cos(cameraAngle) * cameraRadius;
  const z = Math.sin(cameraAngle) * cameraRadius;
  camera.position.set(x, cameraHeight, z);
  camera.lookAt(lookAtTarget);
}

function updateCameraDistanceForBounds() {
  const fovRad = THREE.MathUtils.degToRad(camera.fov);
  const horizontalFov = 2 * Math.atan(Math.tan(fovRad / 2) * camera.aspect);
  const r = Math.max(targetBoundsRadius, 1);
  const a = r / Math.sin(fovRad / 2);
  const o = r / Math.sin(horizontalFov / 2);
  const dist = Math.max(a, o) * 0.85; // matches real client's distance multiplier
  cameraRadius = dist;
  cameraHeight = dist * cameraHeightFactor;
  camera.near = Math.max(dist / 100, 0.01);
  camera.far = dist * 20;
  camera.updateProjectionMatrix();
}

function fitCameraToObject(object3D) {
  const box = new THREE.Box3().setFromObject(object3D);
  if (box.isEmpty()) return;
  const center = box.getCenter(new THREE.Vector3());
  const sphere = new THREE.Sphere();
  box.getBoundingSphere(sphere);
  targetBoundsRadius = sphere.radius;
  lookAtTarget.copy(center);
  updateCameraDistanceForBounds();
  updateCameraPosition();
}

// ---- Controls ----
const ROTATE_SPEED = 0.005;
let dragging = false;
let lastX = 0;
let lastInteractionTime = performance.now();
const idleDelay = 3000;
const autoRotateSpeed = 0.3;

renderer.domElement.addEventListener('pointerdown', (e) => {
  dragging = true; lastX = e.clientX; lastInteractionTime = performance.now();
  renderer.domElement.style.cursor = 'grabbing';
});
window.addEventListener('pointermove', (e) => {
  if (!dragging) return;
  const dx = e.clientX - lastX; lastX = e.clientX;
  cameraAngle += dx * ROTATE_SPEED;
  lastInteractionTime = performance.now();
  updateCameraPosition();
});
window.addEventListener('pointerup', () => { dragging = false; renderer.domElement.style.cursor = 'grab'; });
renderer.domElement.style.cursor = 'grab';

renderer.domElement.addEventListener('wheel', (e) => {
  e.preventDefault();
  const factor = e.deltaY > 0 ? 1.08 : 1 / 1.08;
  cameraRadius = THREE.MathUtils.clamp(cameraRadius * factor, targetBoundsRadius * 0.2, targetBoundsRadius * 10);
  cameraHeight = cameraRadius * cameraHeightFactor;
  lastInteractionTime = performance.now();
  updateCameraPosition();
}, { passive: false });

// =============================================================================
// Init — mirrors ProfileScene.loadTankParts() + updateTransform(..., 0, mount)
// =============================================================================
async function init() {
  const cfg = TANK_CONFIG;
  if (!cfg.hull.baseUrl || !cfg.turret.baseUrl || !cfg.colormapUrl) {
    logStatus('Missing equipped hull, turret, or paint base URL — cannot render.');
    return;
  }
  try {
    const hullLoader = new HullLoader();
    const turretLoader = new TurretLoader();

    await hullLoader.load(cfg.colormapUrl, cfg.hull.baseUrl);
    await turretLoader.load(cfg.colormapUrl, cfg.turret.baseUrl);

    if (hullLoader.hull) hullLoader.hull.updateMatrixWorld(true);
    const hullMatrixWorld = hullLoader.hull ? hullLoader.hull.matrixWorld.clone() : new THREE.Matrix4();
    turretLoader.updateTransform(hullMatrixWorld, 0, hullLoader.mountPoint);

    const target = hullLoader.hull ?? turretLoader.turret;
    if (target) {
      const bounds = new THREE.Box3();
      if (hullLoader.hull) bounds.expandByObject(hullLoader.hull);
      if (turretLoader.turret) bounds.expandByObject(turretLoader.turret);
      const helper = new THREE.Object3D();
      scene.add(helper);
      fitCameraToObject({ traverse: (fn) => { if (hullLoader.hull) hullLoader.hull.traverse(fn); if (turretLoader.turret) turretLoader.turret.traverse(fn); } });
      scene.remove(helper);
    }
    if (!hullLoader.mountPoint) {
      logStatus('No "mount*" node found in hull model — turret cannot be aligned for this hull.');
    }
  } catch (err) {
    logStatus('Viewer failed to initialize — see console for details.');
    console.error(err);
  }
}
init();

function animate() {
  requestAnimationFrame(animate);
  if (!dragging && performance.now() - lastInteractionTime > idleDelay) {
    cameraAngle += autoRotateSpeed * (1 / 60);
    updateCameraPosition();
  }
  renderer.render(scene, camera);
}
animate();

window.addEventListener('resize', () => {
  camera.aspect = container.clientWidth / container.clientHeight;
  updateCameraDistanceForBounds();
  camera.updateProjectionMatrix();
  renderer.setSize(container.clientWidth, container.clientHeight);
});
</script>
`;
}

export function getProfilePageHtml(view: ProfileViewModel): string {
  const renderList = (items: ProfileCardItem[], title: string, emptyLabel: string): string => {
    if (!items.length) {
      return `<div class="panel"><h3>${title}</h3><p>${emptyLabel}</p></div>`;
    }

    return `
      <div class="panel"><h3>${title}</h3>
      <div class="list-scroll">${items
        .map((item) => {
          const levelLabel = item.level !== undefined ? `<span class="pill">M${item.level}</span>` : "";
          const countLabel = "count" in item && item.count !== undefined ? `<span class="pill">${item.count}</span>` : "";
          const previewTag = item.previewUrl
            ? item.alphaUrl
              ? `<div class="mini-preview mini-preview-mask" role="img" aria-label="${item.name}" style="background-image:url('${item.previewUrl}'); mask-image:url('${item.alphaUrl}'); -webkit-mask-image:url('${item.alphaUrl}');"></div>`
              : `<img class="mini-preview" src="${item.previewUrl}" alt="${item.name}" onerror="this.style.display='none'" />`
            : `<div class="avatar">${item.category[0].toUpperCase()}</div>`;
          return `<div class="card">${previewTag}<div class="meta"><strong>${item.name}</strong><span>${item.category}</span></div>${levelLabel}${countLabel}</div>`;
        })
        .join("")}</div></div>`;
  };

  const rankIconMarkup = view.rankIconUrl
    ? `<img class="rank-icon-image" src="${view.rankIconUrl}" alt="Rank ${view.rank.id} ${view.rank.name}" onerror="this.style.display='none'" />`
    : `<div class="rank-icon">${view.rank.id}</div>`;

  const viewerConfig = buildViewerConfig(view);
  const viewerScript = getViewerScript(viewerConfig);

  return `<!doctype html>
  <html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>${view.username} | SkidTanks Profile</title>
    <style>
      :root { color-scheme: dark; --bg: #07111f; --panel: rgba(12,24,40,.95); --accent:#41d1ff; --accent2:#ff6c49; --text:#e9f2ff; --muted:#8ca3bf; }
      * { box-sizing: border-box; }
      body { margin:0; font-family: Roboto, Inter, Arial, sans-serif; background: radial-gradient(circle at top, rgba(41,123,242,.18), transparent 22%), radial-gradient(circle at bottom right, rgba(255,108,73,.12), transparent 30%), #07111f; color:var(--text); min-height:100vh; }
      .shell { max-width: 1320px; margin:0 auto; padding: 32px 20px 48px; }
      .hero { display:grid; grid-template-columns: 1.3fr .95fr; gap:24px; margin-bottom:24px; align-items:start; }
      .panel { background: linear-gradient(180deg, rgba(12,24,40,.98), rgba(10,16,28,.96)); border:1px solid rgba(63,146,255,.16); border-radius: 24px; padding: 24px; box-shadow: 0 28px 84px rgba(0,0,0,.28); backdrop-filter: blur(4px); }
      .panel h3 { margin-top:0; margin-bottom:18px; font-size:1rem; letter-spacing:0.14em; text-transform:uppercase; color:var(--muted); }
      .title-row { display:flex; justify-content:space-between; align-items:center; gap:16px; }
      .rank-card { display:flex; align-items:center; gap:18px; margin-bottom:20px; padding:18px; border-radius:24px; background:rgba(11,18,34,.9); border:1px solid rgba(63,146,255,.16); }
      .rank-icon, .rank-icon-image { width:88px; height:88px; border-radius:24px; box-shadow:0 20px 60px rgba(0,0,0,.22); }
      .rank-icon { background:linear-gradient(135deg, #24d1ff, #ff6c49); display:grid; place-items:center; font-size:1.95rem; font-weight:900; color:#fff; }
      .rank-icon-image { object-fit:contain; background:linear-gradient(135deg, #24d1ff, #ff6c49); border:1px solid rgba(255,255,255,.1); }
      .rank-meta { display:flex; flex-direction:column; gap:6px; }
      .rank-meta .rank-name { font-size:1.25rem; font-weight:800; letter-spacing:.02em; }
      .rank-meta .rank-label { color:var(--muted); font-size:1rem; }
      .stats-grid { display:grid; grid-template-columns:repeat(4, minmax(0, 1fr)); gap:14px; margin-top:18px; }
      .metric { padding:18px; border-radius:18px; background:rgba(255,255,255,.04); border:1px solid rgba(255,255,255,.08); }
      .metric .label { font-size:.8rem; color:var(--muted); text-transform:uppercase; letter-spacing:.12em; }
      .metric .value { font-size:1.35rem; font-weight:800; margin-top:8px; }
      .panel-row { display:grid; grid-template-columns:repeat(2, minmax(0, 1fr)); gap:12px; }
      .list-panel { display:flex; flex-direction:column; gap:14px; }
      .list-panel h3 { margin:0 0 0; font-size:1rem; letter-spacing:0.14em; text-transform:uppercase; color:var(--muted); }
      .list-scroll { display:flex; gap:12px; overflow-x:auto; padding-bottom:6px; }
      .list-scroll::-webkit-scrollbar { height:10px; }
      .list-scroll::-webkit-scrollbar-thumb { background:rgba(255,255,255,.16); border-radius:999px; }
      .card { min-width:220px; display:flex; align-items:center; justify-content:space-between; gap:12px; padding:14px; background:rgba(255,255,255,.05); border-radius:18px; border:1px solid rgba(255,255,255,.07); transition:transform .2s ease, border-color .2s ease, background .2s ease; }
      .card:hover { transform: translateY(-2px); background:rgba(255,255,255,.08); border-color:rgba(255,255,255,.12); }
      .meta { display:flex; flex-direction:column; flex:1; }
      .meta strong { font-size:1rem; }
      .meta span { color:var(--muted); font-size:.9rem; margin-top:4px; }
      .avatar { width:44px; height:44px; display:grid; place-items:center; background:linear-gradient(135deg, var(--accent), var(--accent2)); border-radius:16px; font-weight:900; }
      .mini-preview, .mini-preview-mask { width:56px; height:56px; border-radius:16px; border:1px solid rgba(255,255,255,.15); }
      .mini-preview { object-fit:cover; }
      .mini-preview-mask { background-size: cover; background-position: center; mask-size: cover; mask-repeat: no-repeat; -webkit-mask-size: cover; -webkit-mask-repeat: no-repeat; }
      .pill { display:inline-flex; padding:6px 10px; border-radius:999px; background:rgba(255,255,255,.1); font-size:.77rem; margin-left:6px; color:var(--text); }
      .xp-bar { margin-top:20px; }
      .xp-track { width:100%; height:16px; border-radius:999px; background:rgba(255,255,255,.08); overflow:hidden; }
      .xp-fill { height:100%; border-radius:999px; background: linear-gradient(135deg, #40b8ff, #ff6d5c); box-shadow:0 10px 30px rgba(64,184,255,.25); }
      .xp-label { margin-top:10px; color:var(--muted); font-size:.95rem; }
      a { color: var(--accent); }
      .viewer-panel { padding:0; overflow:hidden; }
      .viewer-panel h3 { padding:24px 24px 0; }
      #tank-viewer-canvas { width:100%; height:420px; position:relative; touch-action:none; }
      #tank-viewer-status { font-size:11px; color:#ff8080; padding:0 24px 16px; font-family: monospace; }
      @media (max-width: 1100px){ .hero{grid-template-columns:1fr;} .panel-row{grid-template-columns:1fr;} }
      @media (max-width: 900px){ .stats-grid{grid-template-columns:repeat(2, minmax(0,1fr));} .list-scroll{flex-wrap:wrap;} }
    </style>
  </head>
  <body>
    <div class="shell">
      <div class="hero">
        <section class="panel">
          <div class="rank-card">
            ${rankIconMarkup}
            <div class="rank-meta">
              <div class="rank-name">${view.rank.name}</div>
              <div class="rank-label">Rank ${view.rank.id} · Next: ${view.nextRankScore.toLocaleString()} XP</div>
            </div>
          </div>
          <div class="title-row">
            <div>
              <h1 style="margin:0; font-size:2rem;">${view.username}</h1>
              <div style="color:var(--muted);">Experience ${view.experience.toLocaleString()}</div>
            </div>
            <div style="text-align:right;">
              <div style="font-size:2rem; font-weight:800;">${view.crystals.toLocaleString()}</div>
              <div style="color:var(--muted);">crystals</div>
            </div>
          </div>
          <div class="xp-bar">
            <div class="xp-track"><div class="xp-fill" style="width:${view.rankProgress}%;"></div></div>
            <div class="xp-label">Rank progress: ${view.rankProgress}% — ${view.experience.toLocaleString()} / ${view.nextRankScore.toLocaleString()} XP</div>
          </div>
          <div class="stats-grid">
            <div class="metric"><div class="label">Battles</div><div class="value">${view.battles.toLocaleString()}</div></div>
            <div class="metric"><div class="label">Wins</div><div class="value">${view.wins.toLocaleString()}</div></div>
            <div class="metric"><div class="label">Losses</div><div class="value">${view.losses.toLocaleString()}</div></div>
            <div class="metric"><div class="label">Win Rate</div><div class="value">${view.winRate}</div></div>
          </div>
          <div class="stats-grid" style="margin-top:12px;">
            <div class="metric"><div class="label">Max kills</div><div class="value">${view.maxKillsInBattle.toLocaleString()}</div></div>
            <div class="metric"><div class="label">Max crystals</div><div class="value">${view.maxCrystalsInBattle.toLocaleString()}</div></div>
            <div class="metric"><div class="label">Max damage</div><div class="value">${view.maxDamageInBattle.toLocaleString()}</div></div>
            <div class="metric"><div class="label">Max XP</div><div class="value">${view.maxXpInBattle.toLocaleString()}</div></div>
          </div>
        </section>

        <section class="panel viewer-panel">
          <h3>Live 3D Tank</h3>
          <div id="tank-viewer-canvas"></div>
          <div id="tank-viewer-status"></div>
        </section>
      </div>

      <div class="panel panel-row">
        <section class="list-panel">${renderList(view.ownedHulls, "Hulls", "No hulls owned yet.")}</section>
        <section class="list-panel">${renderList(view.ownedTurrets, "Turrets", "No turrets owned yet.")}</section>
      </div>

      <div class="panel panel-row">
        <section class="list-panel">${renderList(view.ownedPaints, "Paints", "No paints owned yet.")}</section>
        <section class="list-panel">${renderList(view.ownedKits, "Kits", "No kits owned yet.")}</section>
      </div>

      <div class="panel">${renderList(view.ownedSupplies, "Supplies", "No supplies owned yet.")}</div>
    </div>
    ${viewerScript}
  </body>
  </html>`;
}