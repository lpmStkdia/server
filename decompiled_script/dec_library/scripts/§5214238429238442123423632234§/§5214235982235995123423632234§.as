package §5214238429238442123423632234§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   
   internal class §5214235982235995123423632234§ extends Mesh
   {
      
      private static const §if function null§:Number = 10;
      
      private static const §5214237756237769123423632234§:Number = 5;
      
      private var §default finally get§:Vertex;
      
      private var §do var catch§:Vertex;
      
      private var §native var else§:Vertex;
      
      private var §const function override§:Vertex;
      
      private var §521423101392310152123423632234§:Face;
      
      private var §case var var§:Vertex;
      
      private var §521423135752313588123423632234§:Vertex;
      
      private var §5214234087234100123423632234§:Vertex;
      
      private var §5214233051233064123423632234§:Vertex;
      
      private var §throw set static§:Face;
      
      private var §521423135952313608123423632234§:Number;
      
      private var §while function for§:Number;
      
      private var §super use package§:Number;
      
      private var §include const do§:Number;
      
      private var §const package set§:Material;
      
      public function §5214235982235995123423632234§()
      {
         super();
         this.§default finally get§ = addVertex(-1,1,-10);
         this.§do var catch§ = addVertex(-1,0,-10);
         this.§native var else§ = addVertex(1,0,-10);
         this.§const function override§ = addVertex(1,1,-10);
         this.§521423101392310152123423632234§ = addQuadFace(this.§default finally get§,this.§do var catch§,this.§native var else§,this.§const function override§);
         this.§case var var§ = addVertex(-1,1,-10);
         this.§521423135752313588123423632234§ = addVertex(-1,0,-10);
         this.§5214234087234100123423632234§ = addVertex(1,0,-10);
         this.§5214233051233064123423632234§ = addVertex(1,1,-10);
         this.§throw set static§ = addQuadFace(this.§case var var§,this.§521423135752313588123423632234§,this.§5214234087234100123423632234§,this.§5214233051233064123423632234§);
         calculateFacesNormals();
         sorting = 2;
         softAttenuation = 80;
         shadowMapAlphaThreshold = 2;
         depthMapAlphaThreshold = 2;
         useShadowMap = false;
         useLight = false;
      }
      
      public function §function const package§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = this.§while function for§ + this.§include const do§ * param1;
         if(_loc3_ < 5)
         {
            _loc2_ = _loc3_ < 0 ? 0 : _loc3_;
            this.§do var catch§.y = _loc2_;
            this.§native var else§.y = _loc2_;
            this.§default finally get§.v = 1 - (this.§521423135952313608123423632234§ - _loc3_) / this.§super use package§;
            this.§const function override§.v = this.§default finally get§.v;
            this.§do var catch§.v = this.§default finally get§.v + (this.§521423135952313608123423632234§ - _loc2_) / this.§super use package§;
            this.§native var else§.v = this.§do var catch§.v;
            this.§case var var§.y = 5;
            this.§5214233051233064123423632234§.y = 5;
            this.§521423101392310152123423632234§.material = this.§const package set§;
            this.§throw set static§.material = null;
         }
         else if(_loc3_ > this.§521423135952313608123423632234§ - 5)
         {
            _loc2_ = _loc3_ > this.§521423135952313608123423632234§ ? this.§521423135952313608123423632234§ : _loc3_;
            this.§case var var§.y = _loc2_;
            this.§5214233051233064123423632234§.y = _loc2_;
            this.§case var var§.v = -(_loc3_ - _loc2_) / this.§super use package§;
            this.§5214233051233064123423632234§.v = this.§case var var§.v;
            this.§521423135752313588123423632234§.v = this.§case var var§.v + _loc3_ / this.§super use package§;
            this.§5214234087234100123423632234§.v = this.§521423135752313588123423632234§.v;
            this.§do var catch§.y = this.§521423135952313608123423632234§ - 5;
            this.§do var catch§.y = this.§521423135952313608123423632234§ - 5;
            this.§521423101392310152123423632234§.material = null;
            this.§throw set static§.material = this.§const package set§;
         }
         else
         {
            this.§default finally get§.v = 1 - (this.§521423135952313608123423632234§ - _loc3_) / this.§super use package§;
            this.§const function override§.v = this.§default finally get§.v;
            this.§do var catch§.y = _loc3_;
            this.§native var else§.y = _loc3_;
            this.§case var var§.y = _loc3_;
            this.§5214233051233064123423632234§.y = _loc3_;
            this.§do var catch§.v = 1;
            this.§native var else§.v = 1;
            this.§case var var§.v = 0;
            this.§521423135752313588123423632234§.v = _loc3_ / this.§super use package§;
            this.§5214234087234100123423632234§.v = _loc3_ / this.§super use package§;
            this.§5214233051233064123423632234§.v = 0;
            this.§521423101392310152123423632234§.material = this.§const package set§;
            this.§throw set static§.material = this.§const package set§;
         }
      }
      
      public function §52142367423687123423632234§() : void
      {
         this.§521423101392310152123423632234§.material = null;
         this.§throw set static§.material = null;
         this.§const package set§ = null;
      }
      
      public function §5214239350239363123423632234§(param1:Number, param2:Number, param3:Material, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         this.§521423135952313608123423632234§ = param2;
         this.§const package set§ = param3;
         this.§include const do§ = param4;
         var _loc5_:TextureMaterial = param3 as TextureMaterial;
         if(_loc5_ != null && _loc5_.texture != null)
         {
            this.§super use package§ = param1 * _loc5_.texture.height * 2 / _loc5_.texture.width;
            this.§while function for§ = param2 - this.§super use package§;
         }
         else
         {
            this.§super use package§ = param1 / 2;
            this.§while function for§ = 0;
         }
         this.§super use package§ *= 1.25;
         _loc6_ = param1 * 0.5;
         this.§default finally get§.x = -_loc6_;
         this.§default finally get§.y = param2;
         this.§default finally get§.u = 0;
         this.§do var catch§.x = -_loc6_;
         this.§do var catch§.u = 0;
         this.§native var else§.x = _loc6_;
         this.§native var else§.u = 0.5;
         this.§const function override§.x = _loc6_;
         this.§const function override§.y = param2;
         this.§const function override§.u = 0.5;
         this.§case var var§.x = -_loc6_;
         this.§case var var§.u = 0.5;
         this.§case var var§.v = 0;
         this.§521423135752313588123423632234§.x = -_loc6_;
         this.§521423135752313588123423632234§.y = 0;
         this.§521423135752313588123423632234§.u = 0.5;
         this.§5214234087234100123423632234§.x = _loc6_;
         this.§5214234087234100123423632234§.y = 0;
         this.§5214234087234100123423632234§.u = 1;
         this.§5214233051233064123423632234§.x = _loc6_;
         this.§5214233051233064123423632234§.u = 1;
         this.§5214233051233064123423632234§.v = 0;
         boundMinX = -_loc6_;
         boundMinY = 0;
         boundMinZ = 0;
         boundMaxX = _loc6_;
         boundMaxY = param2;
         boundMaxZ = 0;
      }
   }
}

