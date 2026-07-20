package §5214239588239601123423632234§
{
   import §521423188792318892123423632234§.§521423166662316679123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.objects.Mesh;
   
   public class §native finally default§ extends §521423143492314362123423632234§
   {
      
      private static const §521423188252318838123423632234§:§521423166662316679123423632234§ = new §521423166662316679123423632234§();
      
      private var §null function super§:Vector.<Vertex>;
      
      private var §default var continue§:Vector.<§do function else§>;
      
      private var §final var if§:Vertex;
      
      private var §for while finally§:§do function else§;
      
      private var §521423176372317650123423632234§:int;
      
      private var §switch use import§:§521423143492314362123423632234§;
      
      private var §521423164242316437123423632234§:§class for try§;
      
      private var §5214232423232436123423632234§:Mesh;
      
      public function §native finally default§(param1:Number, param2:Number, param3:int, param4:Material)
      {
         super();
         this.§521423176372317650123423632234§ = param3;
         this.§5214232423232436123423632234§ = new Mesh();
         §52142367123684123423632234§ = this.§5214232423232436123423632234§;
         this.§null function super§ = new Vector.<Vertex>(2 * param3);
         this.§default var continue§ = new Vector.<§do function else§>(param3);
         this.§else while each§(param1,param2);
         this.§5214232423232436123423632234§.setMaterialToAllFaces(param4);
         this.§5214232423232436123423632234§.shadowMapAlphaThreshold = 2;
         this.§5214232423232436123423632234§.depthMapAlphaThreshold = 2;
      }
      
      private function §var switch set§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Vertex
      {
         var _loc6_:Vertex = new Vertex();
         _loc6_.next = this.§5214232423232436123423632234§.vertexList;
         this.§5214232423232436123423632234§.vertexList = _loc6_;
         _loc6_.x = param1;
         _loc6_.y = param2;
         _loc6_.z = param3;
         _loc6_.u = param4;
         _loc6_.v = param5;
         return _loc6_;
      }
      
      private function §5214232029232042123423632234§(param1:Vertex, param2:Vertex, param3:Vertex) : Face
      {
         var _loc4_:Face = new Face();
         _loc4_.next = this.§5214232423232436123423632234§.faceList;
         this.§5214232423232436123423632234§.faceList = _loc4_;
         _loc4_.wrapper = new Wrapper();
         _loc4_.wrapper.vertex = param1;
         _loc4_.wrapper.next = new Wrapper();
         _loc4_.wrapper.next.vertex = param2;
         _loc4_.wrapper.next.next = new Wrapper();
         _loc4_.wrapper.next.next.vertex = param3;
         return _loc4_;
      }
      
      public function §5214239350239363123423632234§(param1:§521423143492314362123423632234§, param2:§class for try§) : void
      {
         this.§switch use import§ = param1;
         this.§521423164242316437123423632234§ = param2;
         this.§5214232423232436123423632234§.scaleX = 1;
         this.§5214232423232436123423632234§.scaleY = 1;
         this.§5214232423232436123423632234§.scaleZ = 1;
         §while use null§(1);
         §521423169132316926123423632234§(1);
      }
      
      public function §override while override§() : void
      {
         §5214238410238423123423632234§();
         this.§switch use import§ = null;
         this.§521423164242316437123423632234§ = null;
         §521423142182314231123423632234§.§package const include§(this);
      }
      
      public function §521423117412311754123423632234§() : void
      {
         var _loc6_:§do function else§ = null;
         var _loc3_:int = 0;
         var _loc2_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:Vertex = null;
         this.§521423164242316437123423632234§.§5214236093236106123423632234§(§521423188252318838123423632234§);
         while(_loc3_ < this.§521423176372317650123423632234§)
         {
            _loc6_ = this.§default var continue§[_loc3_];
            _loc2_ = _loc6_.x * §521423188252318838123423632234§.§5214232125232138123423632234§ + _loc6_.y * §521423188252318838123423632234§.§finally use true§ + _loc6_.§521423155722315585123423632234§ * §521423188252318838123423632234§.§521423122302312243123423632234§ + §521423188252318838123423632234§.§5214233909233922123423632234§;
            _loc4_ = _loc6_.x * §521423188252318838123423632234§.§default catch super§ + _loc6_.y * §521423188252318838123423632234§.§set catch implements§ + _loc6_.§521423155722315585123423632234§ * §521423188252318838123423632234§.§final else§ + §521423188252318838123423632234§.§while while return§;
            _loc5_ = _loc6_.x * §521423188252318838123423632234§.§return finally else§ + _loc6_.y * §521423188252318838123423632234§.§521423190732319086123423632234§ + _loc6_.§521423155722315585123423632234§ * §521423188252318838123423632234§.§5214237445237458123423632234§ + §521423188252318838123423632234§.§dynamic finally false§;
            _loc1_ = this.§null function super§[2 * _loc3_];
            _loc1_.x = _loc2_;
            _loc1_.y = _loc4_;
            _loc1_.z = _loc5_;
            _loc1_ = this.§null function super§[2 * _loc3_ + 1];
            _loc1_.x = _loc2_;
            _loc1_.y = _loc4_;
            _loc1_.z = _loc5_;
            _loc3_++;
         }
         this.§switch use import§.§5214236093236106123423632234§(§521423188252318838123423632234§);
         _loc6_ = this.§for while finally§;
         this.§final var if§.x = _loc6_.x * §521423188252318838123423632234§.§5214232125232138123423632234§ + _loc6_.y * §521423188252318838123423632234§.§finally use true§ + _loc6_.§521423155722315585123423632234§ * §521423188252318838123423632234§.§521423122302312243123423632234§ + §521423188252318838123423632234§.§5214233909233922123423632234§;
         this.§final var if§.y = _loc6_.x * §521423188252318838123423632234§.§default catch super§ + _loc6_.y * §521423188252318838123423632234§.§set catch implements§ + _loc6_.§521423155722315585123423632234§ * §521423188252318838123423632234§.§final else§ + §521423188252318838123423632234§.§while while return§;
         this.§final var if§.z = _loc6_.x * §521423188252318838123423632234§.§return finally else§ + _loc6_.y * §521423188252318838123423632234§.§521423190732319086123423632234§ + _loc6_.§521423155722315585123423632234§ * §521423188252318838123423632234§.§5214237445237458123423632234§ + §521423188252318838123423632234§.§dynamic finally false§;
         this.§5214232423232436123423632234§.calculateBounds();
         this.§5214232423232436123423632234§.calculateFacesNormals();
      }
      
      private function §else while each§(param1:Number, param2:Number) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:§do function else§ = null;
         var _loc4_:int = 0;
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         this.§for while finally§ = new §do function else§(0,0,param2);
         this.§final var if§ = this.§var switch set§(0,0,param2,0,1);
         var _loc9_:Number = 2 * 3.141592653589793 / this.§521423176372317650123423632234§;
         while(_loc6_ < this.§521423176372317650123423632234§)
         {
            _loc7_ = _loc6_ * _loc9_;
            _loc8_ = new §do function else§(param1 * Math.cos(_loc7_),param1 * Math.sin(_loc7_),0);
            this.§default var continue§[_loc6_] = _loc8_;
            this.§null function super§[2 * _loc6_] = this.§var switch set§(_loc8_.x,_loc8_.y,_loc8_.§521423155722315585123423632234§,0,0);
            this.§null function super§[2 * _loc6_ + 1] = this.§var switch set§(_loc8_.x,_loc8_.y,_loc8_.§521423155722315585123423632234§,1,1);
            _loc6_++;
         }
         while(_loc4_ < this.§521423176372317650123423632234§)
         {
            _loc3_ = 2 * _loc4_;
            _loc5_ = _loc3_ + 3;
            if(_loc5_ >= 2 * this.§521423176372317650123423632234§)
            {
               _loc5_ -= 2 * this.§521423176372317650123423632234§;
            }
            this.§5214232029232042123423632234§(this.§final var if§,this.§null function super§[_loc3_],this.§null function super§[_loc5_]);
            this.§5214232029232042123423632234§(this.§final var if§,this.§null function super§[_loc5_],this.§null function super§[_loc3_]);
            _loc4_++;
         }
      }
   }
}

