package §5214238429238442123423632234§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   
   internal class §override var switch§ extends Mesh
   {
      
      private var §default finally get§:Vertex;
      
      private var §do var catch§:Vertex;
      
      private var §native var else§:Vertex;
      
      private var §const function override§:Vertex;
      
      private var §include const catch§:Face;
      
      private var §case while var§:Number;
      
      private var §native catch override§:Number;
      
      public function §override var switch§()
      {
         super();
         this.§default finally get§ = addVertex(-1,1,0);
         this.§do var catch§ = addVertex(-1,0,0);
         this.§native var else§ = addVertex(1,0,0);
         this.§const function override§ = addVertex(1,1,0);
         this.§include const catch§ = addQuadFace(this.§default finally get§,this.§do var catch§,this.§native var else§,this.§const function override§);
         calculateFacesNormals();
         sorting = 2;
         softAttenuation = 80;
         shadowMapAlphaThreshold = 2;
         depthMapAlphaThreshold = 2;
         useShadowMap = false;
         useLight = false;
      }
      
      public function §52142367423687123423632234§() : void
      {
         this.§include const catch§.material = null;
      }
      
      public function §5214239350239363123423632234§(param1:Number, param2:Number, param3:Material, param4:Number) : void
      {
         var _loc5_:Number = param1 * 0.5;
         this.§default finally get§.x = -_loc5_;
         this.§default finally get§.y = param2;
         this.§default finally get§.u = 0;
         this.§do var catch§.x = -_loc5_;
         this.§do var catch§.y = 0;
         this.§do var catch§.u = 0;
         this.§native var else§.x = _loc5_;
         this.§native var else§.y = 0;
         this.§native var else§.u = 1;
         this.§const function override§.x = _loc5_;
         this.§const function override§.y = param2;
         this.§const function override§.u = 1;
         boundMinX = -_loc5_;
         boundMinY = 0;
         boundMinZ = 0;
         boundMaxX = _loc5_;
         boundMaxY = param2;
         boundMaxZ = 0;
         this.§include const catch§.material = param3;
         var _loc6_:TextureMaterial = param3 as TextureMaterial;
         if(_loc6_ != null && _loc6_.texture != null)
         {
            this.§case while var§ = param2 / (param1 * _loc6_.texture.height / _loc6_.texture.width);
            this.§native catch override§ = param4 / param1;
         }
         else
         {
            this.§case while var§ = 1;
            this.§native catch override§ = 0;
         }
      }
      
      public function §function const package§(param1:Number) : void
      {
         var _loc2_:Number = this.§native catch override§ * param1;
         this.§default finally get§.v = _loc2_;
         this.§do var catch§.v = this.§case while var§ + _loc2_;
         this.§native var else§.v = this.§case while var§ + _loc2_;
         this.§const function override§.v = _loc2_;
      }
   }
}

