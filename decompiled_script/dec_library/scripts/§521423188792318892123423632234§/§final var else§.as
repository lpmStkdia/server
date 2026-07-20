package §521423188792318892123423632234§
{
   import flash.geom.Vector3D;
   
   public class §final var else§
   {
      
      private static const §52142316423177123423632234§:§final var else§ = new §final var else§();
      
      public var §521423101952310208123423632234§:Number;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §521423155722315585123423632234§:Number;
      
      public function §final var else§(param1:Number = 1, param2:Number = 0, param3:Number = 0, param4:Number = 0)
      {
         super();
         this.§521423101952310208123423632234§ = param1;
         this.x = param2;
         this.y = param3;
         this.§521423155722315585123423632234§ = param4;
      }
      
      public static function §521423103972310410123423632234§(param1:§do function else§, param2:Number) : §final var else§
      {
         var _loc3_:§final var else§ = new §final var else§();
         _loc3_.§break var extends§(param1,param2);
         return _loc3_;
      }
      
      public static function §5214239247239260123423632234§(param1:§final var else§, param2:§final var else§, param3:§final var else§) : void
      {
         param3.§521423101952310208123423632234§ = param1.§521423101952310208123423632234§ * param2.§521423101952310208123423632234§ - param1.x * param2.x - param1.y * param2.y - param1.§521423155722315585123423632234§ * param2.§521423155722315585123423632234§;
         param3.x = param1.§521423101952310208123423632234§ * param2.x + param1.x * param2.§521423101952310208123423632234§ + param1.y * param2.§521423155722315585123423632234§ - param1.§521423155722315585123423632234§ * param2.y;
         param3.y = param1.§521423101952310208123423632234§ * param2.y + param1.y * param2.§521423101952310208123423632234§ + param1.§521423155722315585123423632234§ * param2.x - param1.x * param2.§521423155722315585123423632234§;
         param3.§521423155722315585123423632234§ = param1.§521423101952310208123423632234§ * param2.§521423155722315585123423632234§ + param1.§521423155722315585123423632234§ * param2.§521423101952310208123423632234§ + param1.x * param2.y - param1.y * param2.x;
      }
      
      public static function §5214231484231497123423632234§(param1:Number, param2:Number, param3:Number, param4:Number) : §final var else§
      {
         var _loc5_:§final var else§ = new §final var else§();
         _loc5_.§521423116332311646123423632234§(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public function §if set null§(param1:§do function else§, param2:Number) : §final var else§
      {
         var _loc7_:Number = param1.x * param2;
         var _loc8_:Number = param1.y * param2;
         var _loc9_:Number = param1.§521423155722315585123423632234§ * param2;
         var _loc3_:Number = -this.x * _loc7_ - this.y * _loc8_ - this.§521423155722315585123423632234§ * _loc9_;
         var _loc4_:Number = _loc7_ * this.§521423101952310208123423632234§ + _loc8_ * this.§521423155722315585123423632234§ - _loc9_ * this.y;
         var _loc5_:Number = _loc8_ * this.§521423101952310208123423632234§ + _loc9_ * this.x - _loc7_ * this.§521423155722315585123423632234§;
         var _loc6_:Number = _loc9_ * this.§521423101952310208123423632234§ + _loc7_ * this.y - _loc8_ * this.x;
         this.§521423101952310208123423632234§ += 0.5 * _loc3_;
         this.x += 0.5 * _loc4_;
         this.y += 0.5 * _loc5_;
         this.§521423155722315585123423632234§ += 0.5 * _loc6_;
         var _loc10_:Number = this.§521423101952310208123423632234§ * this.§521423101952310208123423632234§ + this.x * this.x + this.y * this.y + this.§521423155722315585123423632234§ * this.§521423155722315585123423632234§;
         if(_loc10_ == 0)
         {
            this.§521423101952310208123423632234§ = 1;
         }
         else
         {
            _loc10_ = 1 / Math.sqrt(_loc10_);
            this.§521423101952310208123423632234§ *= _loc10_;
            this.x *= _loc10_;
            this.y *= _loc10_;
            this.§521423155722315585123423632234§ *= _loc10_;
         }
         return this;
      }
      
      public function §5214233158233171123423632234§(param1:§do function else§) : §do function else§
      {
         var _loc5_:Number = 2 * this.x * this.x;
         var _loc6_:Number = 2 * this.§521423155722315585123423632234§ * this.§521423155722315585123423632234§;
         var _loc2_:Number = 2 * this.x * this.y;
         var _loc3_:Number = 2 * this.y * this.§521423155722315585123423632234§;
         var _loc4_:Number = 2 * this.§521423101952310208123423632234§ * this.x;
         var _loc7_:Number = 2 * this.§521423101952310208123423632234§ * this.§521423155722315585123423632234§;
         param1.x = _loc2_ - _loc7_;
         param1.y = 1 - _loc5_ - _loc6_;
         param1.§521423155722315585123423632234§ = _loc3_ + _loc4_;
         return param1;
      }
      
      public function §5214231855231868123423632234§(param1:§final var else§) : §final var else§
      {
         this.§521423101952310208123423632234§ -= param1.§521423101952310208123423632234§;
         this.x -= param1.x;
         this.y -= param1.y;
         this.§521423155722315585123423632234§ -= param1.§521423155722315585123423632234§;
         return this;
      }
      
      public function §521423135952313608123423632234§() : Number
      {
         return Math.sqrt(this.§521423101952310208123423632234§ * this.§521423101952310208123423632234§ + this.x * this.x + this.y * this.y + this.§521423155722315585123423632234§ * this.§521423155722315585123423632234§);
      }
      
      public function §521423116332311646123423632234§(param1:Number, param2:Number, param3:Number, param4:Number) : §final var else§
      {
         this.§521423101952310208123423632234§ = Math.cos(0.5 * param4);
         var _loc5_:Number = Math.sin(0.5 * param4) / Math.sqrt(param1 * param1 + param2 * param2 + param3 * param3);
         this.x = param1 * _loc5_;
         this.y = param2 * _loc5_;
         this.§521423155722315585123423632234§ = param3 * _loc5_;
         return this;
      }
      
      public function §break var extends§(param1:§do function else§, param2:Number) : §final var else§
      {
         this.§521423101952310208123423632234§ = Math.cos(0.5 * param2);
         var _loc3_:Number = Math.sin(0.5 * param2) / Math.sqrt(param1.x * param1.x + param1.y * param1.y + param1.§521423155722315585123423632234§ * param1.§521423155722315585123423632234§);
         this.x = param1.x * _loc3_;
         this.y = param1.y * _loc3_;
         this.§521423155722315585123423632234§ = param1.§521423155722315585123423632234§ * _loc3_;
         return this;
      }
      
      public function §5214238971238984123423632234§(param1:§final var else§) : §final var else§
      {
         var _loc2_:Number = param1.§521423101952310208123423632234§ * this.§521423101952310208123423632234§ - param1.x * this.x - param1.y * this.y - param1.§521423155722315585123423632234§ * this.§521423155722315585123423632234§;
         var _loc3_:Number = param1.§521423101952310208123423632234§ * this.x + param1.x * this.§521423101952310208123423632234§ + param1.y * this.§521423155722315585123423632234§ - param1.§521423155722315585123423632234§ * this.y;
         var _loc4_:Number = param1.§521423101952310208123423632234§ * this.y + param1.y * this.§521423101952310208123423632234§ + param1.§521423155722315585123423632234§ * this.x - param1.x * this.§521423155722315585123423632234§;
         var _loc5_:Number = param1.§521423101952310208123423632234§ * this.§521423155722315585123423632234§ + param1.§521423155722315585123423632234§ * this.§521423101952310208123423632234§ + param1.x * this.y - param1.y * this.x;
         this.§521423101952310208123423632234§ = _loc2_;
         this.x = _loc3_;
         this.y = _loc4_;
         this.§521423155722315585123423632234§ = _loc5_;
         return this;
      }
      
      public function §521423168382316851123423632234§() : Boolean
      {
         var _loc1_:Function = isFinite;
         return _loc1_(this.§521423101952310208123423632234§) && _loc1_(this.x) && _loc1_(this.y) && _loc1_(this.§521423155722315585123423632234§);
      }
      
      public function §dynamic const set§(param1:§do function else§) : §final var else§
      {
         var _loc2_:Number = -param1.x * this.x - param1.y * this.y - param1.§521423155722315585123423632234§ * this.§521423155722315585123423632234§;
         var _loc3_:Number = param1.x * this.§521423101952310208123423632234§ + param1.y * this.§521423155722315585123423632234§ - param1.§521423155722315585123423632234§ * this.y;
         var _loc4_:Number = param1.y * this.§521423101952310208123423632234§ + param1.§521423155722315585123423632234§ * this.x - param1.x * this.§521423155722315585123423632234§;
         var _loc5_:Number = param1.§521423155722315585123423632234§ * this.§521423101952310208123423632234§ + param1.x * this.y - param1.y * this.x;
         this.§521423101952310208123423632234§ = _loc2_;
         this.x = _loc3_;
         this.y = _loc4_;
         this.§521423155722315585123423632234§ = _loc5_;
         return this;
      }
      
      public function §521423122932312306123423632234§(param1:§final var else§, param2:§final var else§, param3:Number) : §final var else§
      {
         var _loc4_:Number = 1 - param3;
         this.§521423101952310208123423632234§ = param1.§521423101952310208123423632234§ * _loc4_ + param2.§521423101952310208123423632234§ * param3;
         this.x = param1.x * _loc4_ + param2.x * param3;
         this.y = param1.y * _loc4_ + param2.y * param3;
         this.§521423155722315585123423632234§ = param1.§521423155722315585123423632234§ * _loc4_ + param2.§521423155722315585123423632234§ * param3;
         _loc4_ = this.§521423101952310208123423632234§ * this.§521423101952310208123423632234§ + this.x * this.x + this.y * this.y + this.§521423155722315585123423632234§ * this.§521423155722315585123423632234§;
         if(_loc4_ == 0)
         {
            this.§521423101952310208123423632234§ = 1;
         }
         else
         {
            _loc4_ = 1 / Math.sqrt(_loc4_);
            this.§521423101952310208123423632234§ *= _loc4_;
            this.x *= _loc4_;
            this.y *= _loc4_;
            this.§521423155722315585123423632234§ *= _loc4_;
         }
         return this;
      }
      
      public function §try for get§(param1:§521423166662316679123423632234§) : §final var else§
      {
         var _loc6_:Number = 2 * this.x * this.x;
         var _loc7_:Number = 2 * this.y * this.y;
         var _loc8_:Number = 2 * this.§521423155722315585123423632234§ * this.§521423155722315585123423632234§;
         var _loc2_:Number = 2 * this.x * this.y;
         var _loc3_:Number = 2 * this.y * this.§521423155722315585123423632234§;
         var _loc9_:Number = 2 * this.§521423155722315585123423632234§ * this.x;
         var _loc4_:Number = 2 * this.§521423101952310208123423632234§ * this.x;
         var _loc5_:Number = 2 * this.§521423101952310208123423632234§ * this.y;
         var _loc10_:Number = 2 * this.§521423101952310208123423632234§ * this.§521423155722315585123423632234§;
         param1.§5214232125232138123423632234§ = 1 - _loc7_ - _loc8_;
         param1.§finally use true§ = _loc2_ - _loc10_;
         param1.§521423122302312243123423632234§ = _loc9_ + _loc5_;
         param1.§default catch super§ = _loc2_ + _loc10_;
         param1.§set catch implements§ = 1 - _loc6_ - _loc8_;
         param1.§final else§ = _loc3_ - _loc4_;
         param1.§return finally else§ = _loc9_ - _loc5_;
         param1.§521423190732319086123423632234§ = _loc3_ + _loc4_;
         param1.§5214237445237458123423632234§ = 1 - _loc6_ - _loc7_;
         return this;
      }
      
      public function §521423193012319314123423632234§() : Number
      {
         return this.§521423101952310208123423632234§ * this.§521423101952310208123423632234§ + this.x * this.x + this.y * this.y + this.§521423155722315585123423632234§ * this.§521423155722315585123423632234§;
      }
      
      public function §5214234761234774123423632234§() : void
      {
         this.x = -this.x;
         this.y = -this.y;
         this.§521423155722315585123423632234§ = -this.§521423155722315585123423632234§;
      }
      
      public function §5214237940237953123423632234§(param1:§do function else§) : §do function else§
      {
         var _loc5_:Number = 2 * this.x * this.x;
         var _loc6_:Number = 2 * this.y * this.y;
         var _loc2_:Number = 2 * this.y * this.§521423155722315585123423632234§;
         var _loc7_:Number = 2 * this.§521423155722315585123423632234§ * this.x;
         var _loc3_:Number = 2 * this.§521423101952310208123423632234§ * this.x;
         var _loc4_:Number = 2 * this.§521423101952310208123423632234§ * this.y;
         param1.x = _loc7_ + _loc4_;
         param1.y = _loc2_ - _loc3_;
         param1.§521423155722315585123423632234§ = 1 - _loc5_ - _loc6_;
         return param1;
      }
      
      public function §var const var§(param1:Number, param2:Number, param3:Number) : void
      {
         this.§521423116332311646123423632234§(1,0,0,param1);
         §52142316423177123423632234§.§521423116332311646123423632234§(0,1,0,param2);
         this.§5214238971238984123423632234§(§52142316423177123423632234§);
         this.§class while dynamic§();
         §52142316423177123423632234§.§521423116332311646123423632234§(0,0,1,param3);
         this.§5214238971238984123423632234§(§52142316423177123423632234§);
         this.§class while dynamic§();
      }
      
      public function §521423188292318842123423632234§(param1:§final var else§) : §final var else§
      {
         this.§521423101952310208123423632234§ = param1.§521423101952310208123423632234§;
         this.x = param1.x;
         this.y = param1.y;
         this.§521423155722315585123423632234§ = param1.§521423155722315585123423632234§;
         return this;
      }
      
      public function §521423138712313884123423632234§(param1:§521423136762313689123423632234§) : §final var else§
      {
         var _loc6_:Number = 2 * this.x * this.x;
         var _loc7_:Number = 2 * this.y * this.y;
         var _loc8_:Number = 2 * this.§521423155722315585123423632234§ * this.§521423155722315585123423632234§;
         var _loc2_:Number = 2 * this.x * this.y;
         var _loc3_:Number = 2 * this.y * this.§521423155722315585123423632234§;
         var _loc9_:Number = 2 * this.§521423155722315585123423632234§ * this.x;
         var _loc4_:Number = 2 * this.§521423101952310208123423632234§ * this.x;
         var _loc5_:Number = 2 * this.§521423101952310208123423632234§ * this.y;
         var _loc10_:Number = 2 * this.§521423101952310208123423632234§ * this.§521423155722315585123423632234§;
         param1.§5214232125232138123423632234§ = 1 - _loc7_ - _loc8_;
         param1.§finally use true§ = _loc2_ - _loc10_;
         param1.§521423122302312243123423632234§ = _loc9_ + _loc5_;
         param1.§default catch super§ = _loc2_ + _loc10_;
         param1.§set catch implements§ = 1 - _loc6_ - _loc8_;
         param1.§final else§ = _loc3_ - _loc4_;
         param1.§return finally else§ = _loc9_ - _loc5_;
         param1.§521423190732319086123423632234§ = _loc3_ + _loc4_;
         param1.§5214237445237458123423632234§ = 1 - _loc6_ - _loc7_;
         return this;
      }
      
      public function §521423186052318618123423632234§(param1:§do function else§) : §do function else§
      {
         var _loc17_:Number = 2 * this.x * this.x;
         var _loc15_:Number = 2 * this.y * this.y;
         var _loc16_:Number = 2 * this.§521423155722315585123423632234§ * this.§521423155722315585123423632234§;
         var _loc13_:Number = 2 * this.x * this.y;
         var _loc14_:Number = 2 * this.y * this.§521423155722315585123423632234§;
         var _loc12_:Number = 2 * this.§521423155722315585123423632234§ * this.x;
         var _loc10_:Number = 2 * this.§521423101952310208123423632234§ * this.x;
         var _loc9_:Number = 2 * this.§521423101952310208123423632234§ * this.y;
         var _loc11_:Number = 2 * this.§521423101952310208123423632234§ * this.§521423155722315585123423632234§;
         var _loc2_:Number = 1 - _loc15_ - _loc16_;
         var _loc3_:Number = _loc13_ - _loc11_;
         var _loc4_:Number = _loc13_ + _loc11_;
         var _loc5_:Number = 1 - _loc17_ - _loc16_;
         var _loc6_:Number = _loc12_ - _loc9_;
         var _loc7_:Number = _loc14_ + _loc10_;
         var _loc8_:Number = 1 - _loc17_ - _loc15_;
         if(-1 < _loc6_ && _loc6_ < 1)
         {
            if(param1 == null)
            {
               param1 = new §do function else§(Math.atan2(_loc7_,_loc8_),-Math.asin(_loc6_),Math.atan2(_loc4_,_loc2_));
            }
            else
            {
               param1.x = Math.atan2(_loc7_,_loc8_);
               param1.y = -Math.asin(_loc6_);
               param1.§521423155722315585123423632234§ = Math.atan2(_loc4_,_loc2_);
            }
         }
         else if(param1 == null)
         {
            param1 = new §do function else§(0,0.5 * (_loc6_ <= -1 ? 3.141592653589793 : -3.141592653589793),Math.atan2(-_loc3_,_loc5_));
         }
         else
         {
            param1.x = 0;
            param1.y = _loc6_ <= -1 ? 3.141592653589793 : -3.141592653589793;
            param1.y *= 0.5;
            param1.§521423155722315585123423632234§ = Math.atan2(-_loc3_,_loc5_);
         }
         return param1;
      }
      
      public function §521423189452318958123423632234§(param1:§final var else§, param2:§final var else§, param3:Number) : §final var else§
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc9_:Number = 1;
         var _loc7_:Number = param1.§521423101952310208123423632234§ * param2.§521423101952310208123423632234§ + param1.x * param2.x + param1.y * param2.y + param1.§521423155722315585123423632234§ * param2.§521423155722315585123423632234§;
         if(_loc7_ < 0)
         {
            _loc7_ = -_loc7_;
            _loc9_ = -1;
         }
         if(1 - _loc7_ < 0.001)
         {
            _loc4_ = 1 - param3;
            _loc5_ = param3 * _loc9_;
            this.§521423101952310208123423632234§ = param1.§521423101952310208123423632234§ * _loc4_ + param2.§521423101952310208123423632234§ * _loc5_;
            this.x = param1.x * _loc4_ + param2.x * _loc5_;
            this.y = param1.y * _loc4_ + param2.y * _loc5_;
            this.§521423155722315585123423632234§ = param1.§521423155722315585123423632234§ * _loc4_ + param2.§521423155722315585123423632234§ * _loc5_;
            this.§class while dynamic§();
         }
         else
         {
            _loc10_ = Math.acos(_loc7_);
            _loc8_ = Math.sin(_loc10_);
            _loc11_ = Math.sin((1 - param3) * _loc10_) / _loc8_;
            _loc6_ = Math.sin(param3 * _loc10_) / _loc8_ * _loc9_;
            this.§521423101952310208123423632234§ = param1.§521423101952310208123423632234§ * _loc11_ + param2.§521423101952310208123423632234§ * _loc6_;
            this.x = param1.x * _loc11_ + param2.x * _loc6_;
            this.y = param1.y * _loc11_ + param2.y * _loc6_;
            this.§521423155722315585123423632234§ = param1.§521423155722315585123423632234§ * _loc11_ + param2.§521423155722315585123423632234§ * _loc6_;
         }
         return this;
      }
      
      public function §case const get§(param1:Number = 1, param2:Number = 0, param3:Number = 0, param4:Number = 0) : §final var else§
      {
         this.§521423101952310208123423632234§ = param1;
         this.x = param2;
         this.y = param3;
         this.§521423155722315585123423632234§ = param4;
         return this;
      }
      
      public function §case use false§(param1:§do function else§) : void
      {
         this.§var const var§(param1.x,param1.y,param1.§521423155722315585123423632234§);
      }
      
      public function §final for true§(param1:Vector3D) : Vector3D
      {
         param1.x = this.x;
         param1.y = this.y;
         param1.z = this.§521423155722315585123423632234§;
         param1.w = this.§521423101952310208123423632234§;
         return param1;
      }
      
      public function §class while dynamic§() : §final var else§
      {
         var _loc1_:Number = this.§521423101952310208123423632234§ * this.§521423101952310208123423632234§ + this.x * this.x + this.y * this.y + this.§521423155722315585123423632234§ * this.§521423155722315585123423632234§;
         if(_loc1_ == 0)
         {
            this.§521423101952310208123423632234§ = 1;
         }
         else
         {
            _loc1_ = 1 / Math.sqrt(_loc1_);
            this.§521423101952310208123423632234§ *= _loc1_;
            this.x *= _loc1_;
            this.y *= _loc1_;
            this.§521423155722315585123423632234§ *= _loc1_;
         }
         return this;
      }
      
      public function §include set set§(param1:§final var else§, param2:§final var else§) : §final var else§
      {
         this.§521423101952310208123423632234§ = param2.§521423101952310208123423632234§ - param1.§521423101952310208123423632234§;
         this.x = param2.x - param1.x;
         this.y = param2.y - param1.y;
         this.§521423155722315585123423632234§ = param2.§521423155722315585123423632234§ - param1.§521423155722315585123423632234§;
         return this;
      }
      
      public function §5214231325231338123423632234§(param1:§do function else§ = null) : §do function else§
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§521423101952310208123423632234§ < -1 || this.§521423101952310208123423632234§ > 1)
         {
            this.§class while dynamic§();
         }
         if(param1 == null)
         {
            param1 = new §do function else§();
         }
         if(this.§521423101952310208123423632234§ > -1 && this.§521423101952310208123423632234§ < 1)
         {
            if(this.§521423101952310208123423632234§ == 0)
            {
               param1.x = this.x;
               param1.y = this.y;
               param1.§521423155722315585123423632234§ = this.§521423155722315585123423632234§;
            }
            else
            {
               _loc2_ = 2 * Math.acos(this.§521423101952310208123423632234§);
               _loc3_ = 1 / Math.sqrt(1 - this.§521423101952310208123423632234§ * this.§521423101952310208123423632234§);
               param1.x = this.x * _loc3_ * _loc2_;
               param1.y = this.y * _loc3_ * _loc2_;
               param1.§521423155722315585123423632234§ = this.§521423155722315585123423632234§ * _loc3_ * _loc2_;
            }
         }
         else
         {
            param1.x = 0;
            param1.y = 0;
            param1.§521423155722315585123423632234§ = 0;
         }
         return param1;
      }
      
      public function §final default§(param1:§final var else§) : §final var else§
      {
         var _loc2_:Number = this.§521423101952310208123423632234§ * param1.§521423101952310208123423632234§ - this.x * param1.x - this.y * param1.y - this.§521423155722315585123423632234§ * param1.§521423155722315585123423632234§;
         var _loc3_:Number = this.§521423101952310208123423632234§ * param1.x + this.x * param1.§521423101952310208123423632234§ + this.y * param1.§521423155722315585123423632234§ - this.§521423155722315585123423632234§ * param1.y;
         var _loc4_:Number = this.§521423101952310208123423632234§ * param1.y + this.y * param1.§521423101952310208123423632234§ + this.§521423155722315585123423632234§ * param1.x - this.x * param1.§521423155722315585123423632234§;
         var _loc5_:Number = this.§521423101952310208123423632234§ * param1.§521423155722315585123423632234§ + this.§521423155722315585123423632234§ * param1.§521423101952310208123423632234§ + this.x * param1.y - this.y * param1.x;
         this.§521423101952310208123423632234§ = _loc2_;
         this.x = _loc3_;
         this.y = _loc4_;
         this.§521423155722315585123423632234§ = _loc5_;
         return this;
      }
      
      public function clone() : §final var else§
      {
         return new §final var else§(this.§521423101952310208123423632234§,this.x,this.y,this.§521423155722315585123423632234§);
      }
   }
}

