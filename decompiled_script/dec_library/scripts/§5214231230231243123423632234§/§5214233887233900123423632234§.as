package §5214231230231243123423632234§
{
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   
   public class §5214233887233900123423632234§ extends Mesh
   {
      
      private static const §with class§:Number = 15000;
      
      private var §default finally get§:Vertex;
      
      private var §do var catch§:Vertex;
      
      private var §native var else§:Vertex;
      
      private var §const function override§:Vertex;
      
      private var §super use package§:Number;
      
      private var §do include§:Number = 0;
      
      public function §5214233887233900123423632234§()
      {
         super();
         this.§default finally get§ = addVertex(-1,1,-5);
         this.§do var catch§ = addVertex(-1,0,-5);
         this.§native var else§ = addVertex(1,0,-5);
         this.§const function override§ = addVertex(1,1,-5);
         addQuadFace(this.§default finally get§,this.§do var catch§,this.§native var else§,this.§const function override§);
         calculateFacesNormals();
         blendMode = "add";
         useLight = false;
         shadowMapAlphaThreshold = 2;
         depthMapAlphaThreshold = 2;
         useShadowMap = false;
      }
      
      public function §function const package§(param1:int, param2:Number = 512) : void
      {
         this.§do include§ += 15000 * param1 / 1000;
         this.§default finally get§.y = param2;
         this.§const function override§.y = param2;
         this.§do var catch§.v = 1 + this.§do include§ / this.§super use package§;
         this.§native var else§.v = this.§do var catch§.v;
         this.§default finally get§.v = this.§do var catch§.v - param2 / this.§super use package§;
         this.§const function override§.v = this.§default finally get§.v;
      }
      
      public function §5214239350239363123423632234§(param1:TextureMaterial) : void
      {
         param1.repeat = true;
         var _loc2_:Number = 15;
         this.§default finally get§.x = -_loc2_;
         this.§default finally get§.u = 0;
         this.§do var catch§.x = -_loc2_;
         this.§do var catch§.u = 0;
         this.§native var else§.x = _loc2_;
         this.§native var else§.u = 1;
         this.§const function override§.x = _loc2_;
         this.§const function override§.u = 1;
         this.§super use package§ = 120 * param1.texture.height / param1.texture.width;
         setMaterialToAllFaces(param1);
         this.§do include§ = 0;
      }
   }
}

