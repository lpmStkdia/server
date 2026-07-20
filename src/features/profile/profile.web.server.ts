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
  modelUrl?: string;
  lightmapUrl?: string;
  detailsUrl?: string;
  detailsAlphaUrl?: string;
  // NEW: live/animated paint sources ("image.tara" + "properties.json").
  // Live paints do NOT have image.jpg — the client will try these first
  // and fall back to textureUrl only if they 404.
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

  // NEW: live/animated paint sources. Only relevant for paints.
  const liveImageUrl = category === "paint"
    ? resourcePath(`/paint/${resourceId}/texture/v1/image.tara`)
    : undefined;
  const livePropertiesUrl = category === "paint"
    ? resourcePath(`/paint/${resourceId}/texture/v1/properties.json`)
    : undefined;

  const modelUrl = category === "hull"
    ? resourcePath(`/hull/${resourceId}/m${safeMod}/model/v1/object.3ds`)
    : category === "turret"
      ? resourcePath(`/turret/${resourceId}/m${safeMod}/model/v1/object.3ds`)
      : undefined;

  const lightmapUrl = category === "hull"
    ? resourcePath(`/hull/${resourceId}/m${safeMod}/model/v1/lightmap.jpg`)
    : category === "turret"
      ? resourcePath(`/turret/${resourceId}/m${safeMod}/model/v1/lightmap.jpg`)
      : undefined;

  const detailsUrl = category === "hull"
    ? resourcePath(`/hull/${resourceId}/m${safeMod}/model/v1/details.jpg`)
    : category === "turret"
      ? resourcePath(`/turret/${resourceId}/m${safeMod}/model/v1/details.jpg`)
      : undefined;

  const detailsAlphaUrl = category === "hull"
    ? resourcePath(`/hull/${resourceId}/m${safeMod}/model/v1/details_alpha.jpg`)
    : category === "turret"
      ? resourcePath(`/turret/${resourceId}/m${safeMod}/model/v1/details_alpha.jpg`)
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
    modelUrl,
    lightmapUrl,
    detailsUrl,
    detailsAlphaUrl,
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
// 3D viewer config: pulls exactly the URLs the client-side viewer needs out
// of the equipped hull/turret/paint, as plain JSON embedded into the page.
// ---------------------------------------------------------------------------
function buildViewerConfig(view: ProfileViewModel) {
  return {
    hull: {
      id: view.equippedHull.id,
      model: view.equippedHull.modelUrl,
      lightmap: view.equippedHull.lightmapUrl,
      details: view.equippedHull.detailsUrl,
      detailsAlpha: view.equippedHull.detailsAlphaUrl,
    },
    turret: {
      id: view.equippedTurret.id,
      model: view.equippedTurret.modelUrl,
      lightmap: view.equippedTurret.lightmapUrl,
      details: view.equippedTurret.detailsUrl,
      detailsAlpha: view.equippedTurret.detailsAlphaUrl,
    },
    paint: {
      // Static fallback (used when the live tara/properties files 404)
      color: view.equippedPaint.textureUrl,
      // Live/animated source — no image.jpg exists for live paints, only
      // image.tara (raw sequential RGBA8 frames) + properties.json.
      live: {
        image: view.equippedPaint.liveImageUrl,
        properties: view.equippedPaint.livePropertiesUrl,
      },
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

<!-- Inline CSS for the Offset Tool Control Overlay -->
<style>
  .turret-tool-panel {
    position: absolute;
    bottom: 12px;
    right: 12px;
    background: rgba(15, 23, 42, 0.85);
    backdrop-filter: blur(8px);
    border: 1px solid rgba(255, 255, 255, 0.15);
    border-radius: 8px;
    padding: 12px 16px;
    color: #f8fafc;
    font-family: monospace, system-ui, sans-serif;
    font-size: 12px;
    z-index: 100;
    box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.5);
    display: flex;
    flex-direction: column;
    gap: 8px;
    width: 220px;
  }
  .turret-tool-panel header {
    font-weight: bold;
    color: #38bdf8;
    text-transform: uppercase;
    letter-spacing: 0.5px;
    border-bottom: 1px solid rgba(255, 255, 255, 0.1);
    padding-bottom: 4px;
  }
  .turret-tool-row {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 8px;
  }
  .turret-tool-panel input[type="range"] {
    width: 100%;
    cursor: pointer;
    accent-color: #38bdf8;
  }
  .turret-tool-panel input[type="number"] {
    width: 60px;
    background: rgba(0, 0, 0, 0.4);
    border: 1px solid rgba(255, 255, 255, 0.2);
    color: #38bdf8;
    border-radius: 4px;
    padding: 2px 4px;
    text-align: right;
    font-family: inherit;
  }
  .turret-tool-panel button {
    background: #0284c7;
    color: white;
    border: none;
    padding: 6px 10px;
    border-radius: 4px;
    cursor: pointer;
    font-weight: bold;
    font-family: inherit;
    transition: background 0.2s;
  }
  .turret-tool-panel button:hover {
    background: #0369a1;
  }
  .turret-tool-panel button:active {
    transform: scale(0.98);
  }
</style>

<!-- Control UI HTML Container -->
<div id="turret-tool-ui" class="turret-tool-panel" style="display: none;">
  <header>Turret Mount Tool</header>
  <div class="turret-tool-row">
    <span>Hull ID:</span>
    <strong id="tool-hull-id" style="color:#facc15;">-</strong>
  </div>
  <div class="turret-tool-row">
    <span>Turret Z:</span>
    <input type="number" id="tool-z-num" step="0.5" value="0">
  </div>
  <input type="range" id="tool-z-slider" min="-100" max="200" step="0.5" value="0">
  <button id="tool-copy-btn">Copy Config Entry</button>
</div>

<script type="module">
import * as THREE from 'three';
import { TDSLoader } from 'three/addons/loaders/TDSLoader.js';
import { Reflector } from 'three/addons/objects/Reflector.js';

const TANK_CONFIG = ${configJson};

// Flat correction applied to every turret's computed mount height.
// (Requested: "the z is not correct, make it 18.2 less for every turret")
const TURRET_Z_CORRECTION = 18.2;

const container = document.getElementById('tank-viewer-canvas');
const statusEl = document.getElementById('tank-viewer-status');
function logStatus(msg) {
  if (!msg) return;
  const line = document.createElement('div');
  line.textContent = msg;
  statusEl.appendChild(line);
  console.warn(msg);
}

const scene = new THREE.Scene();
scene.background = null;

const camera = new THREE.PerspectiveCamera(45, container.clientWidth / container.clientHeight, 0.1, 5000);
const renderer = new THREE.WebGLRenderer({ antialias: true, alpha: true });
renderer.setSize(container.clientWidth, container.clientHeight);
renderer.setPixelRatio(Math.min(window.devicePixelRatio, 2));
renderer.outputColorSpace = THREE.SRGBColorSpace;
container.appendChild(renderer.domElement);

scene.add(new THREE.AmbientLight(0xffffff, 0.8));
const keyLight = new THREE.DirectionalLight(0xffffff, 1.2);
keyLight.position.set(5, 10, 7);
scene.add(keyLight);

// ---- Glass mirror floor ----
// A tinted reflective plane at the tank's ground level (y = 0, since hull
// geometry is translated so its pivot/base sits at the local origin).
const mirrorGeometry = new THREE.CircleGeometry(1, 64);
const mirror = new Reflector(mirrorGeometry, {
  color: 0x33465c,
  textureWidth: Math.max(1, Math.floor(container.clientWidth * Math.min(window.devicePixelRatio, 2))),
  textureHeight: Math.max(1, Math.floor(container.clientHeight * Math.min(window.devicePixelRatio, 2))),
  clipBias: 0.003,
});
mirror.rotation.x = -Math.PI / 2;
mirror.position.y = 0;
scene.add(mirror);

// ---- Camera positioning & Zoom ----
const cameraHeightFactor = 0.35;
let cameraRadius = 200;
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

  const dist = Math.max(a, o) * 0.6;

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

  // Resize the mirror to comfortably fit under the tank.
  mirror.scale.setScalar(Math.max(targetBoundsRadius * 6, 20));
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
window.addEventListener('pointerup', () => {
  dragging = false;
  renderer.domElement.style.cursor = 'grab';
});
renderer.domElement.style.cursor = 'grab';

renderer.domElement.addEventListener('wheel', (e) => {
  e.preventDefault();
  const factor = e.deltaY > 0 ? 1.08 : 1 / 1.08;
  cameraRadius = THREE.MathUtils.clamp(cameraRadius * factor, targetBoundsRadius * 0.2, targetBoundsRadius * 10);
  cameraHeight = cameraRadius * cameraHeightFactor;
  lastInteractionTime = performance.now();
  updateCameraPosition();
}, { passive: false });

// ---- Textures ----
const textureLoader = new THREE.TextureLoader();
// IMPORTANT: without this, cross-origin lightmap/details fetches can fail
// silently on some resource hosts — this was one cause of turret texture bugs.
textureLoader.setCrossOrigin('anonymous');

function setSRGB(tex) {
  tex.colorSpace = THREE.SRGBColorSpace;
  tex.flipY = false;
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
async function mergeDetailsAlpha(detailsUrl, alphaUrl) {
  const [detailsImg, alphaImg] = await Promise.all([loadImage(detailsUrl), loadImage(alphaUrl)]);
  const w = detailsImg.naturalWidth || detailsImg.width;
  const h = detailsImg.naturalHeight || detailsImg.height;
  const detailsCanvas = document.createElement('canvas');
  detailsCanvas.width = w; detailsCanvas.height = h;
  const dCtx = detailsCanvas.getContext('2d', { willReadFrequently: true });
  dCtx.drawImage(detailsImg, 0, 0, w, h);
  const aw = alphaImg.naturalWidth || alphaImg.width;
  const ah = alphaImg.naturalHeight || alphaImg.height;
  const alphaCanvas = document.createElement('canvas');
  alphaCanvas.width = aw; alphaCanvas.height = ah;
  const aCtx = alphaCanvas.getContext('2d', { willReadFrequently: true });
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
    merged.src = detailsCanvas.toDataURL('image/png');
  });
}

// ---- Live paint (image.tara + properties.json) ----
// Live paints have no image.jpg — only a raw animated frame sequence
// ("image.tara") plus a properties.json describing frame size/count/fps.
// Layout assumed: numFrames consecutive frames of raw RGBA8 pixels,
// each frame exactly (weight * height * 4) bytes, back to back.
async function loadLivePaintTexture(imageUrl, propsUrl) {
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
  const buffer = await taraRes.arrayBuffer();
  const bytes = new Uint8Array(buffer);
  const frameBytes = width * height * 4;
  const availableFrames = Math.max(1, Math.floor(bytes.length / frameBytes));
  const frameCount = Math.min(numFrames, availableFrames);
  if (frameCount < 1 || bytes.length < frameBytes) {
    logStatus('Live paint data too small for declared frame size: ' + imageUrl);
    return null;
  }

  const canvas = document.createElement('canvas');
  canvas.width = width;
  canvas.height = height;
  const ctx = canvas.getContext('2d');
  const texture = new THREE.CanvasTexture(canvas);
  texture.colorSpace = THREE.SRGBColorSpace;
  texture.flipY = false;
  texture.wrapS = texture.wrapT = THREE.RepeatWrapping;

  let currentFrame = -1;
  function setFrame(frameIndex) {
    if (frameIndex === currentFrame) return;
    currentFrame = frameIndex;
    const offset = frameIndex * frameBytes;
    if (offset + frameBytes > bytes.length) return;
    const frameSlice = new Uint8ClampedArray(bytes.buffer.slice(bytes.byteOffset + offset, bytes.byteOffset + offset + frameBytes));
    const imageData = new ImageData(frameSlice, width, height);
    ctx.putImageData(imageData, 0, 0);
    texture.needsUpdate = true;
  }
  setFrame(0);

  const frameDuration = 1000 / fps;
  let lastTime = performance.now();
  let stopped = false;
  function tick(now) {
    if (stopped) return;
    if (now - lastTime >= frameDuration) {
      lastTime = now;
      setFrame((currentFrame + 1) % frameCount);
    }
    requestAnimationFrame(tick);
  }
  requestAnimationFrame(tick);

  return { texture, width, height, stop: () => { stopped = true; } };
}

async function resolvePaintTextureInfo(paintCfg) {
  if (paintCfg.live && paintCfg.live.image && paintCfg.live.properties) {
    try {
      const live = await loadLivePaintTexture(paintCfg.live.image, paintCfg.live.properties);
      if (live) return live;
    } catch (e) {
      logStatus('Live paint load failed, falling back to static color: ' + (e && e.message));
    }
  }
  if (!paintCfg.color) throw new Error('No paint texture source available');
  const img = await loadImage(paintCfg.color);
  const tex = setSRGB(await textureLoader.loadAsync(paintCfg.color));
  return { texture: tex, width: img.naturalWidth || img.width, height: img.naturalHeight || img.height };
}

const vertexShader = 'varying vec2 vUv; void main() { vUv = uv; gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0); }';
const fragmentShader = [
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
    vertexShader, fragmentShader, toneMapped: false,
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

async function loadPaintTextures(paintCfg, lightmapUrl, detailsUrl, alphaUrl) {
  const [paintInfo, texLightRaw] = await Promise.all([
    resolvePaintTextureInfo(paintCfg),
    textureLoader.loadAsync(lightmapUrl),
  ]);
  const texPaint = paintInfo.texture;
  const texLight = setSRGB(texLightRaw);
  const { image: mergedImg, rawWidth, rawHeight } = await mergeDetailsAlpha(detailsUrl, alphaUrl);
  const texDetails = new THREE.Texture(mergedImg);
  texDetails.needsUpdate = true;
  texDetails.colorSpace = THREE.SRGBColorSpace;
  texDetails.flipY = false;
  texDetails.premultiplyAlpha = true;
  const colorScale = new THREE.Vector2(rawWidth / paintInfo.width, rawHeight / paintInfo.height);
  return { texPaint, texLight, texDetails, colorScale };
}

function flipV(geometry) {
  const uv = geometry.getAttribute('uv');
  if (!uv) return;
  for (let i = 0; i < uv.count; i++) uv.setY(i, 1 - uv.getY(i));
  uv.needsUpdate = true;
}

const loader = new TDSLoader();

function parse3dsPivot(arrayBuffer) {
  const dv = new DataView(arrayBuffer);
  let pivot = null;
  let firstObject = true;

  function walk(start, end) {
    let p = start;
    while (p + 6 <= end && !pivot) {
      const id = dv.getUint16(p, true);
      const len = dv.getUint32(p + 2, true);
      if (len < 6 || p + len > end) break;
      const body = p + 6;

      if (id === 0x4d4d || id === 0x3d3d || id === 0x4100) {
        walk(body, p + len);
      } else if (id === 0x4000) {
        if (!firstObject) return;
        firstObject = false;
        let q = body;
        while (q < p + len && dv.getUint8(q) !== 0) q++;
        walk(q + 1, p + len);
      } else if (id === 0x4160) {
        pivot = [
          dv.getFloat32(body + 36, true),
          dv.getFloat32(body + 40, true),
          dv.getFloat32(body + 44, true),
        ];
      }
      p += len;
    }
  }

  walk(0, dv.byteLength);
  return pivot;
}

async function load3ds(url) {
  const response = await fetch(url);
  if (!response.ok) {
    throw new Error('Failed to fetch ' + url + ': ' + response.status + ' ' + response.statusText);
  }

  const arrayBuffer = await response.arrayBuffer();
  const pivot = parse3dsPivot(arrayBuffer);
  let object;
  try {
    object = loader.parse(arrayBuffer, url);
  } catch (err) {
    logStatus('Failed to load ' + url);
    throw err;
  }

  return { object, pivot };
}

function applyMaterialToMeshes(object, material) {
  object.traverse((child) => {
    if (child.isMesh) { child.material = material; flipV(child.geometry); }
  });
}

// zeroXY: when true, discard the model's own X/Y pivot offsets and only use
// its Z (ground) offset. Requested for hulls: "x,y is 0, not from the 3ds
// model" — this keeps every hull perfectly centered regardless of how its
// pivot was authored, while still grounding it correctly on the mirror.
function prepareObjectForViewer(object, pivot, zeroXY) {
  object.position.set(0, 0, 0);
  object.rotation.set(0, 0, 0);
  object.scale.set(1, 1, 1);
  object.updateMatrixWorld(true);

  if (!pivot) {
    const box = new THREE.Box3().setFromObject(object);
    if (!box.isEmpty()) {
      pivot = [
        (box.min.x + box.max.x) / 2,
        (box.min.y + box.max.y) / 2,
        box.min.z,
      ];
    }
  }

  if (pivot) {
    const px = zeroXY ? 0 : pivot[0];
    const py = zeroXY ? 0 : pivot[1];
    object.traverse((child) => {
      if (child.isMesh && child.geometry) {
        child.geometry.translate(-px, -py, -pivot[2]);
      }
    });
  }

  object.rotation.x = -Math.PI / 2;
  object.updateMatrixWorld(true);

  return new THREE.Box3().setFromObject(object);
}

const tankGroup = new THREE.Group();
scene.add(tankGroup);
const turretPivot = new THREE.Group();
tankGroup.add(turretPivot);

// ---- TOOL UI LOGIC ----
function setupTurretTool(hullId, initialY) {
  const uiEl = document.getElementById('turret-tool-ui');
  const hullLabel = document.getElementById('tool-hull-id');
  const slider = document.getElementById('tool-z-slider');
  const numInput = document.getElementById('tool-z-num');
  const copyBtn = document.getElementById('tool-copy-btn');

  hullLabel.textContent = hullId || 'unknown';

  const minVal = Math.floor(initialY - 100);
  const maxVal = Math.ceil(initialY + 100);
  slider.min = minVal;
  slider.max = maxVal;

  function updateTurretHeight(val) {
    const yVal = parseFloat(val);
    turretPivot.position.y = yVal;
    slider.value = yVal;
    numInput.value = yVal.toFixed(1);
  }

  updateTurretHeight(initialY);

  slider.addEventListener('input', (e) => updateTurretHeight(e.target.value));
  numInput.addEventListener('change', (e) => updateTurretHeight(e.target.value));

  copyBtn.addEventListener('click', () => {
    const textToCopy = \`"\${hullId}": \${turretPivot.position.y.toFixed(1)},\`;
    navigator.clipboard.writeText(textToCopy).then(() => {
      const originalText = copyBtn.textContent;
      copyBtn.textContent = 'Copied!';
      copyBtn.style.background = '#16a34a';
      setTimeout(() => {
        copyBtn.textContent = originalText;
        copyBtn.style.background = '#0284c7';
      }, 1500);
    });
  });

  uiEl.style.display = 'flex';
}

function fallbackMaterial() {
  return new THREE.MeshStandardMaterial({ color: 0x888888, roughness: 0.7, metalness: 0.1 });
}

async function init() {
  const cfg = TANK_CONFIG;
  if (!cfg.hull.model || !cfg.turret.model) {
    logStatus('Missing equipped hull or turret model URL — cannot render.');
    return;
  }
  try {
    // Load hull and turret paint materials independently — a bug/missing
    // asset on one no longer prevents the other from rendering.
    const [hullTexResult, turretTexResult] = await Promise.allSettled([
      loadPaintTextures(cfg.paint, cfg.hull.lightmap, cfg.hull.details, cfg.hull.detailsAlpha),
      loadPaintTextures(cfg.paint, cfg.turret.lightmap, cfg.turret.details, cfg.turret.detailsAlpha),
    ]);

    let hullMaterial;
    if (hullTexResult.status === 'fulfilled') {
      hullMaterial = createPaintMaterial(hullTexResult.value);
    } else {
      logStatus('Hull paint failed to load, using fallback material: ' + hullTexResult.reason);
      hullMaterial = fallbackMaterial();
    }

    let turretMaterial;
    if (turretTexResult.status === 'fulfilled') {
      turretMaterial = createPaintMaterial(turretTexResult.value);
    } else {
      logStatus('Turret paint failed to load, using fallback material: ' + turretTexResult.reason);
      turretMaterial = fallbackMaterial();
    }

    // 1. Hull — X/Y pivot forced to 0, only Z (ground) offset kept.
    const { object: hullObject, pivot: hullPivot } = await load3ds(cfg.hull.model);
    applyMaterialToMeshes(hullObject, hullMaterial);
    const hullBox = prepareObjectForViewer(hullObject, hullPivot, true);
    tankGroup.add(hullObject);

    // 2. Turret — keeps its own model pivot (needed for correct mount offset).
    const { object: turretObject, pivot: turretModelPivot } = await load3ds(cfg.turret.model);
    applyMaterialToMeshes(turretObject, turretMaterial);
    const turretBox = prepareObjectForViewer(turretObject, turretModelPivot, false);
    turretPivot.add(turretObject);

    // 3. Mount height from actual model bounds, minus the flat correction.
    const initialY = (hullBox.max.y - turretBox.min.y) - TURRET_Z_CORRECTION;
    turretPivot.position.set(0, initialY, 0);

    // 4. Enable Tool Overlay UI
    const hullId = cfg.hull.id || 'default';
    setupTurretTool(hullId, initialY);

    tankGroup.updateMatrixWorld(true);
    fitCameraToObject(tankGroup);
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
      .badge { display:inline-flex; align-items:center; gap:8px; padding:8px 14px; border-radius:999px; background:linear-gradient(135deg, var(--accent), var(--accent2)); color:white; font-weight:700; }
      .stats-grid { display:grid; grid-template-columns:repeat(4, minmax(0, 1fr)); gap:14px; margin-top:18px; }
      .metric { padding:18px; border-radius:18px; background:rgba(255,255,255,.04); border:1px solid rgba(255,255,255,.08); }
      .metric .label { font-size:.8rem; color:var(--muted); text-transform:uppercase; letter-spacing:.12em; }
      .metric .value { font-size:1.35rem; font-weight:800; margin-top:8px; }
      .equip-grid { display:grid; grid-template-columns:repeat(3, minmax(0,1fr)); gap:12px; margin-top:16px; }
      .equip-card { padding:16px; border-radius:18px; background:rgba(255,255,255,.05); min-height:132px; display:flex; flex-direction:column; justify-content:space-between; }
      .equip-card .name { font-weight:700; margin-top:8px; }
      .equip-card .sub { color:var(--muted); font-size:.9rem; }
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
      .scroll-note { color: var(--muted); font-size:.9rem; margin-top:8px; }
      .xp-bar { margin-top:20px; }
      .xp-track { width:100%; height:16px; border-radius:999px; background:rgba(255,255,255,.08); overflow:hidden; }
      .xp-fill { height:100%; border-radius:999px; background: linear-gradient(135deg, #40b8ff, #ff6d5c); box-shadow:0 10px 30px rgba(64,184,255,.25); }
      .xp-label { margin-top:10px; color:var(--muted); font-size:.95rem; }
      .equip-grid { display:grid; grid-template-columns:repeat(3, minmax(0,1fr)); gap:14px; margin-top:22px; }
      .equip-card { padding:18px; border-radius:22px; background:rgba(255,255,255,.05); min-height:158px; display:flex; flex-direction:column; justify-content:flex-start; gap:12px; border:1px solid rgba(255,255,255,.08); }
      .equip-card .preview { width:100%; height:128px; object-fit:cover; border-radius:18px; background:rgba(255,255,255,.04); }
      .equip-card .label { color:var(--muted); font-size:.82rem; text-transform:uppercase; letter-spacing:.12em; }
      .equip-card .name { font-weight:800; font-size:1rem; }
      .equip-card .sub { color:var(--muted); font-size:.9rem; }
      a { color: var(--accent); }
      .viewer-panel { padding:0; overflow:hidden; }
      .viewer-panel h3 { padding:24px 24px 0; }
      #tank-viewer-canvas { width:100%; height:420px; position:relative; touch-action:none; }
      #tank-viewer-status { font-size:11px; color:#ff8080; padding:0 24px 16px; font-family: monospace; }
      @media (max-width: 1100px){ .hero{grid-template-columns:1fr;} .panel-row{grid-template-columns:1fr;} }
      @media (max-width: 900px){ .stats-grid{grid-template-columns:repeat(2, minmax(0,1fr));} .equip-grid{grid-template-columns:1fr;} .list-scroll{flex-wrap:wrap;} }
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