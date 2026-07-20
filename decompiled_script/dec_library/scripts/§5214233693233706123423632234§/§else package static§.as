package §5214233693233706123423632234§
{
   import flash.geom.Rectangle;
   
   public class §else package static§
   {
      
      public var §dynamic package null§:Vector.<Rectangle>;
      
      private var §set set var§:Number;
      
      private var §521423126352312648123423632234§:Number;
      
      public function §else package static§(param1:Number, param2:Number, param3:Number = 0)
      {
         super();
         §set set var§ = param1;
         §521423126352312648123423632234§ = param2;
         §dynamic package null§ = new <Rectangle>[new Rectangle(0,param3,param1,param2)];
      }
      
      private function §continue catch§() : void
      {
         var _loc5_:Rectangle = null;
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = int(§dynamic package null§.length);
         while(_loc3_ < _loc1_)
         {
            _loc4_ = _loc3_ + 1;
            _loc5_ = §dynamic package null§[_loc3_];
            while(_loc4_ < _loc1_)
            {
               _loc2_ = §dynamic package null§[_loc4_];
               var _temp_5:* = _loc5_;
               var _loc7_:Rectangle = _loc2_;
               var _loc6_:Rectangle = _temp_5;
               if(§§pop().x >= _loc7_.x && _loc6_.y >= _loc7_.y && _loc6_.x + _loc6_.width <= _loc7_.x + _loc7_.width && _loc6_.y + _loc6_.height <= _loc7_.y + _loc7_.height)
               {
                  §dynamic package null§.removeAt(_loc3_);
                  _loc3_--;
                  _loc1_--;
                  break;
               }
               var _temp_9:* = _loc2_;
               var _loc9_:Rectangle = _loc5_;
               var _loc8_:Rectangle = _temp_9;
               if(§§pop().x >= _loc9_.x && _loc8_.y >= _loc9_.y && _loc8_.x + _loc8_.width <= _loc9_.x + _loc9_.width && _loc8_.y + _loc8_.height <= _loc9_.y + _loc9_.height)
               {
                  §dynamic package null§.removeAt(_loc4_);
                  _loc1_--;
                  _loc4_--;
               }
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      final private function §521423174502317463123423632234§(param1:Number, param2:Number) : Rectangle
      {
         var _loc5_:Number = NaN;
         var _loc4_:Rectangle = null;
         var _loc6_:int = 0;
         var _loc8_:int = 0;
         var _loc3_:* = 2147483647;
         var _loc7_:Rectangle = new Rectangle();
         _loc6_ = 0;
         _loc8_ = int(§dynamic package null§.length);
         while(_loc6_ < _loc8_)
         {
            _loc4_ = §dynamic package null§[_loc6_];
            if(_loc4_.width >= param1 && _loc4_.height >= param2)
            {
               _loc5_ = _loc4_.width * _loc4_.height - param1 * param2;
               if(_loc5_ < _loc3_)
               {
                  _loc7_.x = _loc4_.x;
                  _loc7_.y = _loc4_.y;
                  _loc7_.width = param1;
                  _loc7_.height = param2;
                  _loc3_ = int(_loc5_);
               }
            }
            _loc6_++;
         }
         return _loc7_;
      }
      
      public function §52142345023463123423632234§(param1:Number, param2:Number) : Rectangle
      {
         var _temp_1:* = param1;
         var _loc13_:Number = param2;
         var _loc9_:Number = _temp_1;
         var _loc6_:* = 2147483647;
         var _loc11_:Rectangle = new flash.geom.Rectangle();
         var _loc10_:int = 0;
         var _loc12_:int = int(this.§dynamic package null§.length);
         while(_loc10_ < _loc12_)
         {
            var _loc7_:Rectangle = this.§dynamic package null§[_loc10_];
            if(_loc7_.width >= _loc9_ && _loc7_.height >= _loc13_)
            {
               var _loc8_:Number = _loc7_.width * _loc7_.height - _loc9_ * _loc13_;
               if(_loc8_ < _loc6_)
               {
                  _loc11_.x = _loc7_.x;
                  _loc11_.y = _loc7_.y;
                  _loc11_.width = _loc9_;
                  _loc11_.height = _loc13_;
                  _loc6_ = int(_loc8_);
               }
            }
            _loc10_++;
         }
         var _loc5_:Rectangle = _loc11_;
         if(_loc5_.height == 0)
         {
            return null;
         }
         var _loc3_:int = int(§dynamic package null§.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(§5214232015232028123423632234§(§dynamic package null§[_loc4_],_loc5_))
            {
               §dynamic package null§.removeAt(_loc4_);
               _loc3_--;
               _loc4_--;
            }
            _loc4_++;
         }
         §continue catch§();
         return _loc5_;
      }
      
      final private function §include if§(param1:Rectangle, param2:Rectangle) : Boolean
      {
         return param1.x >= param2.x && param1.y >= param2.y && param1.x + param1.width <= param2.x + param2.width && param1.y + param1.height <= param2.y + param2.height;
      }
      
      private function §5214232015232028123423632234§(param1:Rectangle, param2:Rectangle) : Boolean
      {
         var _loc3_:Rectangle = null;
         if(param2.x >= param1.x + param1.width || param2.x + param2.width <= param1.x || param2.y >= param1.y + param1.height || param2.y + param2.height <= param1.y)
         {
            return false;
         }
         if(param2.x < param1.x + param1.width && param2.x + param2.width > param1.x)
         {
            if(param2.y > param1.y && param2.y < param1.y + param1.height)
            {
               _loc3_ = param1.clone();
               _loc3_.height = param2.y - _loc3_.y;
               §dynamic package null§[§dynamic package null§.length] = _loc3_;
            }
            if(param2.y + param2.height < param1.y + param1.height)
            {
               _loc3_ = param1.clone();
               _loc3_.y = param2.y + param2.height;
               _loc3_.height = param1.y + param1.height - (param2.y + param2.height);
               §dynamic package null§[§dynamic package null§.length] = _loc3_;
            }
         }
         if(param2.y < param1.y + param1.height && param2.y + param2.height > param1.y)
         {
            if(param2.x > param1.x && param2.x < param1.x + param1.width)
            {
               _loc3_ = param1.clone();
               _loc3_.width = param2.x - _loc3_.x;
               §dynamic package null§[§dynamic package null§.length] = _loc3_;
            }
            if(param2.x + param2.width < param1.x + param1.width)
            {
               _loc3_ = param1.clone();
               _loc3_.x = param2.x + param2.width;
               _loc3_.width = param1.x + param1.width - (param2.x + param2.width);
               §dynamic package null§[§dynamic package null§.length] = _loc3_;
            }
         }
         return true;
      }
   }
}

