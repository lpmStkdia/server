package alternativa.physics.collision.colliders
{
   import §521423122282312241123423632234§.§final while do§;
   import §5214231886231899123423632234§.§5214231214231227123423632234§;
   import §521423188792318892123423632234§.§521423166662316679123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import flash.geom.Point;
   
   public class PolygonsIntersectionUtils
   {
      
      private static const §521423155262315539123423632234§:Vector.<Point> = new <Point>[new Point(),new Point(),new Point(),new Point(),new Point(),new Point(),new Point(),new Point()];
      
      private static const §override use if§:Vector.<Point> = new <Point>[new Point(),new Point(),new Point(),new Point(),new Point(),new Point(),new Point(),new Point()];
      
      private static const §521423161492316162123423632234§:Vector.<Point> = new <Point>[new Point(),new Point(),new Point(),new Point(),new Point(),new Point(),new Point(),new Point()];
      
      private static var §5214239591239604123423632234§:Vector.<Point> = new <Point>[new Point(),new Point(),new Point(),new Point(),new Point(),new Point(),new Point(),new Point()];
      
      private static var §for const null§:Vector.<Point> = new <Point>[new Point(),new Point(),new Point(),new Point(),new Point(),new Point(),new Point(),new Point()];
      
      private static const point:Point = new Point();
      
      private static const §521423136132313626123423632234§:§do function else§ = new §do function else§();
      
      private static const §521423154752315488123423632234§:§do function else§ = new §do function else§();
      
      public function PolygonsIntersectionUtils()
      {
         super();
      }
      
      private static function d19b0fd6(param1:Point, param2:§do function else§, param3:§do function else§) : Number
      {
         var _loc4_:Number = param2.§true for each§(param3);
         return (_loc4_ - param1.x * param3.x - param1.y * param3.y) / param3.§521423155722315585123423632234§;
      }
      
      private static function b4dd452(param1:Point, param2:Vector.<Point>, param3:int) : void
      {
         var _loc4_:Point = param2[param3];
         _loc4_.x = param1.x;
         _loc4_.y = param1.y;
      }
      
      private static function d61c8da(param1:Point, param2:Point, param3:Point) : Boolean
      {
         var _loc4_:Number = param2.x - param1.x;
         var _loc6_:Number = param2.y - param1.y;
         var _loc7_:Number = param3.x - param1.x;
         var _loc5_:Number = param3.y - param1.y;
         return _loc4_ * _loc5_ - _loc6_ * _loc7_ > 0;
      }
      
      public static function findContacts(param1:§5214231214231227123423632234§, param2:Vector.<Vertex>, param3:int, param4:§5214231214231227123423632234§, param5:Vector.<Vertex>, param6:int, param7:§521423166662316679123423632234§, param8:Vector.<§final while do§>) : void
      {
         var _loc11_:int = 0;
         var _loc12_:Point = null;
         var _loc13_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc14_:§final while do§ = null;
         var _loc10_:§do function else§ = null;
         d42f1297(param2,§521423136132313626123423632234§);
         d42f1297(param5,§521423154752315488123423632234§);
         d34c1c0(param2,param3,§521423155262315539123423632234§);
         d34c1c0(param5,param6,§override use if§);
         var _loc9_:int = c2b31030(§521423155262315539123423632234§,param3,§override use if§,param6,§521423161492316162123423632234§);
         _loc11_ = 0;
         while(_loc11_ < _loc9_)
         {
            _loc12_ = §521423161492316162123423632234§[_loc11_];
            var _temp_3:* = _loc12_;
            var _temp_2:* = param2[0].§native set case§;
            var _loc16_:§do function else§ = §521423136132313626123423632234§;
            var _loc18_:§do function else§ = _temp_2;
            var _loc19_:Point = _temp_3;
            var _loc17_:Number = _loc18_.§true for each§(_loc16_);
            _loc13_ = (_loc17_ - _loc19_.x * _loc16_.x - _loc19_.y * _loc16_.y) / _loc16_.§521423155722315585123423632234§;
            var _temp_6:* = _loc12_;
            var _temp_5:* = param5[0].§native set case§;
            var _loc20_:§do function else§ = §521423154752315488123423632234§;
            var _loc22_:§do function else§ = _temp_5;
            var _loc23_:Point = _temp_6;
            var _loc21_:Number = _loc22_.§true for each§(_loc20_);
            _loc15_ = (_loc21_ - _loc23_.x * _loc20_.x - _loc23_.y * _loc20_.y) / _loc20_.§521423155722315585123423632234§;
            if(_loc15_ > _loc13_)
            {
               _loc14_ = §final while do§.§5214231870231883123423632234§();
               _loc14_.§null set extends§ = param1;
               _loc14_.§try while with§ = param4;
               _loc10_ = _loc14_.§finally package case§;
               _loc10_.x = _loc12_.x;
               _loc10_.y = _loc12_.y;
               _loc10_.§521423155722315585123423632234§ = 0.5 * (_loc13_ + _loc15_);
               _loc10_.§521423147372314750123423632234§(param7);
               _loc14_.§5214235811235824123423632234§ = _loc15_ - _loc13_;
               _loc14_.§5214232051232064123423632234§.x = param7.§521423122302312243123423632234§;
               _loc14_.§5214232051232064123423632234§.y = param7.§final else§;
               _loc14_.§5214232051232064123423632234§.§521423155722315585123423632234§ = param7.§5214237445237458123423632234§;
               param8[param8.length] = _loc14_;
            }
            _loc11_++;
         }
      }
      
      private static function c2b31030(param1:Vector.<Point>, param2:int, param3:Vector.<Point>, param4:int, param5:Vector.<Point>) : int
      {
         var _loc8_:int = 0;
         var _loc10_:Point = null;
         var _loc7_:* = undefined;
         e151e1f4(param3,§5214239591239604123423632234§,param4);
         var _loc6_:int = param4;
         var _loc9_:Point = param1[param2 - 1];
         _loc8_ = 0;
         while(_loc8_ < param2)
         {
            _loc10_ = param1[_loc8_];
            _loc6_ = clip(_loc9_,_loc10_,§5214239591239604123423632234§,§for const null§,_loc6_);
            if(_loc6_ == 0)
            {
               break;
            }
            _loc9_ = _loc10_;
            _loc7_ = §5214239591239604123423632234§;
            §5214239591239604123423632234§ = §for const null§;
            §for const null§ = _loc7_;
            _loc8_++;
         }
         e151e1f4(§5214239591239604123423632234§,param5,_loc6_);
         return _loc6_;
      }
      
      private static function d42f1297(param1:Vector.<Vertex>, param2:§do function else§) : void
      {
         var _loc6_:Vertex = param1[0];
         var _loc7_:Vertex = param1[1];
         var _loc8_:Vertex = param1[2];
         var _loc3_:§do function else§ = _loc6_.§native set case§;
         var _loc4_:§do function else§ = _loc7_.§native set case§;
         var _loc5_:§do function else§ = _loc8_.§native set case§;
         var _loc10_:Number = _loc4_.x - _loc3_.x;
         var _loc12_:Number = _loc4_.y - _loc3_.y;
         var _loc9_:Number = _loc4_.§521423155722315585123423632234§ - _loc3_.§521423155722315585123423632234§;
         var _loc14_:Number = _loc5_.x - _loc3_.x;
         var _loc11_:Number = _loc5_.y - _loc3_.y;
         var _loc13_:Number = _loc5_.§521423155722315585123423632234§ - _loc3_.§521423155722315585123423632234§;
         param2.x = _loc12_ * _loc13_ - _loc9_ * _loc11_;
         param2.y = _loc9_ * _loc14_ - _loc10_ * _loc13_;
         param2.§521423155722315585123423632234§ = _loc10_ * _loc11_ - _loc12_ * _loc14_;
         param2.§class while dynamic§();
      }
      
      private static function clip(param1:Point, param2:Point, param3:Vector.<Point>, param4:Vector.<Point>, param5:int) : int
      {
         var _loc7_:int = 0;
         var _loc8_:Point = null;
         var _loc6_:Boolean = false;
         var _loc11_:Point = param3[param5 - 1];
         var _loc10_:Boolean = d61c8da(param1,param2,_loc11_);
         var _loc9_:int = 0;
         _loc7_ = 0;
         while(_loc7_ < param5)
         {
            _loc8_ = param3[_loc7_];
            _loc6_ = d61c8da(param1,param2,_loc8_);
            if(_loc6_)
            {
               if(!_loc10_)
               {
                  var _temp_5:* = param1;
                  var _temp_4:* = param2;
                  var _temp_3:* = _loc11_;
                  var _temp_2:* = _loc8_;
                  var _loc12_:Point = point;
                  var _loc14_:Point = _temp_2;
                  var _loc13_:Point = _temp_3;
                  var _loc23_:Point = _temp_4;
                  var _loc22_:Point = _temp_5;
                  var _loc19_:Number = _loc23_.x - _loc22_.x;
                  var _loc21_:Number = _loc23_.y - _loc22_.y;
                  var _loc17_:Number = _loc14_.x - _loc13_.x;
                  var _loc20_:Number = _loc14_.y - _loc13_.y;
                  var _loc16_:Number = _loc13_.x - _loc22_.x;
                  var _loc18_:Number = _loc13_.y - _loc22_.y;
                  var _loc15_:Number = (_loc19_ * _loc18_ - _loc21_ * _loc16_) / (_loc21_ * _loc17_ - _loc19_ * _loc20_);
                  _loc12_.x = _loc13_.x + _loc15_ * _loc17_;
                  _loc12_.y = _loc13_.y + _loc15_ * _loc20_;
                  var _temp_7:* = point;
                  var _temp_6:* = param4;
                  var _loc25_:int = _loc9_++;
                  var _loc27_:Vector.<Point> = _temp_6;
                  var _loc26_:Point = _temp_7;
                  var _loc24_:Point = _loc27_[_loc25_];
                  _loc24_.x = _loc26_.x;
                  _loc24_.y = _loc26_.y;
               }
               var _temp_10:* = _loc8_;
               var _temp_9:* = param4;
               var _loc29_:int = _loc9_++;
               var _loc31_:Vector.<Point> = _temp_9;
               var _loc30_:Point = _temp_10;
               var _loc28_:Point = _loc31_[_loc29_];
               _loc28_.x = _loc30_.x;
               _loc28_.y = _loc30_.y;
            }
            else if(_loc10_)
            {
               var _temp_15:* = param1;
               var _temp_14:* = param2;
               var _temp_13:* = _loc11_;
               var _temp_12:* = _loc8_;
               var _loc32_:Point = point;
               var _loc34_:Point = _temp_12;
               var _loc33_:Point = _temp_13;
               var _loc43_:Point = _temp_14;
               var _loc42_:Point = _temp_15;
               var _loc39_:Number = _loc43_.x - _loc42_.x;
               var _loc41_:Number = _loc43_.y - _loc42_.y;
               var _loc37_:Number = _loc34_.x - _loc33_.x;
               var _loc40_:Number = _loc34_.y - _loc33_.y;
               var _loc36_:Number = _loc33_.x - _loc42_.x;
               var _loc38_:Number = _loc33_.y - _loc42_.y;
               var _loc35_:Number = (_loc39_ * _loc38_ - _loc41_ * _loc36_) / (_loc41_ * _loc37_ - _loc39_ * _loc40_);
               _loc32_.x = _loc33_.x + _loc35_ * _loc37_;
               _loc32_.y = _loc33_.y + _loc35_ * _loc40_;
               var _temp_17:* = point;
               var _temp_16:* = param4;
               var _loc45_:int = _loc9_++;
               var _loc47_:Vector.<Point> = _temp_16;
               var _loc46_:Point = _temp_17;
               var _loc44_:Point = _loc47_[_loc45_];
               _loc44_.x = _loc46_.x;
               _loc44_.y = _loc46_.y;
            }
            _loc10_ = _loc6_;
            _loc11_ = _loc8_;
            _loc7_++;
         }
         return _loc9_;
      }
      
      private static function e151e1f4(param1:Vector.<Point>, param2:Vector.<Point>, param3:int) : void
      {
         var _loc6_:int = 0;
         var _loc5_:Point = null;
         var _loc4_:Point = null;
         _loc6_ = 0;
         while(_loc6_ < param3)
         {
            _loc5_ = param1[_loc6_];
            _loc4_ = param2[_loc6_];
            _loc4_.x = _loc5_.x;
            _loc4_.y = _loc5_.y;
            _loc6_++;
         }
      }
      
      private static function b1f8f2ae(param1:Point, param2:Point, param3:Point, param4:Point, param5:Point) : void
      {
         var _loc10_:Number = param2.x - param1.x;
         var _loc12_:Number = param2.y - param1.y;
         var _loc8_:Number = param4.x - param3.x;
         var _loc11_:Number = param4.y - param3.y;
         var _loc7_:Number = param3.x - param1.x;
         var _loc9_:Number = param3.y - param1.y;
         var _loc6_:Number = (_loc10_ * _loc9_ - _loc12_ * _loc7_) / (_loc12_ * _loc8_ - _loc10_ * _loc11_);
         param5.x = param3.x + _loc6_ * _loc8_;
         param5.y = param3.y + _loc6_ * _loc11_;
      }
      
      private static function d34c1c0(param1:Vector.<Vertex>, param2:int, param3:Vector.<Point>) : void
      {
         var _loc6_:int = 0;
         var _loc5_:Vertex = null;
         var _loc4_:Point = null;
         _loc6_ = 0;
         while(_loc6_ < param2)
         {
            _loc5_ = param1[_loc6_];
            _loc4_ = param3[_loc6_];
            _loc4_.x = _loc5_.§native set case§.x;
            _loc4_.y = _loc5_.§native set case§.y;
            _loc6_++;
         }
      }
   }
}

