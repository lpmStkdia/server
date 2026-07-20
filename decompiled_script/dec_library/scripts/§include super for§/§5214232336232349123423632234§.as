package §include super for§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   
   public class §5214232336232349123423632234§ extends Mesh
   {
      
      public var §521423109932311006123423632234§:Number;
      
      private var §default finally get§:Vertex;
      
      private var §do var catch§:Vertex;
      
      private var §native var else§:Vertex;
      
      private var §const function override§:Vertex;
      
      private var §case var var§:Vertex;
      
      private var §521423135752313588123423632234§:Vertex;
      
      private var §5214234087234100123423632234§:Vertex;
      
      private var §5214233051233064123423632234§:Vertex;
      
      private var §521423151432315156123423632234§:Vertex;
      
      private var §521423113822311395123423632234§:Vertex;
      
      private var §521423151602315173123423632234§:Vertex;
      
      private var §521423173342317347123423632234§:Vertex;
      
      private var §set super function§:Number;
      
      private var §5214237246237259123423632234§:Number = 0;
      
      public function §5214232336232349123423632234§(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.§set super function§ = param3;
         this.§521423109932311006123423632234§ = param4;
         useShadowMap = false;
         useLight = false;
         shadowMapAlphaThreshold = 2;
         depthMapAlphaThreshold = 2;
         var _loc8_:Number = param1 / 2;
         var _loc7_:Vector.<Number> = new <Number>[-_loc8_,0,0,_loc8_,0,0,_loc8_,param2,0,-_loc8_,param2,0,-_loc8_,param2,0,_loc8_,param2,0,_loc8_,param2 + 1,0,-_loc8_,param2 + 1,0,-_loc8_,param2 + 1,0,_loc8_,param2 + 1,0,_loc8_,2 * param2 + 1,0,-_loc8_,2 * param2 + 1,0];
         var _loc6_:Vector.<Number> = new <Number>[0,1,1,1,1,0,0,0,0,1,1,1,1,0,0,0,0,0,1,0,1,1,0,1];
         var _loc5_:Vector.<int> = new <int>[4,0,1,2,3,4,4,5,6,7,4,8,9,10,11];
         addVerticesAndFaces(_loc7_,_loc6_,_loc5_,true);
         sorting = 2;
         this.§521423185292318542123423632234§();
         calculateFacesNormals();
         this.§5214231966231979123423632234§();
         boundMinX = -_loc8_;
         boundMaxX = _loc8_;
         boundMinY = 0;
         boundMaxY = param2;
         boundMinZ = 0;
         boundMaxZ = 0;
      }
      
      public function §5214235040235053123423632234§(param1:Number) : void
      {
         this.§default finally get§.u = 0.5 * (1 - param1);
         this.§const function override§.u = this.§default finally get§.u;
         this.§case var var§.u = this.§default finally get§.u;
         this.§5214233051233064123423632234§.u = this.§default finally get§.u;
         this.§521423151432315156123423632234§.u = this.§default finally get§.u;
         this.§521423173342317347123423632234§.u = this.§default finally get§.u;
         this.§do var catch§.u = 0.5 * (1 + param1);
         this.§native var else§.u = this.§do var catch§.u;
         this.§521423135752313588123423632234§.u = this.§do var catch§.u;
         this.§5214234087234100123423632234§.u = this.§do var catch§.u;
         this.§521423113822311395123423632234§.u = this.§do var catch§.u;
         this.§521423151602315173123423632234§.u = this.§do var catch§.u;
      }
      
      public function §false while get§(param1:Number) : void
      {
         var _loc2_:Number = Number(this.§native var else§.y);
         this.§native var else§.y = param1;
         this.§const function override§.y = param1;
         this.§case var var§.y = param1;
         this.§521423135752313588123423632234§.y = param1;
         this.§break use in§(this.§521423151602315173123423632234§.y + param1 - _loc2_);
      }
      
      public function §52142367423687123423632234§() : void
      {
         setMaterialToAllFaces(null);
      }
      
      public function resize(param1:Number, param2:Number) : void
      {
         this.§5214235694235707123423632234§(param1);
         this.§break use in§(param2);
      }
      
      public function §5214235694235707123423632234§(param1:Number) : void
      {
         var _loc2_:Number = param1 / 2;
         boundMinX = -_loc2_;
         boundMaxX = _loc2_;
         this.§default finally get§.x = -_loc2_;
         this.§const function override§.x = -_loc2_;
         this.§case var var§.x = -_loc2_;
         this.§5214233051233064123423632234§.x = -_loc2_;
         this.§521423151432315156123423632234§.x = -_loc2_;
         this.§521423173342317347123423632234§.x = -_loc2_;
         this.§do var catch§.x = _loc2_;
         this.§native var else§.x = _loc2_;
         this.§521423135752313588123423632234§.x = _loc2_;
         this.§5214234087234100123423632234§.x = _loc2_;
         this.§521423113822311395123423632234§.x = _loc2_;
         this.§521423151602315173123423632234§.x = _loc2_;
      }
      
      public function §5214237961237974123423632234§(param1:Number) : void
      {
         this.§set super function§ = param1;
         this.§5214231966231979123423632234§();
      }
      
      public function §break use in§(param1:Number) : void
      {
         if(param1 < 1 + 2 * this.§native var else§.y)
         {
            visible = false;
         }
         else
         {
            visible = true;
            boundMaxY = param1;
            this.§5214234087234100123423632234§.y = param1 - this.§native var else§.y;
            this.§5214233051233064123423632234§.y = this.§5214234087234100123423632234§.y;
            this.§521423151432315156123423632234§.y = this.§5214234087234100123423632234§.y;
            this.§521423113822311395123423632234§.y = this.§5214234087234100123423632234§.y;
            this.§521423151602315173123423632234§.y = param1;
            this.§521423173342317347123423632234§.y = param1;
            this.§5214231966231979123423632234§();
         }
      }
      
      public function §try finally override§(param1:TextureMaterial, param2:TextureMaterial) : void
      {
         var _loc3_:Face = faceList;
         _loc3_.material = param1;
         _loc3_.next.material = param2;
         _loc3_.next.next.material = param1;
      }
      
      public function §function const package§(param1:Number) : void
      {
         this.§5214237246237259123423632234§ += this.§521423109932311006123423632234§ * param1;
         if(this.§5214237246237259123423632234§ < 0)
         {
            this.§5214237246237259123423632234§ += 1;
         }
         else if(this.§5214237246237259123423632234§ > 1)
         {
            this.§5214237246237259123423632234§ -= 1;
         }
         this.§5214231966231979123423632234§();
      }
      
      private function §521423185292318542123423632234§() : void
      {
         var _loc1_:Vector.<Vertex> = this.vertices;
         this.§default finally get§ = _loc1_[0];
         this.§do var catch§ = _loc1_[1];
         this.§native var else§ = _loc1_[2];
         this.§const function override§ = _loc1_[3];
         this.§case var var§ = _loc1_[4];
         this.§521423135752313588123423632234§ = _loc1_[5];
         this.§5214234087234100123423632234§ = _loc1_[6];
         this.§5214233051233064123423632234§ = _loc1_[7];
         this.§521423151432315156123423632234§ = _loc1_[8];
         this.§521423113822311395123423632234§ = _loc1_[9];
         this.§521423151602315173123423632234§ = _loc1_[10];
         this.§521423173342317347123423632234§ = _loc1_[11];
      }
      
      private function §5214231966231979123423632234§() : void
      {
         this.§case var var§.v = this.§5214237246237259123423632234§;
         this.§521423135752313588123423632234§.v = this.§5214237246237259123423632234§;
         var _loc1_:Number = (this.§5214234087234100123423632234§.y - this.§521423135752313588123423632234§.y) / this.§set super function§ + this.§5214237246237259123423632234§;
         this.§5214234087234100123423632234§.v = _loc1_;
         this.§5214233051233064123423632234§.v = _loc1_;
      }
   }
}

