package §521423180552318068123423632234§
{
   import §521423188792318892123423632234§.§521423166662316679123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import §5214238500238513123423632234§.§521423124982312511123423632234§;
   import §5214238500238513123423632234§.§5214237140237153123423632234§;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.RayIntersectionData;
   import §continue switch case§.§dynamic const break§;
   import §do package throw§.§5214235116235129123423632234§;
   import §with super for§.§521423192252319238123423632234§;
   
   public class §521423165182316531123423632234§ implements §5214235116235129123423632234§
   {
      
      public static var §else set super§:§521423124982312511123423632234§;
      
      private static const §5214236946236959123423632234§:Number = 0.12;
      
      private static const §521423165912316604123423632234§:Number = 0.1;
      
      private static const §5214235071235084123423632234§:§521423166662316679123423632234§ = new §521423166662316679123423632234§();
      
      private static const §while const if§:§521423166662316679123423632234§ = new §521423166662316679123423632234§();
      
      private static const §521423183232318336123423632234§:§do function else§ = new §do function else§();
      
      private static const §521423152402315253123423632234§:§do function else§ = new §do function else§();
      
      private static const §521423134002313413123423632234§:§do function else§ = new §do function else§();
      
      private static const §5214239064239077123423632234§:§do function else§ = new §do function else§();
      
      private var §const catch continue§:Camera3D;
      
      private var §5214234224234237123423632234§:Vector.<§521423119032311916123423632234§> = new Vector.<§521423119032311916123423632234§>();
      
      public function §521423165182316531123423632234§(param1:Camera3D)
      {
         super();
         this.§const catch continue§ = param1;
      }
      
      private static function §null var set§(param1:Camera3D, param2:§do function else§) : Number
      {
         var _loc14_:Number = Math.cos(param1.rotationX);
         var _loc6_:Number = Math.sin(param1.rotationX);
         var _loc9_:Number = Math.cos(param1.rotationY);
         var _loc5_:Number = Math.sin(param1.rotationY);
         var _loc11_:Number = Math.cos(param1.rotationZ);
         var _loc7_:Number = Math.sin(param1.rotationZ);
         var _loc10_:Number = _loc11_ * _loc5_ * _loc14_ + _loc7_ * _loc6_;
         var _loc12_:Number = -_loc11_ * _loc6_ + _loc5_ * _loc7_ * _loc14_;
         var _loc13_:Number = _loc9_ * _loc14_;
         var _loc15_:Number = -_loc10_ * param1.x - _loc12_ * param1.y - _loc13_ * param1.z;
         var _loc3_:Number = param1.view.width * 0.5;
         var _loc4_:Number = param1.view.height * 0.5;
         var _loc16_:Number = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_) / Math.tan(param1.fov * 0.5);
         var _loc8_:Number = _loc10_ * param2.x + _loc12_ * param2.y + _loc13_ * param2.§521423155722315585123423632234§ + _loc15_;
         return _loc16_ / _loc8_;
      }
      
      private static function §521423139172313930123423632234§(param1:Object3D) : §521423166662316679123423632234§
      {
         var _loc14_:Number = Math.cos(param1.rotationX);
         var _loc5_:Number = Math.sin(param1.rotationX);
         var _loc9_:Number = Math.cos(param1.rotationY);
         var _loc4_:Number = Math.sin(param1.rotationY);
         var _loc12_:Number = Math.cos(param1.rotationZ);
         var _loc6_:Number = Math.sin(param1.rotationZ);
         var _loc8_:Number = _loc12_ * _loc4_;
         var _loc7_:Number = _loc6_ * _loc4_;
         var _loc2_:Number = _loc9_ * param1.scaleX;
         var _loc10_:Number = _loc5_ * param1.scaleY;
         var _loc11_:Number = _loc14_ * param1.scaleY;
         var _loc13_:Number = _loc14_ * param1.scaleZ;
         var _loc3_:Number = _loc5_ * param1.scaleZ;
         §while const if§.§5214232125232138123423632234§ = _loc12_ * _loc2_;
         §while const if§.§finally use true§ = _loc8_ * _loc10_ - _loc6_ * _loc11_;
         §while const if§.§521423122302312243123423632234§ = _loc8_ * _loc13_ + _loc6_ * _loc3_;
         §while const if§.§5214233909233922123423632234§ = param1.x;
         §while const if§.§default catch super§ = _loc6_ * _loc2_;
         §while const if§.§set catch implements§ = _loc7_ * _loc10_ + _loc12_ * _loc11_;
         §while const if§.§final else§ = _loc7_ * _loc13_ - _loc12_ * _loc3_;
         §while const if§.§while while return§ = param1.y;
         §while const if§.§return finally else§ = -_loc4_ * param1.scaleX;
         §while const if§.§521423190732319086123423632234§ = _loc9_ * _loc10_;
         §while const if§.§5214237445237458123423632234§ = _loc9_ * _loc13_;
         §while const if§.§dynamic finally false§ = param1.z;
         return §while const if§;
      }
      
      public function render(param1:int, param2:int) : void
      {
         var _loc3_:§521423166662316679123423632234§ = this.§include for else§();
         for each(var _loc4_ in this.§5214234224234237123423632234§)
         {
            this.§5214231689231702123423632234§(_loc4_,_loc3_);
         }
      }
      
      public function §521423192572319270123423632234§(param1:§521423119032311916123423632234§) : void
      {
         param1.visible = false;
         §else set super§.§if use try§().§for switch with§(param1);
         this.§5214234224234237123423632234§.push(param1);
      }
      
      private function §while while do§(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc6_:§5214237140237153123423632234§ = §else set super§.§if use try§();
         var _loc7_:Number = _loc6_.§521423121412312154123423632234§() / 2 - param3;
         var _loc5_:Number = _loc6_.§package var class§() / 2 - param4;
         return param1 >= -_loc7_ && param1 <= _loc7_ && param2 >= -_loc5_ && param2 <= _loc5_;
      }
      
      private function §class use else§() : int
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
      
      public function §return catch dynamic§() : void
      {
         for each(var _loc1_ in this.§5214234224234237123423632234§)
         {
            _loc1_.visible = true;
         }
      }
      
      private function §dynamic function§(param1:§521423192252319238123423632234§) : Number
      {
         var _loc2_:Number = NaN;
         param1.§521423125142312527123423632234§(§521423152402315253123423632234§);
         var _loc5_:Number = §null var set§(this.§const catch continue§,§521423152402315253123423632234§);
         if(_loc5_ < 0.1)
         {
            return 1;
         }
         §521423134002313413123423632234§.§case const get§(this.§const catch continue§.x,this.§const catch continue§.y,this.§const catch continue§.z);
         §5214239064239077123423632234§.§include set set§(§521423152402315253123423632234§,§521423134002313413123423632234§);
         var _loc4_:Number = §5214239064239077123423632234§.§521423135952313608123423632234§();
         §5214239064239077123423632234§.§class while dynamic§();
         var _loc3_:RayIntersectionData = §else set super§.§52142329523308123423632234§().§5214235518235531123423632234§(§521423134002313413123423632234§,§5214239064239077123423632234§,§else set super§.§return use null§());
         if(_loc3_ != null && _loc3_.time < _loc4_)
         {
            _loc2_ = 1;
         }
         else if(_loc5_ > 0.12)
         {
            _loc2_ = 0;
         }
         else
         {
            _loc2_ = (0.12 - _loc5_) / (0.12 - 0.1);
         }
         return _loc2_;
      }
      
      private function §521423103152310328123423632234§(param1:§do function else§) : void
      {
         var _loc3_:Number = NaN;
         var _loc2_:Number = NaN;
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
            _loc3_ = §else set super§.§if use try§().§521423164512316464123423632234§();
            _loc2_ = Math.sqrt(param1.x * param1.x + param1.y * param1.y);
            param1.x *= _loc3_ / _loc2_;
            param1.y *= _loc3_ / _loc2_;
         }
      }
      
      private function §5214231689231702123423632234§(param1:§521423119032311916123423632234§, param2:§521423166662316679123423632234§) : void
      {
         var _loc4_:Number = NaN;
         if(§dynamic const break§.§5214231303231316123423632234§ == 2)
         {
            param1.visible = false;
            return;
         }
         param1.§521423189222318935123423632234§(§521423183232318336123423632234§);
         §521423183232318336123423632234§.§521423147372314750123423632234§(param2);
         this.§521423103152310328123423632234§(§521423183232318336123423632234§);
         var _loc5_:Number = 15;
         var _loc6_:Number = this.§class use else§();
         var _loc7_:Boolean = this.§while while do§(§521423183232318336123423632234§.x,§521423183232318336123423632234§.y,_loc5_,_loc6_);
         if(§521423183232318336123423632234§.§521423155722315585123423632234§ > 0 && _loc7_)
         {
            _loc4_ = this.§dynamic function§(param1.§521423172262317239123423632234§());
            if(_loc4_ == 0)
            {
               param1.visible = false;
               param1.alpha = 0;
            }
            else
            {
               param1.visible = true;
               param1.alpha = _loc4_;
            }
         }
         else
         {
            param1.alpha = 1;
            param1.visible = false;
         }
         var _loc3_:§5214237140237153123423632234§ = §else set super§.§if use try§();
         param1.x = int(§521423183232318336123423632234§.x + _loc3_.§521423121412312154123423632234§() / 2 - 12);
         param1.y = int(§521423183232318336123423632234§.y + _loc3_.§package var class§() / 2 - 12);
         param1.§function const package§();
      }
      
      private function §include for else§() : §521423166662316679123423632234§
      {
         var _loc1_:Number = this.§const catch continue§.viewSizeX / this.§const catch continue§.focalLength;
         var _loc3_:Number = this.§const catch continue§.viewSizeY / this.§const catch continue§.focalLength;
         var _loc16_:Number = Math.cos(this.§const catch continue§.rotationX);
         var _loc6_:Number = Math.sin(this.§const catch continue§.rotationX);
         var _loc11_:Number = Math.cos(this.§const catch continue§.rotationY);
         var _loc5_:Number = Math.sin(this.§const catch continue§.rotationY);
         var _loc14_:Number = Math.cos(this.§const catch continue§.rotationZ);
         var _loc7_:Number = Math.sin(this.§const catch continue§.rotationZ);
         var _loc10_:Number = _loc14_ * _loc5_;
         var _loc8_:Number = _loc7_ * _loc5_;
         var _loc2_:Number = _loc11_ * this.§const catch continue§.scaleX;
         var _loc12_:Number = _loc6_ * this.§const catch continue§.scaleY;
         var _loc13_:Number = _loc16_ * this.§const catch continue§.scaleY;
         var _loc15_:Number = _loc16_ * this.§const catch continue§.scaleZ;
         var _loc4_:Number = _loc6_ * this.§const catch continue§.scaleZ;
         §5214235071235084123423632234§.§5214232125232138123423632234§ = _loc14_ * _loc2_ * _loc1_;
         §5214235071235084123423632234§.§finally use true§ = (_loc10_ * _loc12_ - _loc7_ * _loc13_) * _loc3_;
         §5214235071235084123423632234§.§521423122302312243123423632234§ = _loc10_ * _loc15_ + _loc7_ * _loc4_;
         §5214235071235084123423632234§.§5214233909233922123423632234§ = this.§const catch continue§.x;
         §5214235071235084123423632234§.§default catch super§ = _loc7_ * _loc2_ * _loc1_;
         §5214235071235084123423632234§.§set catch implements§ = (_loc8_ * _loc12_ + _loc14_ * _loc13_) * _loc3_;
         §5214235071235084123423632234§.§final else§ = _loc8_ * _loc15_ - _loc14_ * _loc4_;
         §5214235071235084123423632234§.§while while return§ = this.§const catch continue§.y;
         §5214235071235084123423632234§.§return finally else§ = -_loc5_ * this.§const catch continue§.scaleX * _loc1_;
         §5214235071235084123423632234§.§521423190732319086123423632234§ = _loc11_ * _loc12_ * _loc3_;
         §5214235071235084123423632234§.§5214237445237458123423632234§ = _loc11_ * _loc15_;
         §5214235071235084123423632234§.§dynamic finally false§ = this.§const catch continue§.z;
         var _loc9_:Object3D = this.§const catch continue§;
         while(_loc9_._parent != null)
         {
            _loc9_ = _loc9_._parent;
            §5214235071235084123423632234§.§5214238971238984123423632234§(§521423139172313930123423632234§(_loc9_));
         }
         §5214235071235084123423632234§.§final package false§();
         return §5214235071235084123423632234§;
      }
   }
}

