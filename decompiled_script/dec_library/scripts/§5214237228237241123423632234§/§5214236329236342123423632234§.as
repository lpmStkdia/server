package §5214237228237241123423632234§
{
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   
   internal class §5214236329236342123423632234§ extends Mesh
   {
      
      private var §continue const class§:Vector.<Vertex>;
      
      private var §extends use while§:int = 0;
      
      private var §5214239064239077123423632234§:int = 1;
      
      private var width:Number;
      
      private var §super use package§:Number = 1;
      
      private var §do include§:Number = 0;
      
      private var §extends super if§:Number = 0;
      
      private var §5214231789231802123423632234§:Number = 0;
      
      public function §5214236329236342123423632234§()
      {
         var _loc5_:int = 0;
         var _loc2_:Vertex = null;
         var _loc3_:Vertex = null;
         §continue const class§ = new Vector.<Vertex>(42);
         super();
         var _loc1_:Vertex = addVertex(-1,0,0);
         var _loc4_:Vertex = addVertex(1,0,0);
         this.§continue const class§[this.§extends use while§] = _loc1_;
         ++this.§extends use while§;
         this.§continue const class§[this.§extends use while§] = _loc4_;
         ++this.§extends use while§;
         while(_loc5_ < 20)
         {
            _loc2_ = addVertex(-1,-_loc5_ - 1,0);
            _loc3_ = addVertex(1,-_loc5_ - 1,0);
            this.§continue const class§[this.§extends use while§] = _loc2_;
            ++this.§extends use while§;
            this.§continue const class§[this.§extends use while§] = _loc3_;
            ++this.§extends use while§;
            addQuadFace(_loc1_,_loc2_,_loc3_,_loc4_);
            _loc1_ = _loc2_;
            _loc4_ = _loc3_;
            _loc5_++;
         }
         calculateFacesNormals();
         sorting = 2;
         shadowMapAlphaThreshold = 2;
         depthMapAlphaThreshold = 2;
         useShadowMap = false;
         useLight = false;
      }
      
      public function §extends const class§(param1:Material, param2:int) : void
      {
         this.§5214239064239077123423632234§ = param2;
         setMaterialToAllFaces(param1);
         var _loc3_:TextureMaterial = param1 as TextureMaterial;
         if(_loc3_ != null && _loc3_.texture != null)
         {
            this.§super use package§ = this.width * _loc3_.texture.height / _loc3_.texture.width;
         }
         else
         {
            this.§super use package§ = this.width;
         }
         this.§do include§ = 0;
         this.§extends super if§ = 0;
         this.§5214231789231802123423632234§ = 0;
      }
      
      public function §52142367423687123423632234§() : void
      {
         setMaterialToAllFaces(null);
      }
      
      public function §5214239350239363123423632234§(param1:Number, param2:Number) : void
      {
         var _loc6_:int = 0;
         var _loc3_:Vertex = null;
         var _loc4_:Vertex = null;
         this.width = param1;
         var _loc5_:Number = param1 * 0.5;
         while(_loc6_ < this.§extends use while§)
         {
            _loc3_ = this.§continue const class§[_loc6_];
            _loc6_++;
            _loc4_ = this.§continue const class§[_loc6_];
            _loc3_.x = -_loc5_;
            _loc3_.u = 0;
            _loc4_.x = _loc5_;
            _loc4_.u = 1;
            _loc6_++;
         }
         boundMinX = -_loc5_;
         boundMaxX = _loc5_;
         boundMinY = 0;
         boundMinZ = 0;
         boundMaxZ = 0;
      }
      
      public function §function const package§(param1:int, param2:Number) : void
      {
         var _loc8_:int = 0;
         var _loc3_:Vertex = null;
         var _loc4_:Vertex = null;
         var _loc14_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc12_:Number = 20 / this.width;
         var _loc15_:Number = this.§5214239064239077123423632234§ * 450;
         var _loc5_:Number = this.§5214239064239077123423632234§ * 400;
         var _loc11_:Number = this.§5214239064239077123423632234§ * 800 / this.§super use package§;
         this.§extends super if§ += _loc15_ * param1 / 1000;
         this.§5214231789231802123423632234§ += _loc5_ * param1 / 1000;
         this.§do include§ += _loc11_ * param1 / 1000;
         var _loc13_:Number = param2 / 20;
         var _loc7_:Number = param2 / 2;
         var _loc6_:Number = 1;
         while(_loc8_ < this.§extends use while§)
         {
            _loc3_ = this.§continue const class§[_loc8_];
            _loc8_++;
            _loc4_ = this.§continue const class§[_loc8_];
            _loc3_.y = param2 - (_loc8_ >> 1) * _loc13_;
            _loc4_.y = _loc3_.y;
            _loc14_ = _loc7_ - _loc3_.y;
            _loc3_.v = _loc14_ / this.§super use package§ + this.§do include§;
            _loc4_.v = _loc3_.v;
            if(_loc3_.y < _loc7_)
            {
               _loc6_ = _loc3_.y / 200;
            }
            else
            {
               _loc6_ = (param2 - _loc3_.y) / 200;
            }
            if(_loc6_ > 1)
            {
               _loc6_ = 1;
            }
            _loc9_ = Math.sin(3.141592653589793 * 2 * (_loc14_ + this.§extends super if§) / 750);
            _loc10_ = Math.sin(3.141592653589793 * 2 * (_loc14_ + this.§5214231789231802123423632234§) / 450);
            _loc3_.u = (_loc9_ + _loc10_) * 0.5 * _loc12_ * _loc6_;
            _loc4_.u = 1 + _loc3_.u;
            _loc8_++;
         }
         boundMaxY = param2;
      }
   }
}

