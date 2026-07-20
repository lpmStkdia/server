package alternativa.physics.collision.colliders
{
   import §521423122282312241123423632234§.§final while do§;
   import §5214231886231899123423632234§.§5214231214231227123423632234§;
   import §5214231886231899123423632234§.§521423132822313295123423632234§;
   import §521423188792318892123423632234§.§521423166662316679123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import §super return§.§521423106262310639123423632234§;
   import §super return§.§dynamic function continue§;
   
   public class BoxTriangleCollider implements §521423132822313295123423632234§
   {
      
      public var §in use native§:Number;
      
      private var §52142322923242123423632234§:Number;
      
      private const §5214236047236060123423632234§:§do function else§ = new §do function else§();
      
      private const §5214231159231172123423632234§:§do function else§ = new §do function else§();
      
      private const §5214232549232562123423632234§:§do function else§ = new §do function else§();
      
      private const §override while use§:§do function else§ = new §do function else§();
      
      private const §break while case§:§do function else§ = new §do function else§();
      
      private const §return package case§:§do function else§ = new §do function else§();
      
      private const §finally use in§:§do function else§ = new §do function else§();
      
      private const §class finally return§:§do function else§ = new §do function else§();
      
      private const §521423119062311919123423632234§:§do function else§ = new §do function else§();
      
      private const §521423132832313296123423632234§:§521423166662316679123423632234§ = new §521423166662316679123423632234§();
      
      private const §break package if§:Vector.<Vertex> = new <Vertex>[new Vertex(),new Vertex(),new Vertex(),new Vertex()];
      
      private const §5214236422236435123423632234§:Vector.<Vertex> = new <Vertex>[new Vertex(),new Vertex(),new Vertex()];
      
      public function BoxTriangleCollider(param1:Number)
      {
         super();
         this.§in use native§ = param1;
      }
      
      private function getOverlapOnAxis(param1:§dynamic function continue§, param2:§521423106262310639123423632234§, param3:§do function else§, param4:§do function else§) : Number
      {
         var _loc9_:§521423166662316679123423632234§ = param1.§521423126962312709123423632234§;
         var _loc10_:§do function else§ = param1.§5214234336234349123423632234§;
         var _loc15_:Number = 0;
         var _loc6_:Number = (_loc9_.§5214232125232138123423632234§ * param3.x + _loc9_.§default catch super§ * param3.y + _loc9_.§return finally else§ * param3.§521423155722315585123423632234§) * _loc10_.x;
         if(_loc6_ < 0)
         {
            _loc15_ -= _loc6_;
         }
         else
         {
            _loc15_ += _loc6_;
         }
         _loc6_ = (_loc9_.§finally use true§ * param3.x + _loc9_.§set catch implements§ * param3.y + _loc9_.§521423190732319086123423632234§ * param3.§521423155722315585123423632234§) * _loc10_.y;
         if(_loc6_ < 0)
         {
            _loc15_ -= _loc6_;
         }
         else
         {
            _loc15_ += _loc6_;
         }
         _loc6_ = (_loc9_.§521423122302312243123423632234§ * param3.x + _loc9_.§final else§ * param3.y + _loc9_.§5214237445237458123423632234§ * param3.§521423155722315585123423632234§) * _loc10_.§521423155722315585123423632234§;
         if(_loc6_ < 0)
         {
            _loc15_ -= _loc6_;
         }
         else
         {
            _loc15_ += _loc6_;
         }
         var _loc5_:Number = param4.x * param3.x + param4.y * param3.y + param4.§521423155722315585123423632234§ * param3.§521423155722315585123423632234§;
         var _loc8_:§521423166662316679123423632234§ = param2.§521423126962312709123423632234§;
         var _loc11_:Number = _loc8_.§5214232125232138123423632234§ * param3.x + _loc8_.§default catch super§ * param3.y + _loc8_.§return finally else§ * param3.§521423155722315585123423632234§;
         var _loc12_:Number = _loc8_.§finally use true§ * param3.x + _loc8_.§set catch implements§ * param3.y + _loc8_.§521423190732319086123423632234§ * param3.§521423155722315585123423632234§;
         var _loc13_:Number = _loc8_.§521423122302312243123423632234§ * param3.x + _loc8_.§final else§ * param3.y + _loc8_.§5214237445237458123423632234§ * param3.§521423155722315585123423632234§;
         var _loc7_:Number = 0;
         var _loc14_:§do function else§ = param2.§get default§;
         var _loc16_:§do function else§ = param2.§521423167262316739123423632234§;
         var _loc17_:§do function else§ = param2.§521423183572318370123423632234§;
         if(_loc5_ < 0)
         {
            _loc5_ = -_loc5_;
            _loc6_ = _loc14_.x * _loc11_ + _loc14_.y * _loc12_ + _loc14_.§521423155722315585123423632234§ * _loc13_;
            if(_loc6_ < _loc7_)
            {
               _loc7_ = _loc6_;
            }
            _loc6_ = _loc16_.x * _loc11_ + _loc16_.y * _loc12_ + _loc16_.§521423155722315585123423632234§ * _loc13_;
            if(_loc6_ < _loc7_)
            {
               _loc7_ = _loc6_;
            }
            _loc6_ = _loc17_.x * _loc11_ + _loc17_.y * _loc12_ + _loc17_.§521423155722315585123423632234§ * _loc13_;
            if(_loc6_ < _loc7_)
            {
               _loc7_ = _loc6_;
            }
            _loc7_ = -_loc7_;
         }
         else
         {
            _loc6_ = _loc14_.x * _loc11_ + _loc14_.y * _loc12_ + _loc14_.§521423155722315585123423632234§ * _loc13_;
            if(_loc6_ > _loc7_)
            {
               _loc7_ = _loc6_;
            }
            _loc6_ = _loc16_.x * _loc11_ + _loc16_.y * _loc12_ + _loc16_.§521423155722315585123423632234§ * _loc13_;
            if(_loc6_ > _loc7_)
            {
               _loc7_ = _loc6_;
            }
            _loc6_ = _loc17_.x * _loc11_ + _loc17_.y * _loc12_ + _loc17_.§521423155722315585123423632234§ * _loc13_;
            if(_loc6_ > _loc7_)
            {
               _loc7_ = _loc6_;
            }
         }
         return _loc15_ + _loc7_ - _loc5_;
      }
      
      public function getContacts(param1:§5214231214231227123423632234§, param2:§5214231214231227123423632234§, param3:Vector.<§final while do§>) : void
      {
         var _loc4_:§521423106262310639123423632234§ = null;
         var _loc5_:§dynamic function continue§ = null;
         if(!this.haveCollision(param1,param2))
         {
            return;
         }
         if(param1 is §dynamic function continue§)
         {
            _loc5_ = §dynamic function continue§(param1);
            _loc4_ = §521423106262310639123423632234§(param2);
         }
         else
         {
            _loc5_ = §dynamic function continue§(param2);
            _loc4_ = §521423106262310639123423632234§(param1);
         }
         this.findContacts(_loc5_,_loc4_,this.§521423119062311919123423632234§,param3);
      }
      
      final private function findContacts(param1:§dynamic function continue§, param2:§521423106262310639123423632234§, param3:§do function else§, param4:Vector.<§final while do§>) : void
      {
         var _loc8_:int = 0;
         var _loc14_:§final while do§ = null;
         var _loc15_:§do function else§ = null;
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc7_:§521423166662316679123423632234§ = param1.§521423126962312709123423632234§;
         var _loc5_:§521423166662316679123423632234§ = param2.§521423126962312709123423632234§;
         var _loc16_:§do function else§ = this.§5214236047236060123423632234§;
         _loc16_.x = _loc7_.§5214233909233922123423632234§ - _loc5_.§5214233909233922123423632234§;
         _loc16_.y = _loc7_.§while while return§ - _loc5_.§while while return§;
         _loc16_.§521423155722315585123423632234§ = _loc7_.§dynamic finally false§ - _loc5_.§dynamic finally false§;
         if(param3.x * _loc16_.x + param3.y * _loc16_.y + param3.§521423155722315585123423632234§ * _loc16_.§521423155722315585123423632234§ < 0)
         {
            param3.x = -param3.x;
            param3.y = -param3.y;
            param3.§521423155722315585123423632234§ = -param3.§521423155722315585123423632234§;
         }
         var _loc6_:§521423166662316679123423632234§ = this.§521423132832313296123423632234§;
         ColliderUtils.buildContactBasis(param3,_loc7_,_loc5_,_loc6_);
         ColliderUtils.getBoxFaceVerticesInCCWOrder(param1,param3,FaceSide.§return use else§,this.§break package if§);
         ColliderUtils.getTriangleFaceInCCWOrder(param2,param3,this.§5214236422236435123423632234§);
         ColliderUtils.transformFaceToReferenceSpace(_loc6_,_loc7_,this.§break package if§,4);
         ColliderUtils.transformFaceToReferenceSpace(_loc6_,_loc5_,this.§5214236422236435123423632234§,3);
         var _loc13_:int = int(param4.length);
         PolygonsIntersectionUtils.findContacts(param1,this.§break package if§,4,param2,this.§5214236422236435123423632234§,3,_loc6_,param4);
         var _loc10_:int = int(param4.length);
         _loc8_ = _loc13_;
         while(_loc8_ < _loc10_)
         {
            _loc14_ = param4[_loc8_];
            _loc15_ = _loc14_.§5214232051232064123423632234§;
            _loc9_ = _loc5_.§521423122302312243123423632234§;
            _loc11_ = _loc5_.§final else§;
            _loc12_ = _loc5_.§5214237445237458123423632234§;
            if(_loc15_.x * _loc9_ + _loc15_.y * _loc11_ + _loc15_.§521423155722315585123423632234§ * _loc12_ < 0)
            {
               _loc14_.§get var false§();
               _loc10_--;
               param4[_loc8_] = param4[_loc10_];
               param4[_loc10_] = null;
               _loc8_--;
            }
            _loc8_++;
         }
         if(_loc10_ < param4.length)
         {
            param4.length = _loc10_;
         }
      }
      
      public function haveCollision(param1:§5214231214231227123423632234§, param2:§5214231214231227123423632234§) : Boolean
      {
         var _loc6_:§521423106262310639123423632234§ = null;
         var _loc7_:§dynamic function continue§ = null;
         if(param1 is §dynamic function continue§)
         {
            _loc7_ = §dynamic function continue§(param1);
            _loc6_ = §521423106262310639123423632234§(param2);
         }
         else
         {
            _loc7_ = §dynamic function continue§(param2);
            _loc6_ = §521423106262310639123423632234§(param1);
         }
         var _loc5_:§521423166662316679123423632234§ = _loc7_.§521423126962312709123423632234§;
         var _loc4_:§521423166662316679123423632234§ = _loc6_.§521423126962312709123423632234§;
         this.§5214236047236060123423632234§.x = _loc5_.§5214233909233922123423632234§ - _loc4_.§5214233909233922123423632234§;
         this.§5214236047236060123423632234§.y = _loc5_.§while while return§ - _loc4_.§while while return§;
         this.§5214236047236060123423632234§.§521423155722315585123423632234§ = _loc5_.§dynamic finally false§ - _loc4_.§dynamic finally false§;
         this.§52142322923242123423632234§ = 10000000000;
         this.§5214231159231172123423632234§.x = _loc4_.§521423122302312243123423632234§;
         this.§5214231159231172123423632234§.y = _loc4_.§final else§;
         this.§5214231159231172123423632234§.§521423155722315585123423632234§ = _loc4_.§5214237445237458123423632234§;
         var _temp_4:* = this;
         var _temp_3:* = _loc7_;
         var _temp_2:* = _loc6_;
         var _temp_1:* = this.§5214231159231172123423632234§;
         var _loc13_:§do function else§ = this.§5214236047236060123423632234§;
         var _loc16_:§do function else§ = _temp_1;
         var _loc15_:§521423106262310639123423632234§ = _temp_2;
         var _loc14_:§dynamic function continue§ = _temp_3;
         var _loc8_:BoxTriangleCollider = _temp_4;
         var _loc12_:Number = Number(§§pop().getOverlapOnAxis(_loc14_,_loc15_,_loc16_,_loc13_));
         if(!_loc8_.e492fcdf(_loc12_,_loc16_))
         {
            return false;
         }
         this.§5214232549232562123423632234§.x = _loc5_.§5214232125232138123423632234§;
         this.§5214232549232562123423632234§.y = _loc5_.§default catch super§;
         this.§5214232549232562123423632234§.§521423155722315585123423632234§ = _loc5_.§return finally else§;
         var _temp_8:* = this;
         var _temp_7:* = _loc7_;
         var _temp_6:* = _loc6_;
         var _temp_5:* = this.§5214232549232562123423632234§;
         var _loc18_:§do function else§ = this.§5214236047236060123423632234§;
         var _loc21_:§do function else§ = _temp_5;
         var _loc20_:§521423106262310639123423632234§ = _temp_6;
         var _loc19_:§dynamic function continue§ = _temp_7;
         var _loc9_:BoxTriangleCollider = _temp_8;
         var _loc17_:Number = Number(§§pop().getOverlapOnAxis(_loc19_,_loc20_,_loc21_,_loc18_));
         if(!_loc9_.e492fcdf(_loc17_,_loc21_))
         {
            return false;
         }
         this.§override while use§.x = _loc5_.§finally use true§;
         this.§override while use§.y = _loc5_.§set catch implements§;
         this.§override while use§.§521423155722315585123423632234§ = _loc5_.§521423190732319086123423632234§;
         var _temp_12:* = this;
         var _temp_11:* = _loc7_;
         var _temp_10:* = _loc6_;
         var _temp_9:* = this.§override while use§;
         var _loc23_:§do function else§ = this.§5214236047236060123423632234§;
         var _loc26_:§do function else§ = _temp_9;
         var _loc25_:§521423106262310639123423632234§ = _temp_10;
         var _loc24_:§dynamic function continue§ = _temp_11;
         var _loc10_:BoxTriangleCollider = _temp_12;
         var _loc22_:Number = Number(§§pop().getOverlapOnAxis(_loc24_,_loc25_,_loc26_,_loc23_));
         if(!_loc10_.e492fcdf(_loc22_,_loc26_))
         {
            return false;
         }
         this.§break while case§.x = _loc5_.§521423122302312243123423632234§;
         this.§break while case§.y = _loc5_.§final else§;
         this.§break while case§.§521423155722315585123423632234§ = _loc5_.§5214237445237458123423632234§;
         var _temp_16:* = this;
         var _temp_15:* = _loc7_;
         var _temp_14:* = _loc6_;
         var _temp_13:* = this.§break while case§;
         var _loc28_:§do function else§ = this.§5214236047236060123423632234§;
         var _loc31_:§do function else§ = _temp_13;
         var _loc30_:§521423106262310639123423632234§ = _temp_14;
         var _loc29_:§dynamic function continue§ = _temp_15;
         var _loc11_:BoxTriangleCollider = _temp_16;
         var _loc27_:Number = Number(§§pop().getOverlapOnAxis(_loc29_,_loc30_,_loc31_,_loc28_));
         if(!_loc11_.e492fcdf(_loc27_,_loc31_))
         {
            return false;
         }
         var _loc3_:§do function else§ = _loc6_.§each set switch§;
         this.§return package case§.x = _loc4_.§5214232125232138123423632234§ * _loc3_.x + _loc4_.§finally use true§ * _loc3_.y + _loc4_.§521423122302312243123423632234§ * _loc3_.§521423155722315585123423632234§;
         this.§return package case§.y = _loc4_.§default catch super§ * _loc3_.x + _loc4_.§set catch implements§ * _loc3_.y + _loc4_.§final else§ * _loc3_.§521423155722315585123423632234§;
         this.§return package case§.§521423155722315585123423632234§ = _loc4_.§return finally else§ * _loc3_.x + _loc4_.§521423190732319086123423632234§ * _loc3_.y + _loc4_.§5214237445237458123423632234§ * _loc3_.§521423155722315585123423632234§;
         if(!this.d4ab432(_loc7_,_loc6_,this.§5214232549232562123423632234§,this.§return package case§,this.§5214236047236060123423632234§))
         {
            return false;
         }
         if(!this.d4ab432(_loc7_,_loc6_,this.§override while use§,this.§return package case§,this.§5214236047236060123423632234§))
         {
            return false;
         }
         if(!this.d4ab432(_loc7_,_loc6_,this.§break while case§,this.§return package case§,this.§5214236047236060123423632234§))
         {
            return false;
         }
         _loc3_ = _loc6_.§false use use§;
         this.§finally use in§.x = _loc4_.§5214232125232138123423632234§ * _loc3_.x + _loc4_.§finally use true§ * _loc3_.y + _loc4_.§521423122302312243123423632234§ * _loc3_.§521423155722315585123423632234§;
         this.§finally use in§.y = _loc4_.§default catch super§ * _loc3_.x + _loc4_.§set catch implements§ * _loc3_.y + _loc4_.§final else§ * _loc3_.§521423155722315585123423632234§;
         this.§finally use in§.§521423155722315585123423632234§ = _loc4_.§return finally else§ * _loc3_.x + _loc4_.§521423190732319086123423632234§ * _loc3_.y + _loc4_.§5214237445237458123423632234§ * _loc3_.§521423155722315585123423632234§;
         if(!this.d4ab432(_loc7_,_loc6_,this.§5214232549232562123423632234§,this.§finally use in§,this.§5214236047236060123423632234§))
         {
            return false;
         }
         if(!this.d4ab432(_loc7_,_loc6_,this.§override while use§,this.§finally use in§,this.§5214236047236060123423632234§))
         {
            return false;
         }
         if(!this.d4ab432(_loc7_,_loc6_,this.§break while case§,this.§finally use in§,this.§5214236047236060123423632234§))
         {
            return false;
         }
         _loc3_ = _loc6_.§extends super get§;
         this.§class finally return§.x = _loc4_.§5214232125232138123423632234§ * _loc3_.x + _loc4_.§finally use true§ * _loc3_.y + _loc4_.§521423122302312243123423632234§ * _loc3_.§521423155722315585123423632234§;
         this.§class finally return§.y = _loc4_.§default catch super§ * _loc3_.x + _loc4_.§set catch implements§ * _loc3_.y + _loc4_.§final else§ * _loc3_.§521423155722315585123423632234§;
         this.§class finally return§.§521423155722315585123423632234§ = _loc4_.§return finally else§ * _loc3_.x + _loc4_.§521423190732319086123423632234§ * _loc3_.y + _loc4_.§5214237445237458123423632234§ * _loc3_.§521423155722315585123423632234§;
         if(!this.d4ab432(_loc7_,_loc6_,this.§5214232549232562123423632234§,this.§class finally return§,this.§5214236047236060123423632234§))
         {
            return false;
         }
         if(!this.d4ab432(_loc7_,_loc6_,this.§override while use§,this.§class finally return§,this.§5214236047236060123423632234§))
         {
            return false;
         }
         return this.d4ab432(_loc7_,_loc6_,this.§break while case§,this.§class finally return§,this.§5214236047236060123423632234§);
      }
      
      final private function f5d2dfed(param1:§dynamic function continue§, param2:§521423106262310639123423632234§, param3:§do function else§, param4:§do function else§) : Boolean
      {
         var _loc5_:Number = this.getOverlapOnAxis(param1,param2,param3,param4);
         var _temp_2:* = this;
         var _temp_1:* = _loc5_;
         var _loc8_:§do function else§ = param3;
         var _loc7_:Number = _temp_1;
         var _loc6_:BoxTriangleCollider = _temp_2;
         if(_loc7_ < _loc6_.§in use native§)
         {
            return false;
         }
         else
         {
            if(_loc7_ + _loc6_.§in use native§ < _loc6_.§52142322923242123423632234§)
            {
               _loc6_.§52142322923242123423632234§ = _loc7_;
               _loc6_.§521423119062311919123423632234§.x = _loc8_.x;
               _loc6_.§521423119062311919123423632234§.y = _loc8_.y;
               _loc6_.§521423119062311919123423632234§.§521423155722315585123423632234§ = _loc8_.§521423155722315585123423632234§;
            }
            return true;
         }
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
      
      private function d4ab432(param1:§dynamic function continue§, param2:§521423106262310639123423632234§, param3:§do function else§, param4:§do function else§, param5:§do function else§) : Boolean
      {
         this.§5214231159231172123423632234§.x = param3.y * param4.§521423155722315585123423632234§ - param3.§521423155722315585123423632234§ * param4.y;
         this.§5214231159231172123423632234§.y = param3.§521423155722315585123423632234§ * param4.x - param3.x * param4.§521423155722315585123423632234§;
         this.§5214231159231172123423632234§.§521423155722315585123423632234§ = param3.x * param4.y - param3.y * param4.x;
         var _loc8_:Number = this.§5214231159231172123423632234§.x * this.§5214231159231172123423632234§.x + this.§5214231159231172123423632234§.y * this.§5214231159231172123423632234§.y + this.§5214231159231172123423632234§.§521423155722315585123423632234§ * this.§5214231159231172123423632234§.§521423155722315585123423632234§;
         if(_loc8_ < 1e-10)
         {
            return true;
         }
         var _loc7_:Number = 1 / Math.sqrt(_loc8_);
         this.§5214231159231172123423632234§.x *= _loc7_;
         this.§5214231159231172123423632234§.y *= _loc7_;
         this.§5214231159231172123423632234§.§521423155722315585123423632234§ *= _loc7_;
         var _loc6_:Number = this.getOverlapOnAxis(param1,param2,this.§5214231159231172123423632234§,param5);
         var _temp_6:* = this;
         var _temp_5:* = _loc6_;
         var _loc11_:§do function else§ = this.§5214231159231172123423632234§;
         var _loc10_:Number = _temp_5;
         var _loc9_:BoxTriangleCollider = _temp_6;
         if(_loc10_ < _loc9_.§in use native§)
         {
            return false;
         }
         else
         {
            if(_loc10_ + _loc9_.§in use native§ < _loc9_.§52142322923242123423632234§)
            {
               _loc9_.§52142322923242123423632234§ = _loc10_;
               _loc9_.§521423119062311919123423632234§.x = _loc11_.x;
               _loc9_.§521423119062311919123423632234§.y = _loc11_.y;
               _loc9_.§521423119062311919123423632234§.§521423155722315585123423632234§ = _loc11_.§521423155722315585123423632234§;
            }
            return true;
         }
      }
   }
}

