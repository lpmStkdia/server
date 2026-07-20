package §try const default§
{
   import §521423188792318892123423632234§.§521423166662316679123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import §5214238500238513123423632234§.§521423124982312511123423632234§;
   import §5214238500238513123423632234§.§5214237140237153123423632234§;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.RayIntersectionData;
   import §do package throw§.§5214235116235129123423632234§;
   
   public class §use finally package§ implements §5214235116235129123423632234§
   {
      
      public static var §else set super§:§521423124982312511123423632234§;
      
      private static const §521423189552318968123423632234§:Number = 0.12;
      
      private static const §521423143392314352123423632234§:Number = 0.1;
      
      private static const §5214235071235084123423632234§:§521423166662316679123423632234§ = new §521423166662316679123423632234§();
      
      private static const §while const if§:§521423166662316679123423632234§ = new §521423166662316679123423632234§();
      
      private static const §521423183232318336123423632234§:§do function else§ = new §do function else§();
      
      private static const §521423127552312768123423632234§:§do function else§ = new §do function else§();
      
      private static const §521423134002313413123423632234§:§do function else§ = new §do function else§();
      
      private static const §5214239064239077123423632234§:§do function else§ = new §do function else§();
      
      private var §const catch continue§:Camera3D;
      
      private var §with while function§:§5214236759236772123423632234§;
      
      public function §use finally package§(param1:Camera3D, param2:§do function else§)
      {
         super();
         this.§const catch continue§ = param1;
         this.§with while function§ = new §5214236759236772123423632234§(param2);
         this.§with while function§.visible = false;
         §else set super§.§if use try§().§for switch with§(this.§with while function§);
      }
      
      private static function §521423139172313930123423632234§(param1:Object3D) : §521423166662316679123423632234§
      {
         var _loc7_:Number = Math.cos(param1.rotationX);
         var _loc13_:Number = Math.sin(param1.rotationX);
         var _loc14_:Number = Math.cos(param1.rotationY);
         var _loc11_:Number = Math.sin(param1.rotationY);
         var _loc12_:Number = Math.cos(param1.rotationZ);
         var _loc9_:Number = Math.sin(param1.rotationZ);
         var _loc10_:Number = _loc12_ * _loc11_;
         var _loc8_:Number = _loc9_ * _loc11_;
         var _loc3_:Number = _loc14_ * param1.scaleX;
         var _loc2_:Number = _loc13_ * param1.scaleY;
         var _loc6_:Number = _loc7_ * param1.scaleY;
         var _loc5_:Number = _loc7_ * param1.scaleZ;
         var _loc4_:Number = _loc13_ * param1.scaleZ;
         §while const if§.§5214232125232138123423632234§ = _loc12_ * _loc3_;
         §while const if§.§finally use true§ = _loc10_ * _loc2_ - _loc9_ * _loc6_;
         §while const if§.§521423122302312243123423632234§ = _loc10_ * _loc5_ + _loc9_ * _loc4_;
         §while const if§.§5214233909233922123423632234§ = param1.x;
         §while const if§.§default catch super§ = _loc9_ * _loc3_;
         §while const if§.§set catch implements§ = _loc8_ * _loc2_ + _loc12_ * _loc6_;
         §while const if§.§final else§ = _loc8_ * _loc5_ - _loc12_ * _loc4_;
         §while const if§.§while while return§ = param1.y;
         §while const if§.§return finally else§ = -_loc11_ * param1.scaleX;
         §while const if§.§521423190732319086123423632234§ = _loc14_ * _loc2_;
         §while const if§.§5214237445237458123423632234§ = _loc14_ * _loc5_;
         §while const if§.§dynamic finally false§ = param1.z;
         return §while const if§;
      }
      
      private static function §null var set§(param1:Camera3D, param2:§do function else§) : Number
      {
         var _loc15_:Number = Math.cos(param1.rotationX);
         var _loc16_:Number = Math.sin(param1.rotationX);
         var _loc13_:Number = Math.cos(param1.rotationY);
         var _loc14_:Number = Math.sin(param1.rotationY);
         var _loc10_:Number = Math.cos(param1.rotationZ);
         var _loc11_:Number = Math.sin(param1.rotationZ);
         var _loc9_:Number = _loc10_ * _loc14_ * _loc15_ + _loc11_ * _loc16_;
         var _loc4_:Number = -_loc10_ * _loc16_ + _loc14_ * _loc11_ * _loc15_;
         var _loc3_:Number = _loc13_ * _loc15_;
         var _loc8_:Number = -_loc9_ * param1.x - _loc4_ * param1.y - _loc3_ * param1.z;
         var _loc7_:Number = param1.view.width * 0.5;
         var _loc6_:Number = param1.view.height * 0.5;
         var _loc5_:Number = Math.sqrt(_loc7_ * _loc7_ + _loc6_ * _loc6_) / Math.tan(param1.fov * 0.5);
         var _loc12_:Number = _loc9_ * param2.x + _loc4_ * param2.y + _loc3_ * param2.§521423155722315585123423632234§ + _loc8_;
         return _loc5_ / _loc12_;
      }
      
      private function §521423113162311329123423632234§(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc6_:§5214237140237153123423632234§ = §else set super§.§if use try§();
         var _loc7_:Number = _loc6_.§521423121412312154123423632234§() / 2 - param3;
         var _loc5_:Number = _loc6_.§package var class§() / 2 - param4;
         return param1 >= -_loc7_ && param1 <= _loc7_ && param2 >= -_loc5_ && param2 <= _loc5_;
      }
      
      private function §5214231010231023123423632234§() : int
      {
         switch(§else set super§.§if use try§().§finally const var§() - 9)
         {
            case 0:
               return 40;
            case 1:
               return 70;
            default:
               return 15;
         }
      }
      
      private function §5214232247232260123423632234§() : §521423166662316679123423632234§
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = this.§const catch continue§.viewSizeX / this.§const catch continue§.focalLength;
         var _loc9_:Number = this.§const catch continue§.viewSizeY / this.§const catch continue§.focalLength;
         var _loc2_:Number = Math.cos(this.§const catch continue§.rotationX);
         var _loc1_:Number = Math.sin(this.§const catch continue§.rotationX);
         _loc7_ = Math.cos(this.§const catch continue§.rotationY);
         _loc8_ = Math.sin(this.§const catch continue§.rotationY);
         _loc15_ = Math.cos(this.§const catch continue§.rotationZ);
         _loc16_ = Math.sin(this.§const catch continue§.rotationZ);
         var _loc6_:Number = _loc15_ * _loc8_;
         _loc13_ = _loc16_ * _loc8_;
         var _loc5_:Number = _loc7_ * this.§const catch continue§.scaleX;
         _loc14_ = _loc1_ * this.§const catch continue§.scaleY;
         var _loc4_:Number = _loc2_ * this.§const catch continue§.scaleY;
         _loc10_ = _loc2_ * this.§const catch continue§.scaleZ;
         var _loc3_:Number = _loc1_ * this.§const catch continue§.scaleZ;
         §5214235071235084123423632234§.§5214232125232138123423632234§ = _loc15_ * _loc5_ * _loc11_;
         §5214235071235084123423632234§.§finally use true§ = (_loc6_ * _loc14_ - _loc16_ * _loc4_) * _loc9_;
         §5214235071235084123423632234§.§521423122302312243123423632234§ = _loc6_ * _loc10_ + _loc16_ * _loc3_;
         §5214235071235084123423632234§.§5214233909233922123423632234§ = this.§const catch continue§.x;
         §5214235071235084123423632234§.§default catch super§ = _loc16_ * _loc5_ * _loc11_;
         §5214235071235084123423632234§.§set catch implements§ = (_loc13_ * _loc14_ + _loc15_ * _loc4_) * _loc9_;
         §5214235071235084123423632234§.§final else§ = _loc13_ * _loc10_ - _loc15_ * _loc3_;
         §5214235071235084123423632234§.§while while return§ = this.§const catch continue§.y;
         §5214235071235084123423632234§.§return finally else§ = -_loc8_ * this.§const catch continue§.scaleX * _loc11_;
         §5214235071235084123423632234§.§521423190732319086123423632234§ = _loc7_ * _loc14_ * _loc9_;
         §5214235071235084123423632234§.§5214237445237458123423632234§ = _loc7_ * _loc10_;
         §5214235071235084123423632234§.§dynamic finally false§ = this.§const catch continue§.z;
         var _loc12_:Object3D = this.§const catch continue§;
         while(_loc12_._parent != null)
         {
            _loc12_ = _loc12_._parent;
            §5214235071235084123423632234§.§5214238971238984123423632234§(§521423139172313930123423632234§(_loc12_));
         }
         §5214235071235084123423632234§.§final package false§();
         return §5214235071235084123423632234§;
      }
      
      public function render(param1:int, param2:int) : void
      {
         var _loc3_:§521423166662316679123423632234§ = this.§5214232247232260123423632234§();
         this.§static use implements§(_loc3_);
      }
      
      private function §521423161072316120123423632234§() : Number
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:RayIntersectionData = null;
         this.§with while function§.§521423189222318935123423632234§(§521423127552312768123423632234§);
         var _loc4_:Number = §null var set§(this.§const catch continue§,§521423127552312768123423632234§);
         if(_loc4_ < 0.1)
         {
            return 1;
         }
         §521423134002313413123423632234§.§case const get§(this.§const catch continue§.x,this.§const catch continue§.y,this.§const catch continue§.z);
         §5214239064239077123423632234§.§include set set§(§521423127552312768123423632234§,§521423134002313413123423632234§);
         _loc2_ = §5214239064239077123423632234§.§521423135952313608123423632234§();
         §5214239064239077123423632234§.§class while dynamic§();
         _loc3_ = §else set super§.§52142329523308123423632234§().§5214235518235531123423632234§(§521423134002313413123423632234§,§5214239064239077123423632234§,§else set super§.§return use null§());
         if(_loc3_ != null && _loc3_.time < _loc2_)
         {
            _loc1_ = 1;
         }
         else if(_loc4_ > 0.12)
         {
            _loc1_ = 0;
         }
         else
         {
            _loc1_ = (0.12 - _loc4_) / (0.12 - 0.1);
         }
         return _loc1_;
      }
      
      public function §return catch dynamic§() : void
      {
         this.§with while function§.visible = true;
      }
      
      private function §else finally catch§(param1:§do function else§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(param1.§521423155722315585123423632234§ > 0.001)
         {
            param1.x = param1.x * this.§const catch continue§.viewSizeX / param1.§521423155722315585123423632234§;
            param1.y = param1.y * this.§const catch continue§.viewSizeY / param1.§521423155722315585123423632234§;
         }
         else if(param1.§521423155722315585123423632234§ < -0.001)
         {
            param1.x = -param1.x * this.§const catch continue§.viewSizeX / param1.§521423155722315585123423632234§;
            param1.y = -param1.y * this.§const catch continue§.viewSizeY / param1.§521423155722315585123423632234§;
         }
         else
         {
            _loc2_ = §else set super§.§if use try§().§521423164512316464123423632234§();
            _loc3_ = Math.sqrt(param1.x * param1.x + param1.y * param1.y);
            param1.x *= _loc2_ / _loc3_;
            param1.y *= _loc2_ / _loc3_;
         }
      }
      
      private function §static use implements§(param1:§521423166662316679123423632234§) : void
      {
         var _loc2_:Number = NaN;
         this.§with while function§.§521423189222318935123423632234§(§521423183232318336123423632234§);
         §521423183232318336123423632234§.§521423147372314750123423632234§(param1);
         this.§else finally catch§(§521423183232318336123423632234§);
         var _loc5_:Number = 15;
         var _loc6_:Number = this.§5214231010231023123423632234§();
         var _loc3_:Boolean = this.§521423113162311329123423632234§(§521423183232318336123423632234§.x,§521423183232318336123423632234§.y,_loc5_,_loc6_);
         if(§521423183232318336123423632234§.§521423155722315585123423632234§ > 0 && _loc3_)
         {
            _loc2_ = this.§521423161072316120123423632234§();
            if(_loc2_ == 0)
            {
               this.§with while function§.visible = false;
               this.§with while function§.alpha = 0;
            }
            else
            {
               this.§with while function§.visible = true;
               this.§with while function§.alpha = _loc2_;
            }
         }
         else
         {
            this.§with while function§.alpha = 1;
            this.§with while function§.visible = false;
         }
         var _loc4_:§5214237140237153123423632234§ = §else set super§.§if use try§();
         this.§with while function§.x = int(§521423183232318336123423632234§.x + _loc4_.§521423121412312154123423632234§() / 2 - 12);
         this.§with while function§.y = int(§521423183232318336123423632234§.y + _loc4_.§package var class§() / 2 - 12);
      }
   }
}

