package alternativa.physics.collision.colliders
{
   import §521423122282312241123423632234§.§final while do§;
   import §5214231886231899123423632234§.§5214231214231227123423632234§;
   import §5214231886231899123423632234§.§521423132822313295123423632234§;
   import §521423188792318892123423632234§.§521423166662316679123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import §super return§.§5214232134232147123423632234§;
   import §super return§.§dynamic function continue§;
   
   public class BoxRectCollider implements §521423132822313295123423632234§
   {
      
      private static const §break package if§:Vector.<Vertex> = new <Vertex>[new Vertex(),new Vertex(),new Vertex(),new Vertex()];
      
      private static const §include const use§:Vector.<Vertex> = new <Vertex>[new Vertex(),new Vertex(),new Vertex(),new Vertex()];
      
      private static const §521423132832313296123423632234§:§521423166662316679123423632234§ = new §521423166662316679123423632234§();
      
      private const §521423147212314734123423632234§:§do function else§ = new §do function else§();
      
      private const §class var default§:§do function else§ = new §do function else§();
      
      private const §5214232549232562123423632234§:§do function else§ = new §do function else§();
      
      private const §override while use§:§do function else§ = new §do function else§();
      
      private const §break while case§:§do function else§ = new §do function else§();
      
      private const §return package case§:§do function else§ = new §do function else§();
      
      private const §finally use in§:§do function else§ = new §do function else§();
      
      private const §class finally return§:§do function else§ = new §do function else§();
      
      private const §521423119062311919123423632234§:§do function else§ = new §do function else§();
      
      private var §52142322923242123423632234§:Number;
      
      private var §in use native§:Number;
      
      public function BoxRectCollider(param1:Number)
      {
         super();
         this.§in use native§ = param1;
      }
      
      final private function getOverlapOnAxis(param1:§dynamic function continue§, param2:§5214232134232147123423632234§, param3:§do function else§, param4:§do function else§) : Number
      {
         var _loc7_:§521423166662316679123423632234§ = param1.§521423126962312709123423632234§;
         var _loc5_:Number = (_loc7_.§5214232125232138123423632234§ * param3.x + _loc7_.§default catch super§ * param3.y + _loc7_.§return finally else§ * param3.§521423155722315585123423632234§) * param1.§5214234336234349123423632234§.x;
         if(_loc5_ < 0)
         {
            _loc5_ = -_loc5_;
         }
         var _loc6_:Number = _loc5_;
         _loc5_ = (_loc7_.§finally use true§ * param3.x + _loc7_.§set catch implements§ * param3.y + _loc7_.§521423190732319086123423632234§ * param3.§521423155722315585123423632234§) * param1.§5214234336234349123423632234§.y;
         if(_loc5_ < 0)
         {
            _loc5_ = -_loc5_;
         }
         _loc6_ += _loc5_;
         _loc5_ = (_loc7_.§521423122302312243123423632234§ * param3.x + _loc7_.§final else§ * param3.y + _loc7_.§5214237445237458123423632234§ * param3.§521423155722315585123423632234§) * param1.§5214234336234349123423632234§.§521423155722315585123423632234§;
         if(_loc5_ < 0)
         {
            _loc5_ = -_loc5_;
         }
         _loc6_ += _loc5_;
         _loc7_ = param2.§521423126962312709123423632234§;
         _loc5_ = (_loc7_.§5214232125232138123423632234§ * param3.x + _loc7_.§default catch super§ * param3.y + _loc7_.§return finally else§ * param3.§521423155722315585123423632234§) * param2.§5214234336234349123423632234§.x;
         if(_loc5_ < 0)
         {
            _loc5_ = -_loc5_;
         }
         _loc6_ += _loc5_;
         _loc5_ = (_loc7_.§finally use true§ * param3.x + _loc7_.§set catch implements§ * param3.y + _loc7_.§521423190732319086123423632234§ * param3.§521423155722315585123423632234§) * param2.§5214234336234349123423632234§.y;
         if(_loc5_ < 0)
         {
            _loc5_ = -_loc5_;
         }
         _loc6_ += _loc5_;
         _loc5_ = param4.x * param3.x + param4.y * param3.y + param4.§521423155722315585123423632234§ * param3.§521423155722315585123423632234§;
         if(_loc5_ < 0)
         {
            _loc5_ = -_loc5_;
         }
         return _loc6_ - _loc5_;
      }
      
      final private function e492fcdf(param1:Number, param2:§do function else§) : Boolean
      {
         if(param1 < this.§in use native§)
         {
            return false;
         }
         if(param1 + this.§in use native§ < this.§52142322923242123423632234§)
         {
            this.§52142322923242123423632234§ = param1;
            this.§521423119062311919123423632234§.x = param2.x;
            this.§521423119062311919123423632234§.y = param2.y;
            this.§521423119062311919123423632234§.§521423155722315585123423632234§ = param2.§521423155722315585123423632234§;
         }
         return true;
      }
      
      final private function findContacts(param1:§dynamic function continue§, param2:§5214232134232147123423632234§, param3:§do function else§, param4:Vector.<§final while do§>) : void
      {
         var _loc7_:int = 0;
         var _loc14_:§final while do§ = null;
         var _loc15_:§do function else§ = null;
         var _loc8_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc6_:§521423166662316679123423632234§ = param1.§521423126962312709123423632234§;
         var _loc12_:§521423166662316679123423632234§ = param2.§521423126962312709123423632234§;
         var _loc16_:§do function else§ = this.§521423147212314734123423632234§;
         _loc16_.x = _loc6_.§5214233909233922123423632234§ - _loc12_.§5214233909233922123423632234§;
         _loc16_.y = _loc6_.§while while return§ - _loc12_.§while while return§;
         _loc16_.§521423155722315585123423632234§ = _loc6_.§dynamic finally false§ - _loc12_.§dynamic finally false§;
         if(param3.x * _loc16_.x + param3.y * _loc16_.y + param3.§521423155722315585123423632234§ * _loc16_.§521423155722315585123423632234§ < 0)
         {
            param3.x = -param3.x;
            param3.y = -param3.y;
            param3.§521423155722315585123423632234§ = -param3.§521423155722315585123423632234§;
         }
         var _loc5_:§521423166662316679123423632234§ = §521423132832313296123423632234§;
         ColliderUtils.buildContactBasis(param3,_loc6_,_loc12_,_loc5_);
         ColliderUtils.getBoxFaceVerticesInCCWOrder(param1,param3,FaceSide.§return use else§,§break package if§);
         ColliderUtils.getRectFaceInCCWOrder(param2,param3,§include const use§);
         ColliderUtils.transformFaceToReferenceSpace(_loc5_,_loc6_,§break package if§,4);
         ColliderUtils.transformFaceToReferenceSpace(_loc5_,_loc12_,§include const use§,4);
         var _loc13_:int = int(param4.length);
         PolygonsIntersectionUtils.findContacts(param1,§break package if§,4,param2,§include const use§,4,_loc5_,param4);
         var _loc9_:int = int(param4.length);
         _loc7_ = _loc13_;
         while(_loc7_ < _loc9_)
         {
            _loc14_ = param4[_loc7_];
            _loc15_ = _loc14_.§5214232051232064123423632234§;
            _loc8_ = _loc12_.§521423122302312243123423632234§;
            _loc10_ = _loc12_.§final else§;
            _loc11_ = _loc12_.§5214237445237458123423632234§;
            if(_loc15_.x * _loc8_ + _loc15_.y * _loc10_ + _loc15_.§521423155722315585123423632234§ * _loc11_ < 0)
            {
               _loc14_.§get var false§();
               _loc9_--;
               param4[_loc7_] = param4[_loc9_];
               param4[_loc9_] = null;
               _loc7_--;
            }
            else if(Math.abs(_loc12_.§5214237445237458123423632234§) > 0.999)
            {
               _loc15_.x = _loc8_;
               _loc15_.y = _loc10_;
               _loc15_.§521423155722315585123423632234§ = _loc11_;
            }
            _loc7_++;
         }
         if(_loc9_ < param4.length)
         {
            param4.length = _loc9_;
         }
      }
      
      final private function d6f60dcd(param1:§dynamic function continue§, param2:§5214232134232147123423632234§, param3:§do function else§, param4:§do function else§, param5:§do function else§) : Boolean
      {
         this.§class var default§.x = param3.y * param4.§521423155722315585123423632234§ - param3.§521423155722315585123423632234§ * param4.y;
         this.§class var default§.y = param3.§521423155722315585123423632234§ * param4.x - param3.x * param4.§521423155722315585123423632234§;
         this.§class var default§.§521423155722315585123423632234§ = param3.x * param4.y - param3.y * param4.x;
         var _loc8_:Number = this.§class var default§.x * this.§class var default§.x + this.§class var default§.y * this.§class var default§.y + this.§class var default§.§521423155722315585123423632234§ * this.§class var default§.§521423155722315585123423632234§;
         if(_loc8_ < 1e-10)
         {
            return true;
         }
         var _loc7_:Number = 1 / Math.sqrt(_loc8_);
         this.§class var default§.x *= _loc7_;
         this.§class var default§.y *= _loc7_;
         this.§class var default§.§521423155722315585123423632234§ *= _loc7_;
         var _temp_8:* = this;
         var _temp_7:* = param1;
         var _temp_6:* = param2;
         var _temp_5:* = this.§class var default§;
         var _loc17_:§do function else§ = param5;
         var _loc15_:§do function else§ = _temp_5;
         var _loc11_:§5214232134232147123423632234§ = _temp_6;
         var _loc13_:§dynamic function continue§ = _temp_7;
         var _loc9_:BoxRectCollider = _temp_8;
         var _loc16_:§521423166662316679123423632234§ = _loc13_.§521423126962312709123423632234§;
         var _loc12_:Number = (_loc16_.§5214232125232138123423632234§ * _loc15_.x + _loc16_.§default catch super§ * _loc15_.y + _loc16_.§return finally else§ * _loc15_.§521423155722315585123423632234§) * _loc13_.§5214234336234349123423632234§.x;
         if(_loc12_ < 0)
         {
            _loc12_ = -_loc12_;
         }
         var _loc14_:Number = _loc12_;
         _loc12_ = (_loc16_.§finally use true§ * _loc15_.x + _loc16_.§set catch implements§ * _loc15_.y + _loc16_.§521423190732319086123423632234§ * _loc15_.§521423155722315585123423632234§) * _loc13_.§5214234336234349123423632234§.y;
         if(_loc12_ < 0)
         {
            _loc12_ = -_loc12_;
         }
         _loc14_ += _loc12_;
         _loc12_ = (_loc16_.§521423122302312243123423632234§ * _loc15_.x + _loc16_.§final else§ * _loc15_.y + _loc16_.§5214237445237458123423632234§ * _loc15_.§521423155722315585123423632234§) * _loc13_.§5214234336234349123423632234§.§521423155722315585123423632234§;
         if(_loc12_ < 0)
         {
            _loc12_ = -_loc12_;
         }
         _loc14_ += _loc12_;
         _loc16_ = _loc11_.§521423126962312709123423632234§;
         _loc12_ = (_loc16_.§5214232125232138123423632234§ * _loc15_.x + _loc16_.§default catch super§ * _loc15_.y + _loc16_.§return finally else§ * _loc15_.§521423155722315585123423632234§) * _loc11_.§5214234336234349123423632234§.x;
         if(_loc12_ < 0)
         {
            _loc12_ = -_loc12_;
         }
         _loc14_ += _loc12_;
         _loc12_ = (_loc16_.§finally use true§ * _loc15_.x + _loc16_.§set catch implements§ * _loc15_.y + _loc16_.§521423190732319086123423632234§ * _loc15_.§521423155722315585123423632234§) * _loc11_.§5214234336234349123423632234§.y;
         if(_loc12_ < 0)
         {
            _loc12_ = -_loc12_;
         }
         _loc14_ += _loc12_;
         _loc12_ = _loc17_.x * _loc15_.x + _loc17_.y * _loc15_.y + _loc17_.§521423155722315585123423632234§ * _loc15_.§521423155722315585123423632234§;
         if(_loc12_ < 0)
         {
            _loc12_ = -_loc12_;
         }
         var _loc6_:Number = _loc14_ - _loc12_;
         var _temp_18:* = this;
         var _temp_17:* = _loc6_;
         var _loc19_:§do function else§ = this.§class var default§;
         var _loc18_:Number = _temp_17;
         var _loc10_:BoxRectCollider = _temp_18;
         if(_loc18_ < _loc10_.§in use native§)
         {
            return false;
         }
         else
         {
            if(_loc18_ + _loc10_.§in use native§ < _loc10_.§52142322923242123423632234§)
            {
               _loc10_.§52142322923242123423632234§ = _loc18_;
               _loc10_.§521423119062311919123423632234§.x = _loc19_.x;
               _loc10_.§521423119062311919123423632234§.y = _loc19_.y;
               _loc10_.§521423119062311919123423632234§.§521423155722315585123423632234§ = _loc19_.§521423155722315585123423632234§;
            }
            return true;
         }
      }
      
      public function haveCollision(param1:§5214231214231227123423632234§, param2:§5214231214231227123423632234§) : Boolean
      {
         var _loc6_:§dynamic function continue§ = null;
         var _loc4_:§5214232134232147123423632234§ = null;
         this.§52142322923242123423632234§ = 10000000000;
         if(param1 is §dynamic function continue§)
         {
            _loc6_ = §dynamic function continue§(param1);
            _loc4_ = §5214232134232147123423632234§(param2);
         }
         else
         {
            _loc6_ = §dynamic function continue§(param2);
            _loc4_ = §5214232134232147123423632234§(param1);
         }
         var _loc5_:§521423166662316679123423632234§ = _loc6_.§521423126962312709123423632234§;
         var _loc3_:§521423166662316679123423632234§ = _loc4_.§521423126962312709123423632234§;
         this.§521423147212314734123423632234§.x = _loc5_.§5214233909233922123423632234§ - _loc3_.§5214233909233922123423632234§;
         this.§521423147212314734123423632234§.y = _loc5_.§while while return§ - _loc3_.§while while return§;
         this.§521423147212314734123423632234§.§521423155722315585123423632234§ = _loc5_.§dynamic finally false§ - _loc3_.§dynamic finally false§;
         this.§class finally return§.x = _loc3_.§521423122302312243123423632234§;
         this.§class finally return§.y = _loc3_.§final else§;
         this.§class finally return§.§521423155722315585123423632234§ = _loc3_.§5214237445237458123423632234§;
         var _temp_4:* = this;
         var _temp_3:* = _loc6_;
         var _temp_2:* = _loc4_;
         var _temp_1:* = this.§class finally return§;
         var _loc21_:§do function else§ = this.§521423147212314734123423632234§;
         var _loc20_:§do function else§ = _temp_1;
         var _loc17_:§5214232134232147123423632234§ = _temp_2;
         var _loc19_:§dynamic function continue§ = _temp_3;
         var _loc7_:BoxRectCollider = _temp_4;
         var _loc18_:Number = Number(§§pop().getOverlapOnAxis(_loc19_,_loc17_,_loc20_,_loc21_));
         if(!_loc7_.e492fcdf(_loc18_,_loc20_))
         {
            return false;
         }
         this.§5214232549232562123423632234§.x = _loc5_.§5214232125232138123423632234§;
         this.§5214232549232562123423632234§.y = _loc5_.§default catch super§;
         this.§5214232549232562123423632234§.§521423155722315585123423632234§ = _loc5_.§return finally else§;
         var _temp_8:* = this;
         var _temp_7:* = _loc6_;
         var _temp_6:* = _loc4_;
         var _temp_5:* = this.§5214232549232562123423632234§;
         var _loc26_:§do function else§ = this.§521423147212314734123423632234§;
         var _loc25_:§do function else§ = _temp_5;
         var _loc22_:§5214232134232147123423632234§ = _temp_6;
         var _loc24_:§dynamic function continue§ = _temp_7;
         var _loc8_:BoxRectCollider = _temp_8;
         var _loc23_:Number = Number(§§pop().getOverlapOnAxis(_loc24_,_loc22_,_loc25_,_loc26_));
         if(!_loc8_.e492fcdf(_loc23_,_loc25_))
         {
            return false;
         }
         this.§override while use§.x = _loc5_.§finally use true§;
         this.§override while use§.y = _loc5_.§set catch implements§;
         this.§override while use§.§521423155722315585123423632234§ = _loc5_.§521423190732319086123423632234§;
         var _temp_12:* = this;
         var _temp_11:* = _loc6_;
         var _temp_10:* = _loc4_;
         var _temp_9:* = this.§override while use§;
         var _loc31_:§do function else§ = this.§521423147212314734123423632234§;
         var _loc30_:§do function else§ = _temp_9;
         var _loc27_:§5214232134232147123423632234§ = _temp_10;
         var _loc29_:§dynamic function continue§ = _temp_11;
         var _loc9_:BoxRectCollider = _temp_12;
         var _loc28_:Number = Number(§§pop().getOverlapOnAxis(_loc29_,_loc27_,_loc30_,_loc31_));
         if(!_loc9_.e492fcdf(_loc28_,_loc30_))
         {
            return false;
         }
         this.§break while case§.x = _loc5_.§521423122302312243123423632234§;
         this.§break while case§.y = _loc5_.§final else§;
         this.§break while case§.§521423155722315585123423632234§ = _loc5_.§5214237445237458123423632234§;
         var _temp_16:* = this;
         var _temp_15:* = _loc6_;
         var _temp_14:* = _loc4_;
         var _temp_13:* = this.§break while case§;
         var _loc36_:§do function else§ = this.§521423147212314734123423632234§;
         var _loc35_:§do function else§ = _temp_13;
         var _loc32_:§5214232134232147123423632234§ = _temp_14;
         var _loc34_:§dynamic function continue§ = _temp_15;
         var _loc10_:BoxRectCollider = _temp_16;
         var _loc33_:Number = Number(§§pop().getOverlapOnAxis(_loc34_,_loc32_,_loc35_,_loc36_));
         if(!_loc10_.e492fcdf(_loc33_,_loc35_))
         {
            return false;
         }
         this.§return package case§.x = _loc3_.§5214232125232138123423632234§;
         this.§return package case§.y = _loc3_.§default catch super§;
         this.§return package case§.§521423155722315585123423632234§ = _loc3_.§return finally else§;
         this.§finally use in§.x = _loc3_.§finally use true§;
         this.§finally use in§.y = _loc3_.§set catch implements§;
         this.§finally use in§.§521423155722315585123423632234§ = _loc3_.§521423190732319086123423632234§;
         var _temp_21:* = this;
         var _temp_20:* = _loc6_;
         var _temp_19:* = _loc4_;
         var _temp_18:* = this.§5214232549232562123423632234§;
         var _temp_17:* = this.§return package case§;
         var _loc44_:§do function else§ = this.§521423147212314734123423632234§;
         var _loc39_:§do function else§ = _temp_17;
         var _loc40_:§do function else§ = _temp_18;
         var _loc37_:§5214232134232147123423632234§ = _temp_19;
         var _loc41_:§dynamic function continue§ = _temp_20;
         var _loc11_:BoxRectCollider = _temp_21;
         §§pop().§class var default§.x = _loc40_.y * _loc39_.§521423155722315585123423632234§ - _loc40_.§521423155722315585123423632234§ * _loc39_.y;
         _loc11_.§class var default§.y = _loc40_.§521423155722315585123423632234§ * _loc39_.x - _loc40_.x * _loc39_.§521423155722315585123423632234§;
         _loc11_.§class var default§.§521423155722315585123423632234§ = _loc40_.x * _loc39_.y - _loc40_.y * _loc39_.x;
         var _loc43_:Number = _loc11_.§class var default§.x * _loc11_.§class var default§.x + _loc11_.§class var default§.y * _loc11_.§class var default§.y + _loc11_.§class var default§.§521423155722315585123423632234§ * _loc11_.§class var default§.§521423155722315585123423632234§;
         var _loc42_:Number;
         var _loc38_:Number;
         if(!(_loc43_ < 1e-10 ? true : (_loc42_ = 1 / Math.sqrt(_loc43_),_loc11_.§class var default§.x *= _loc42_,_loc11_.§class var default§.y *= _loc42_,_loc11_.§class var default§.§521423155722315585123423632234§ *= _loc42_,_loc38_ = _loc11_.getOverlapOnAxis(_loc41_,_loc37_,_loc11_.§class var default§,_loc44_),_loc11_.e492fcdf(_loc38_,_loc11_.§class var default§))))
         {
            return false;
         }
         var _temp_30:* = this;
         var _temp_29:* = _loc6_;
         var _temp_28:* = _loc4_;
         var _temp_27:* = this.§5214232549232562123423632234§;
         var _temp_26:* = this.§finally use in§;
         var _loc52_:§do function else§ = this.§521423147212314734123423632234§;
         var _loc47_:§do function else§ = _temp_26;
         var _loc48_:§do function else§ = _temp_27;
         var _loc45_:§5214232134232147123423632234§ = _temp_28;
         var _loc49_:§dynamic function continue§ = _temp_29;
         var _loc12_:BoxRectCollider = _temp_30;
         §§pop().§class var default§.x = _loc48_.y * _loc47_.§521423155722315585123423632234§ - _loc48_.§521423155722315585123423632234§ * _loc47_.y;
         _loc12_.§class var default§.y = _loc48_.§521423155722315585123423632234§ * _loc47_.x - _loc48_.x * _loc47_.§521423155722315585123423632234§;
         _loc12_.§class var default§.§521423155722315585123423632234§ = _loc48_.x * _loc47_.y - _loc48_.y * _loc47_.x;
         var _loc51_:Number = _loc12_.§class var default§.x * _loc12_.§class var default§.x + _loc12_.§class var default§.y * _loc12_.§class var default§.y + _loc12_.§class var default§.§521423155722315585123423632234§ * _loc12_.§class var default§.§521423155722315585123423632234§;
         var _loc50_:Number;
         var _loc46_:Number;
         if(!(_loc51_ < 1e-10 ? true : (_loc50_ = 1 / Math.sqrt(_loc51_),_loc12_.§class var default§.x *= _loc50_,_loc12_.§class var default§.y *= _loc50_,_loc12_.§class var default§.§521423155722315585123423632234§ *= _loc50_,_loc46_ = _loc12_.getOverlapOnAxis(_loc49_,_loc45_,_loc12_.§class var default§,_loc52_),_loc12_.e492fcdf(_loc46_,_loc12_.§class var default§))))
         {
            return false;
         }
         var _temp_39:* = this;
         var _temp_38:* = _loc6_;
         var _temp_37:* = _loc4_;
         var _temp_36:* = this.§override while use§;
         var _temp_35:* = this.§return package case§;
         var _loc60_:§do function else§ = this.§521423147212314734123423632234§;
         var _loc55_:§do function else§ = _temp_35;
         var _loc56_:§do function else§ = _temp_36;
         var _loc53_:§5214232134232147123423632234§ = _temp_37;
         var _loc57_:§dynamic function continue§ = _temp_38;
         var _loc13_:BoxRectCollider = _temp_39;
         §§pop().§class var default§.x = _loc56_.y * _loc55_.§521423155722315585123423632234§ - _loc56_.§521423155722315585123423632234§ * _loc55_.y;
         _loc13_.§class var default§.y = _loc56_.§521423155722315585123423632234§ * _loc55_.x - _loc56_.x * _loc55_.§521423155722315585123423632234§;
         _loc13_.§class var default§.§521423155722315585123423632234§ = _loc56_.x * _loc55_.y - _loc56_.y * _loc55_.x;
         var _loc59_:Number = _loc13_.§class var default§.x * _loc13_.§class var default§.x + _loc13_.§class var default§.y * _loc13_.§class var default§.y + _loc13_.§class var default§.§521423155722315585123423632234§ * _loc13_.§class var default§.§521423155722315585123423632234§;
         var _loc58_:Number;
         var _loc54_:Number;
         if(!(_loc59_ < 1e-10 ? true : (_loc58_ = 1 / Math.sqrt(_loc59_),_loc13_.§class var default§.x *= _loc58_,_loc13_.§class var default§.y *= _loc58_,_loc13_.§class var default§.§521423155722315585123423632234§ *= _loc58_,_loc54_ = _loc13_.getOverlapOnAxis(_loc57_,_loc53_,_loc13_.§class var default§,_loc60_),_loc13_.e492fcdf(_loc54_,_loc13_.§class var default§))))
         {
            return false;
         }
         var _temp_48:* = this;
         var _temp_47:* = _loc6_;
         var _temp_46:* = _loc4_;
         var _temp_45:* = this.§override while use§;
         var _temp_44:* = this.§finally use in§;
         var _loc68_:§do function else§ = this.§521423147212314734123423632234§;
         var _loc63_:§do function else§ = _temp_44;
         var _loc64_:§do function else§ = _temp_45;
         var _loc61_:§5214232134232147123423632234§ = _temp_46;
         var _loc65_:§dynamic function continue§ = _temp_47;
         var _loc14_:BoxRectCollider = _temp_48;
         §§pop().§class var default§.x = _loc64_.y * _loc63_.§521423155722315585123423632234§ - _loc64_.§521423155722315585123423632234§ * _loc63_.y;
         _loc14_.§class var default§.y = _loc64_.§521423155722315585123423632234§ * _loc63_.x - _loc64_.x * _loc63_.§521423155722315585123423632234§;
         _loc14_.§class var default§.§521423155722315585123423632234§ = _loc64_.x * _loc63_.y - _loc64_.y * _loc63_.x;
         var _loc67_:Number = _loc14_.§class var default§.x * _loc14_.§class var default§.x + _loc14_.§class var default§.y * _loc14_.§class var default§.y + _loc14_.§class var default§.§521423155722315585123423632234§ * _loc14_.§class var default§.§521423155722315585123423632234§;
         var _loc66_:Number;
         var _loc62_:Number;
         if(!(_loc67_ < 1e-10 ? true : (_loc66_ = 1 / Math.sqrt(_loc67_),_loc14_.§class var default§.x *= _loc66_,_loc14_.§class var default§.y *= _loc66_,_loc14_.§class var default§.§521423155722315585123423632234§ *= _loc66_,_loc62_ = _loc14_.getOverlapOnAxis(_loc65_,_loc61_,_loc14_.§class var default§,_loc68_),_loc14_.e492fcdf(_loc62_,_loc14_.§class var default§))))
         {
            return false;
         }
         var _temp_57:* = this;
         var _temp_56:* = _loc6_;
         var _temp_55:* = _loc4_;
         var _temp_54:* = this.§break while case§;
         var _temp_53:* = this.§return package case§;
         var _loc76_:§do function else§ = this.§521423147212314734123423632234§;
         var _loc71_:§do function else§ = _temp_53;
         var _loc72_:§do function else§ = _temp_54;
         var _loc69_:§5214232134232147123423632234§ = _temp_55;
         var _loc73_:§dynamic function continue§ = _temp_56;
         var _loc15_:BoxRectCollider = _temp_57;
         §§pop().§class var default§.x = _loc72_.y * _loc71_.§521423155722315585123423632234§ - _loc72_.§521423155722315585123423632234§ * _loc71_.y;
         _loc15_.§class var default§.y = _loc72_.§521423155722315585123423632234§ * _loc71_.x - _loc72_.x * _loc71_.§521423155722315585123423632234§;
         _loc15_.§class var default§.§521423155722315585123423632234§ = _loc72_.x * _loc71_.y - _loc72_.y * _loc71_.x;
         var _loc75_:Number = _loc15_.§class var default§.x * _loc15_.§class var default§.x + _loc15_.§class var default§.y * _loc15_.§class var default§.y + _loc15_.§class var default§.§521423155722315585123423632234§ * _loc15_.§class var default§.§521423155722315585123423632234§;
         var _loc74_:Number;
         var _loc70_:Number;
         if(!(_loc75_ < 1e-10 ? true : (_loc74_ = 1 / Math.sqrt(_loc75_),_loc15_.§class var default§.x *= _loc74_,_loc15_.§class var default§.y *= _loc74_,_loc15_.§class var default§.§521423155722315585123423632234§ *= _loc74_,_loc70_ = _loc15_.getOverlapOnAxis(_loc73_,_loc69_,_loc15_.§class var default§,_loc76_),_loc15_.e492fcdf(_loc70_,_loc15_.§class var default§))))
         {
            return false;
         }
         var _temp_66:* = this;
         var _temp_65:* = _loc6_;
         var _temp_64:* = _loc4_;
         var _temp_63:* = this.§break while case§;
         var _temp_62:* = this.§finally use in§;
         var _loc84_:§do function else§ = this.§521423147212314734123423632234§;
         var _loc79_:§do function else§ = _temp_62;
         var _loc80_:§do function else§ = _temp_63;
         var _loc77_:§5214232134232147123423632234§ = _temp_64;
         var _loc81_:§dynamic function continue§ = _temp_65;
         var _loc16_:BoxRectCollider = _temp_66;
         §§pop().§class var default§.x = _loc80_.y * _loc79_.§521423155722315585123423632234§ - _loc80_.§521423155722315585123423632234§ * _loc79_.y;
         _loc16_.§class var default§.y = _loc80_.§521423155722315585123423632234§ * _loc79_.x - _loc80_.x * _loc79_.§521423155722315585123423632234§;
         _loc16_.§class var default§.§521423155722315585123423632234§ = _loc80_.x * _loc79_.y - _loc80_.y * _loc79_.x;
         var _loc83_:Number = _loc16_.§class var default§.x * _loc16_.§class var default§.x + _loc16_.§class var default§.y * _loc16_.§class var default§.y + _loc16_.§class var default§.§521423155722315585123423632234§ * _loc16_.§class var default§.§521423155722315585123423632234§;
         var _loc82_:Number;
         var _loc78_:Number;
         if(!(_loc83_ < 1e-10 ? true : (_loc82_ = 1 / Math.sqrt(_loc83_),_loc16_.§class var default§.x *= _loc82_,_loc16_.§class var default§.y *= _loc82_,_loc16_.§class var default§.§521423155722315585123423632234§ *= _loc82_,_loc78_ = _loc16_.getOverlapOnAxis(_loc81_,_loc77_,_loc16_.§class var default§,_loc84_),_loc16_.e492fcdf(_loc78_,_loc16_.§class var default§))))
         {
            return false;
         }
         return true;
      }
      
      final private function eb9ffb0(param1:§dynamic function continue§, param2:§5214232134232147123423632234§, param3:§do function else§, param4:§do function else§) : Boolean
      {
         var _temp_4:* = this;
         var _temp_3:* = param1;
         var _temp_2:* = param2;
         var _temp_1:* = param3;
         var _loc14_:§do function else§ = param4;
         var _loc12_:§do function else§ = _temp_1;
         var _loc8_:§5214232134232147123423632234§ = _temp_2;
         var _loc10_:§dynamic function continue§ = _temp_3;
         var _loc6_:BoxRectCollider = _temp_4;
         var _loc13_:§521423166662316679123423632234§ = _loc10_.§521423126962312709123423632234§;
         var _loc9_:Number = (_loc13_.§5214232125232138123423632234§ * _loc12_.x + _loc13_.§default catch super§ * _loc12_.y + _loc13_.§return finally else§ * _loc12_.§521423155722315585123423632234§) * _loc10_.§5214234336234349123423632234§.x;
         if(_loc9_ < 0)
         {
            _loc9_ = -_loc9_;
         }
         var _loc11_:Number = _loc9_;
         _loc9_ = (_loc13_.§finally use true§ * _loc12_.x + _loc13_.§set catch implements§ * _loc12_.y + _loc13_.§521423190732319086123423632234§ * _loc12_.§521423155722315585123423632234§) * _loc10_.§5214234336234349123423632234§.y;
         if(_loc9_ < 0)
         {
            _loc9_ = -_loc9_;
         }
         _loc11_ += _loc9_;
         _loc9_ = (_loc13_.§521423122302312243123423632234§ * _loc12_.x + _loc13_.§final else§ * _loc12_.y + _loc13_.§5214237445237458123423632234§ * _loc12_.§521423155722315585123423632234§) * _loc10_.§5214234336234349123423632234§.§521423155722315585123423632234§;
         if(_loc9_ < 0)
         {
            _loc9_ = -_loc9_;
         }
         _loc11_ += _loc9_;
         _loc13_ = _loc8_.§521423126962312709123423632234§;
         _loc9_ = (_loc13_.§5214232125232138123423632234§ * _loc12_.x + _loc13_.§default catch super§ * _loc12_.y + _loc13_.§return finally else§ * _loc12_.§521423155722315585123423632234§) * _loc8_.§5214234336234349123423632234§.x;
         if(_loc9_ < 0)
         {
            _loc9_ = -_loc9_;
         }
         _loc11_ += _loc9_;
         _loc9_ = (_loc13_.§finally use true§ * _loc12_.x + _loc13_.§set catch implements§ * _loc12_.y + _loc13_.§521423190732319086123423632234§ * _loc12_.§521423155722315585123423632234§) * _loc8_.§5214234336234349123423632234§.y;
         if(_loc9_ < 0)
         {
            _loc9_ = -_loc9_;
         }
         _loc11_ += _loc9_;
         _loc9_ = _loc14_.x * _loc12_.x + _loc14_.y * _loc12_.y + _loc14_.§521423155722315585123423632234§ * _loc12_.§521423155722315585123423632234§;
         if(_loc9_ < 0)
         {
            _loc9_ = -_loc9_;
         }
         var _loc5_:Number = _loc11_ - _loc9_;
         var _temp_14:* = this;
         var _temp_13:* = _loc5_;
         var _loc16_:§do function else§ = param3;
         var _loc15_:Number = _temp_13;
         var _loc7_:BoxRectCollider = _temp_14;
         if(_loc15_ < _loc7_.§in use native§)
         {
            return false;
         }
         else
         {
            if(_loc15_ + _loc7_.§in use native§ < _loc7_.§52142322923242123423632234§)
            {
               _loc7_.§52142322923242123423632234§ = _loc15_;
               _loc7_.§521423119062311919123423632234§.x = _loc16_.x;
               _loc7_.§521423119062311919123423632234§.y = _loc16_.y;
               _loc7_.§521423119062311919123423632234§.§521423155722315585123423632234§ = _loc16_.§521423155722315585123423632234§;
            }
            return true;
         }
      }
      
      public function getContacts(param1:§5214231214231227123423632234§, param2:§5214231214231227123423632234§, param3:Vector.<§final while do§>) : void
      {
         var _loc4_:§5214232134232147123423632234§ = null;
         var _loc5_:§dynamic function continue§ = null;
         if(this.haveCollision(param1,param2))
         {
            if(param1 is §5214232134232147123423632234§)
            {
               _loc4_ = §5214232134232147123423632234§(param1);
               _loc5_ = §dynamic function continue§(param2);
            }
            else
            {
               _loc4_ = §5214232134232147123423632234§(param2);
               _loc5_ = §dynamic function continue§(param1);
            }
            this.findContacts(_loc5_,_loc4_,this.§521423119062311919123423632234§,param3);
         }
      }
   }
}

