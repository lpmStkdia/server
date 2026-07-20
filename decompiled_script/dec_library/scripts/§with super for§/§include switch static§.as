package §with super for§
{
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.objects.Mesh;
   import §default package continue§.§package finally case§;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   
   public class §include switch static§ extends Mesh
   {
      
      protected static const §5214237490237503123423632234§:Number = 100;
      
      protected var §5214235714235727123423632234§:Number = 0;
      
      protected var §5214234069234082123423632234§:Material;
      
      protected var §521423104122310425123423632234§:Material;
      
      protected var §break while null§:Material;
      
      protected var §5214239773239786123423632234§:Material;
      
      protected var §throw finally with§:Material;
      
      protected var §package switch for§:Vector.<Face>;
      
      protected var §return use class§:Vector.<Point>;
      
      protected var §continue const class§:Vector.<Vector3D>;
      
      public function §include switch static§(param1:Number, param2:Number, param3:Material, param4:Material, param5:Material, param6:Material, param7:Material)
      {
         super();
         this.§5214234069234082123423632234§ = param3;
         this.§521423104122310425123423632234§ = param4;
         this.§break while null§ = param5;
         this.§5214239773239786123423632234§ = param6;
         this.§throw finally with§ = param7;
         useShadowMap = false;
         useLight = false;
         shadowMapAlphaThreshold = 2;
         depthMapAlphaThreshold = 2;
         this.§else while each§(param1,param2);
      }
      
      protected function §var switch set§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Vertex
      {
         var _loc6_:Vertex = new Vertex();
         _loc6_.x = param1;
         _loc6_.y = param2;
         _loc6_.z = param3;
         _loc6_.u = param4;
         _loc6_.v = param5;
         _loc6_.next = vertexList;
         vertexList = _loc6_;
         return _loc6_;
      }
      
      public function §5214234150234163123423632234§(param1:Camera3D) : void
      {
         rotationX = param1.rotationX - 3.141592653589793;
         rotationY = 0;
         rotationZ = param1.rotationZ;
      }
      
      protected function §else while each§(param1:Number, param2:Number) : void
      {
         var _loc6_:Number = param1 * 0.5;
         var _loc7_:Number = param2 * 0.5;
         this.§continue const class§ = new Vector.<Vector3D>(4);
         this.§continue const class§[0] = new Vector3D(0,_loc7_,0);
         this.§continue const class§[1] = new Vector3D(-_loc6_,0,0);
         this.§continue const class§[2] = new Vector3D(0,-_loc7_,0);
         this.§continue const class§[3] = new Vector3D(_loc6_,0,0);
         this.§return use class§ = new Vector.<Point>(4);
         this.§return use class§[0] = new Point(0.5,-0.5);
         this.§return use class§[1] = new Point(-0.5,0.5);
         this.§return use class§[2] = new Point(0.5,1.5);
         this.§return use class§[3] = new Point(1.5,0.5);
         this.§package switch for§ = new Vector.<Face>(5);
         var _loc3_:Vertex = this.§var switch set§(-_loc6_,0,0,-0.5,0.5);
         var _loc4_:Vertex = this.§var switch set§(0,0,0,0.5,0.5);
         var _loc5_:Vertex = this.§var switch set§(0,_loc7_,0,0.5,-0.5);
         this.§package switch for§[0] = this.§521423189242318937123423632234§(_loc3_,_loc4_,_loc5_,this.§5214234069234082123423632234§);
         _loc3_ = this.§var switch set§(0,-_loc7_,0,0.5,1.5);
         _loc4_ = this.§var switch set§(0,0,0,0.5,0.5);
         _loc5_ = this.§var switch set§(-_loc6_,0,0,-0.5,0.5);
         this.§package switch for§[1] = this.§521423189242318937123423632234§(_loc3_,_loc4_,_loc5_,this.§5214234069234082123423632234§);
         _loc3_ = this.§var switch set§(_loc6_,0,0,1.5,0.5);
         _loc4_ = this.§var switch set§(0,0,0,0.5,0.5);
         _loc5_ = this.§var switch set§(0,-_loc7_,0,0.5,1.5);
         this.§package switch for§[2] = this.§521423189242318937123423632234§(_loc3_,_loc4_,_loc5_,this.§5214234069234082123423632234§);
         _loc3_ = this.§var switch set§(0,_loc7_,0,0.5,-0.5);
         _loc4_ = this.§var switch set§(0,0,0,0.5,0.5);
         _loc5_ = this.§var switch set§(_loc6_,0,0,1.5,0.5);
         this.§package switch for§[3] = this.§521423189242318937123423632234§(_loc3_,_loc4_,_loc5_,this.§5214234069234082123423632234§);
         _loc3_ = this.§var switch set§(0,0,0,0,0);
         _loc4_ = this.§var switch set§(0,0,0,0.5,0.5);
         _loc5_ = this.§var switch set§(0,0,0,0,0);
         this.§package switch for§[4] = this.§521423189242318937123423632234§(_loc3_,_loc4_,_loc5_,this.§5214234069234082123423632234§);
      }
      
      protected function §function const package§() : void
      {
         var _loc1_:Vertex = null;
         var _loc12_:Vector3D = null;
         var _loc10_:Point = null;
         var _loc11_:Face = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc2_:Vertex = null;
         var _loc15_:Vector3D = null;
         var _loc3_:Point = null;
         var _loc16_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc19_:Number = this.§5214235714235727123423632234§ / 100;
         var _loc18_:Number = _loc19_ > 0 ? _loc19_ : -_loc19_;
         var _loc13_:int = 4 * _loc18_;
         var _loc9_:int = (_loc13_ + 1) % 4;
         var _loc6_:Material = _loc19_ < 0 ? this.§5214239773239786123423632234§ : this.§521423104122310425123423632234§;
         var _loc4_:Material = _loc19_ < 0 ? this.§throw finally with§ : this.§break while null§;
         while(_loc7_ < 4)
         {
            _loc11_ = this.§package switch for§[_loc7_];
            if(_loc7_ < _loc13_)
            {
               _loc11_.material = _loc18_ == 1 ? _loc4_ : _loc6_;
            }
            else if(_loc7_ > _loc13_)
            {
               _loc11_.material = this.§5214234069234082123423632234§;
            }
            _loc1_ = _loc11_.wrapper.vertex;
            _loc8_ = (_loc7_ + 1) % 4;
            _loc12_ = this.§continue const class§[_loc8_];
            _loc10_ = this.§return use class§[_loc8_];
            _loc1_.x = _loc12_.x;
            _loc1_.y = _loc12_.y;
            _loc1_.u = _loc10_.x;
            _loc1_.v = _loc10_.y;
            _loc7_++;
         }
         var _loc14_:Face = this.§package switch for§[4];
         if(_loc18_ == 1)
         {
            _loc2_ = _loc14_.wrapper.next.next.vertex;
            _loc2_.x = 0;
            _loc2_.y = 0;
            _loc2_.u = 0;
            _loc2_.v = 0;
            _loc2_ = _loc14_.wrapper.vertex;
            _loc2_.x = 0;
            _loc2_.y = 0;
            _loc2_.u = 0;
            _loc2_.v = 0;
         }
         else
         {
            _loc11_ = this.§package switch for§[_loc13_];
            _loc11_.material = _loc6_;
            _loc15_ = this.§continue const class§[0];
            _loc3_ = this.§return use class§[0];
            _loc12_ = this.§continue const class§[_loc9_];
            _loc10_ = this.§return use class§[_loc9_];
            _loc1_ = _loc11_.wrapper.vertex;
            _loc16_ = 2 * _loc18_ * 3.141592653589793;
            _loc5_ = Math.cos(_loc16_);
            _loc17_ = Math.sin(_loc16_);
            _loc1_.x = _loc15_.x * _loc5_ - _loc15_.y * _loc17_;
            _loc1_.y = _loc15_.x * _loc17_ + _loc15_.y * _loc5_;
            _loc17_ = -_loc17_;
            _loc1_.u = 0.5 + (_loc3_.x - 0.5) * _loc5_ - (_loc3_.y - 0.5) * _loc17_;
            _loc1_.v = 0.5 + (_loc3_.x - 0.5) * _loc17_ + (_loc3_.y - 0.5) * _loc5_;
            _loc2_ = _loc14_.wrapper.vertex;
            _loc2_.x = _loc12_.x;
            _loc2_.y = _loc12_.y;
            _loc2_.u = _loc10_.x;
            _loc2_.v = _loc10_.y;
            _loc2_ = _loc14_.wrapper.next.next.vertex;
            _loc2_.x = _loc1_.x;
            _loc2_.y = _loc1_.y;
            _loc2_.u = _loc1_.u;
            _loc2_.v = _loc1_.v;
         }
      }
      
      protected function §521423189242318937123423632234§(param1:Vertex, param2:Vertex, param3:Vertex, param4:Material) : Face
      {
         var _loc5_:Face = new Face();
         _loc5_.material = param4;
         _loc5_.wrapper = new Wrapper();
         _loc5_.wrapper.vertex = param1;
         _loc5_.wrapper.next = new Wrapper();
         _loc5_.wrapper.next.vertex = param2;
         _loc5_.wrapper.next.next = new Wrapper();
         _loc5_.wrapper.next.next.vertex = param3;
         _loc5_.normalX = 0;
         _loc5_.normalY = 0;
         _loc5_.normalZ = 1;
         _loc5_.offset = 0;
         _loc5_.next = faceList;
         faceList = _loc5_;
         return _loc5_;
      }
      
      public function §521423174852317498123423632234§(param1:Number) : void
      {
         var _loc2_:Number = §package finally case§.§if catch get§(param1,-100,100);
         if(this.§5214235714235727123423632234§ != _loc2_)
         {
            this.§5214235714235727123423632234§ = _loc2_;
            this.§function const package§();
         }
      }
   }
}

