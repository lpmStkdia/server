package §521423188792318892123423632234§
{
   import §521423148762314889123423632234§.§class set implements§;
   import flash.geom.Vector3D;
   import flash.utils.getQualifiedClassName;
   
   public class §do function else§
   {
      
      public static const §extends finally do§:§do function else§ = new §do function else§(0,0,0);
      
      public static const §5214234660234673123423632234§:§do function else§ = new §do function else§(1,0,0);
      
      public static const §5214238653238666123423632234§:§do function else§ = new §do function else§(0,1,0);
      
      public static const §5214234759234772123423632234§:§do function else§ = new §do function else§(0,0,1);
      
      public static const §521423137242313737123423632234§:§do function else§ = new §do function else§(0,0,-1);
      
      public var x:Number;
      
      public var y:Number;
      
      public var §521423155722315585123423632234§:Number;
      
      public function §do function else§(param1:Number = 0, param2:Number = 0, param3:Number = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§521423155722315585123423632234§ = param3;
      }
      
      public static function §521423102392310252123423632234§(param1:§do function else§) : Boolean
      {
         return param1 != null && isFinite(param1.x) && isFinite(param1.y) && isFinite(param1.§521423155722315585123423632234§);
      }
      
      public static function §throw use true§(param1:§class set implements§) : §do function else§
      {
         return new §do function else§(param1.x,param1.y,param1.§521423155722315585123423632234§);
      }
      
      public static function §include set break§(param1:§do function else§, param2:§do function else§) : Number
      {
         var _loc3_:Number = param1.x - param2.x;
         var _loc4_:Number = param1.y - param2.y;
         var _loc5_:Number = param1.§521423155722315585123423632234§ - param2.§521423155722315585123423632234§;
         return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_ + _loc5_ * _loc5_);
      }
      
      public static function §5214237067237080123423632234§(param1:Number, param2:§do function else§, param3:§do function else§, param4:§do function else§) : void
      {
         param4.x = param2.x + param1 * (param3.x - param2.x);
         param4.y = param2.y + param1 * (param3.y - param2.y);
         param4.§521423155722315585123423632234§ = param2.§521423155722315585123423632234§ + param1 * (param3.§521423155722315585123423632234§ - param2.§521423155722315585123423632234§);
      }
      
      public function §include set set§(param1:§do function else§, param2:§do function else§) : §do function else§
      {
         this.x = param1.x - param2.x;
         this.y = param1.y - param2.y;
         this.§521423155722315585123423632234§ = param1.§521423155722315585123423632234§ - param2.§521423155722315585123423632234§;
         return this;
      }
      
      public function §5214235904235917123423632234§() : §do function else§
      {
         this.x = -this.x;
         this.y = -this.y;
         this.§521423155722315585123423632234§ = -this.§521423155722315585123423632234§;
         return this;
      }
      
      public function §5214238749238762123423632234§(param1:§class set implements§) : §do function else§
      {
         this.x = param1.x;
         this.y = param1.y;
         this.§521423155722315585123423632234§ = param1.§521423155722315585123423632234§;
         return this;
      }
      
      public function §521423110992311112123423632234§(param1:§do function else§, param2:§do function else§) : §do function else§
      {
         this.x = param1.x - param2.x;
         this.y = param1.y - param2.y;
         this.§521423155722315585123423632234§ = 0;
         return this;
      }
      
      public function §case const get§(param1:Number = 0, param2:Number = 0, param3:Number = 0) : §do function else§
      {
         this.x = param1;
         this.y = param2;
         this.§521423155722315585123423632234§ = param3;
         return this;
      }
      
      public function §true for each§(param1:§do function else§) : Number
      {
         return this.x * param1.x + this.y * param1.y + this.§521423155722315585123423632234§ * param1.§521423155722315585123423632234§;
      }
      
      public function §521423163742316387123423632234§(param1:§do function else§, param2:§do function else§) : §do function else§
      {
         this.x = param1.y * param2.§521423155722315585123423632234§ - param1.§521423155722315585123423632234§ * param2.y;
         this.y = param1.§521423155722315585123423632234§ * param2.x - param1.x * param2.§521423155722315585123423632234§;
         this.§521423155722315585123423632234§ = param1.x * param2.y - param1.y * param2.x;
         return this;
      }
      
      public function §521423188292318842123423632234§(param1:§do function else§) : §do function else§
      {
         this.x = param1.x;
         this.y = param1.y;
         this.§521423155722315585123423632234§ = param1.§521423155722315585123423632234§;
         return this;
      }
      
      public function §521423102392310252123423632234§() : Boolean
      {
         var _loc1_:Function = isFinite;
         return _loc1_(this.x) && isFinite(this.y) && _loc1_(this.§521423155722315585123423632234§);
      }
      
      public function §false set implements§(param1:§do function else§) : §do function else§
      {
         var _loc2_:Number = this.y * param1.§521423155722315585123423632234§ - this.§521423155722315585123423632234§ * param1.y;
         var _loc3_:Number = this.§521423155722315585123423632234§ * param1.x - this.x * param1.§521423155722315585123423632234§;
         var _loc4_:Number = this.x * param1.y - this.y * param1.x;
         this.x = _loc2_;
         this.y = _loc3_;
         this.§521423155722315585123423632234§ = _loc4_;
         return this;
      }
      
      public function §5214231786231799123423632234§(param1:§do function else§) : Number
      {
         var _loc2_:Number = this.x - param1.x;
         var _loc3_:Number = this.y - param1.y;
         var _loc4_:Number = this.§521423155722315585123423632234§ - param1.§521423155722315585123423632234§;
         return Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_ + _loc4_ * _loc4_);
      }
      
      public function §521423135952313608123423632234§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y + this.§521423155722315585123423632234§ * this.§521423155722315585123423632234§);
      }
      
      public function §5214231576231589123423632234§(param1:§do function else§) : §do function else§
      {
         this.x += param1.x;
         this.y += param1.y;
         this.§521423155722315585123423632234§ += param1.§521423155722315585123423632234§;
         return this;
      }
      
      public function §5214239510239523123423632234§(param1:§do function else§, param2:Number) : void
      {
         var _loc3_:Number = this.x * param1.x + this.y * param1.y + this.§521423155722315585123423632234§ * param1.§521423155722315585123423632234§;
         var _loc4_:Number = param2 - _loc3_;
         this.x += _loc4_ * param1.x;
         this.y += _loc4_ * param1.y;
         this.§521423155722315585123423632234§ += _loc4_ * param1.§521423155722315585123423632234§;
      }
      
      public function §each use default§(param1:§do function else§) : Number
      {
         var _loc2_:Number = this.x - param1.x;
         var _loc3_:Number = this.y - param1.y;
         return _loc2_ * _loc2_ + _loc3_ * _loc3_;
      }
      
      public function §521423128812312894123423632234§(param1:Number) : §do function else§
      {
         this.x *= param1;
         this.y *= param1;
         this.§521423155722315585123423632234§ *= param1;
         return this;
      }
      
      public function §5214231820231833123423632234§(param1:§do function else§) : void
      {
         var _loc2_:Number = this.x * param1.x + this.y * param1.y + this.§521423155722315585123423632234§ * param1.§521423155722315585123423632234§;
         this.x -= _loc2_ * param1.x;
         this.y -= _loc2_ * param1.y;
         this.§521423155722315585123423632234§ -= _loc2_ * param1.§521423155722315585123423632234§;
      }
      
      public function toString() : String
      {
         return getQualifiedClassName(this) + " (" + this.x.toFixed(5) + ", " + this.y.toFixed(5) + ", " + this.§521423155722315585123423632234§.toFixed(5) + ")";
      }
      
      public function §var super if§(param1:§521423136762313689123423632234§) : §do function else§
      {
         var _loc2_:Number = this.x;
         var _loc3_:Number = this.y;
         var _loc4_:Number = this.§521423155722315585123423632234§;
         this.x = param1.§5214232125232138123423632234§ * _loc2_ + param1.§default catch super§ * _loc3_ + param1.§return finally else§ * _loc4_;
         this.y = param1.§finally use true§ * _loc2_ + param1.§set catch implements§ * _loc3_ + param1.§521423190732319086123423632234§ * _loc4_;
         this.§521423155722315585123423632234§ = param1.§521423122302312243123423632234§ * _loc2_ + param1.§final else§ * _loc3_ + param1.§5214237445237458123423632234§ * _loc4_;
         return this;
      }
      
      public function §static while break§(param1:§do function else§, param2:§final var else§) : void
      {
         var _loc3_:§do function else§ = this.clone().§false set implements§(param1).§class while dynamic§();
         var _loc4_:Number = Math.acos(this.clone().§class while dynamic§().§true for each§(param1.clone().§class while dynamic§()));
         param2.§break var extends§(_loc3_,_loc4_);
      }
      
      public function §5214231855231868123423632234§(param1:§do function else§) : §do function else§
      {
         this.x -= param1.x;
         this.y -= param1.y;
         this.§521423155722315585123423632234§ -= param1.§521423155722315585123423632234§;
         return this;
      }
      
      public function §5214231854231867123423632234§(param1:§do function else§) : §final var else§
      {
         var _loc2_:§final var else§ = new §final var else§();
         this.§static while break§(param1,_loc2_);
         return _loc2_;
      }
      
      public function §break use in§(param1:Number) : §do function else§
      {
         var _loc3_:Number = NaN;
         var _loc2_:Number = this.x * this.x + this.y * this.y + this.§521423155722315585123423632234§ * this.§521423155722315585123423632234§;
         if(_loc2_ == 0)
         {
            this.x = param1;
         }
         else
         {
            _loc3_ = param1 / Math.sqrt(this.x * this.x + this.y * this.y + this.§521423155722315585123423632234§ * this.§521423155722315585123423632234§);
            this.x *= _loc3_;
            this.y *= _loc3_;
            this.§521423155722315585123423632234§ *= _loc3_;
         }
         return this;
      }
      
      public function §for catch true§(param1:Vector3D) : §do function else§
      {
         this.x = param1.x;
         this.y = param1.y;
         this.§521423155722315585123423632234§ = param1.z;
         return this;
      }
      
      public function §catch package if§(param1:§521423166662316679123423632234§) : §do function else§
      {
         var _loc2_:Number = this.x;
         var _loc3_:Number = this.y;
         var _loc4_:Number = this.§521423155722315585123423632234§;
         this.x = param1.§5214232125232138123423632234§ * _loc2_ + param1.§finally use true§ * _loc3_ + param1.§521423122302312243123423632234§ * _loc4_;
         this.y = param1.§default catch super§ * _loc2_ + param1.§set catch implements§ * _loc3_ + param1.§final else§ * _loc4_;
         this.§521423155722315585123423632234§ = param1.§return finally else§ * _loc2_ + param1.§521423190732319086123423632234§ * _loc3_ + param1.§5214237445237458123423632234§ * _loc4_;
         return this;
      }
      
      public function §521423159972316010123423632234§(param1:§521423166662316679123423632234§) : §do function else§
      {
         var _loc2_:Number = this.x - param1.§5214233909233922123423632234§;
         var _loc3_:Number = this.y - param1.§while while return§;
         var _loc4_:Number = this.§521423155722315585123423632234§ - param1.§dynamic finally false§;
         this.x = param1.§5214232125232138123423632234§ * _loc2_ + param1.§default catch super§ * _loc3_ + param1.§return finally else§ * _loc4_;
         this.y = param1.§finally use true§ * _loc2_ + param1.§set catch implements§ * _loc3_ + param1.§521423190732319086123423632234§ * _loc4_;
         this.§521423155722315585123423632234§ = param1.§521423122302312243123423632234§ * _loc2_ + param1.§final else§ * _loc3_ + param1.§5214237445237458123423632234§ * _loc4_;
         return this;
      }
      
      public function clone() : §do function else§
      {
         return new §do function else§(this.x,this.y,this.§521423155722315585123423632234§);
      }
      
      public function §521423193012319314123423632234§() : Number
      {
         return this.x * this.x + this.y * this.y + this.§521423155722315585123423632234§ * this.§521423155722315585123423632234§;
      }
      
      public function §true switch override§(param1:§521423136762313689123423632234§) : §do function else§
      {
         var _loc2_:Number = this.x;
         var _loc3_:Number = this.y;
         var _loc4_:Number = this.§521423155722315585123423632234§;
         this.x = param1.§5214232125232138123423632234§ * _loc2_ + param1.§finally use true§ * _loc3_ + param1.§521423122302312243123423632234§ * _loc4_;
         this.y = param1.§default catch super§ * _loc2_ + param1.§set catch implements§ * _loc3_ + param1.§final else§ * _loc4_;
         this.§521423155722315585123423632234§ = param1.§return finally else§ * _loc2_ + param1.§521423190732319086123423632234§ * _loc3_ + param1.§5214237445237458123423632234§ * _loc4_;
         return this;
      }
      
      public function §get switch set§(param1:§do function else§, param2:§do function else§) : §do function else§
      {
         this.x = param1.x + param2.x;
         this.y = param1.y + param2.y;
         this.§521423155722315585123423632234§ = param1.§521423155722315585123423632234§ + param2.§521423155722315585123423632234§;
         return this;
      }
      
      public function §5214232872232885123423632234§(param1:§521423166662316679123423632234§) : §do function else§
      {
         var _loc2_:Number = this.x;
         var _loc3_:Number = this.y;
         var _loc4_:Number = this.§521423155722315585123423632234§;
         this.x = param1.§5214232125232138123423632234§ * _loc2_ + param1.§finally use true§ * _loc3_ + param1.§521423122302312243123423632234§ * _loc4_;
         this.y = param1.§default catch super§ * _loc2_ + param1.§set catch implements§ * _loc3_ + param1.§final else§ * _loc4_;
         this.§521423155722315585123423632234§ = param1.§return finally else§ * _loc2_ + param1.§521423190732319086123423632234§ * _loc3_ + param1.§5214237445237458123423632234§ * _loc4_;
         return this;
      }
      
      public function §for var while§(param1:§do function else§) : Number
      {
         var _loc2_:Number = this.x - param1.x;
         var _loc3_:Number = this.y - param1.y;
         var _loc4_:Number = this.§521423155722315585123423632234§ - param1.§521423155722315585123423632234§;
         return _loc2_ * _loc2_ + _loc3_ * _loc3_ + _loc4_ * _loc4_;
      }
      
      public function §521423147372314750123423632234§(param1:§521423166662316679123423632234§) : §do function else§
      {
         var _loc2_:Number = this.x;
         var _loc3_:Number = this.y;
         var _loc4_:Number = this.§521423155722315585123423632234§;
         this.x = param1.§5214232125232138123423632234§ * _loc2_ + param1.§finally use true§ * _loc3_ + param1.§521423122302312243123423632234§ * _loc4_ + param1.§5214233909233922123423632234§;
         this.y = param1.§default catch super§ * _loc2_ + param1.§set catch implements§ * _loc3_ + param1.§final else§ * _loc4_ + param1.§while while return§;
         this.§521423155722315585123423632234§ = param1.§return finally else§ * _loc2_ + param1.§521423190732319086123423632234§ * _loc3_ + param1.§5214237445237458123423632234§ * _loc4_ + param1.§dynamic finally false§;
         return this;
      }
      
      public function §5214238739238752123423632234§(param1:Number, param2:§do function else§) : §do function else§
      {
         this.x += param1 * param2.x;
         this.y += param1 * param2.y;
         this.§521423155722315585123423632234§ += param1 * param2.§521423155722315585123423632234§;
         return this;
      }
      
      public function §521423111892311202123423632234§(param1:§do function else§) : Number
      {
         var _loc2_:Number = this.x - param1.x;
         var _loc3_:Number = this.y - param1.y;
         return Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
      }
      
      public function §class while dynamic§() : §do function else§
      {
         var _loc1_:Number = this.x * this.x + this.y * this.y + this.§521423155722315585123423632234§ * this.§521423155722315585123423632234§;
         if(_loc1_ == 0)
         {
            this.x = 1;
         }
         else
         {
            _loc1_ = Math.sqrt(_loc1_);
            this.x /= _loc1_;
            this.y /= _loc1_;
            this.§521423155722315585123423632234§ /= _loc1_;
         }
         return this;
      }
      
      public function §try while switch§() : §class set implements§
      {
         return new §class set implements§(this.x,this.y,this.§521423155722315585123423632234§);
      }
      
      public function §5214237067237080123423632234§(param1:Number, param2:§do function else§, param3:§do function else§) : void
      {
         this.x = param2.x + param1 * (param3.x - param2.x);
         this.y = param2.y + param1 * (param3.y - param2.y);
         this.§521423155722315585123423632234§ = param2.§521423155722315585123423632234§ + param1 * (param3.§521423155722315585123423632234§ - param2.§521423155722315585123423632234§);
      }
      
      public function §final for true§(param1:Vector3D) : Vector3D
      {
         param1.x = this.x;
         param1.y = this.y;
         param1.z = this.§521423155722315585123423632234§;
         return param1;
      }
   }
}

