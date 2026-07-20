package §521423169482316961123423632234§
{
   import flash.display.DisplayObject;
   
   public class §do set import§
   {
      
      private var §default catch implements§:int;
      
      private var §521423121922312205123423632234§:int;
      
      private var §5214237722237735123423632234§:int;
      
      private var §5214232437232450123423632234§:int;
      
      private var §521423165862316599123423632234§:int;
      
      public function §do set import§(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         this.§default catch implements§ = param1;
         this.§521423121922312205123423632234§ = param2;
         this.§5214237722237735123423632234§ = param3;
         this.§5214232437232450123423632234§ = param4;
      }
      
      public function §521423128332312846123423632234§() : int
      {
         return this.§521423165862316599123423632234§;
      }
      
      public function §521423160012316014123423632234§(param1:int) : void
      {
         this.§521423165862316599123423632234§ = param1;
      }
      
      public function §import package false§(param1:Array) : int
      {
         var _loc5_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc6_:DisplayObject = null;
         var _loc2_:int = 0;
         _loc5_ = 0;
         while(_loc5_ < param1.length)
         {
            _loc3_ = param1[_loc5_];
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               if(_loc3_[_loc4_] != null)
               {
                  _loc6_ = _loc3_[_loc4_];
                  _loc6_.x = this.§default catch implements§ + _loc4_ * this.§5214237722237735123423632234§;
                  _loc6_.y = this.§521423121922312205123423632234§ + _loc5_ * this.§5214232437232450123423632234§ + this.§521423165862316599123423632234§ * _loc5_;
                  _loc2_ = _loc6_.y + _loc6_.height;
               }
               _loc4_++;
            }
            _loc5_++;
         }
         return _loc2_;
      }
   }
}

