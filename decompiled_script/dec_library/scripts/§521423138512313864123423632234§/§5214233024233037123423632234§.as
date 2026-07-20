package §521423138512313864123423632234§
{
   public class §5214233024233037123423632234§
   {
      
      public function §5214233024233037123423632234§()
      {
         super();
      }
      
      public static function §521423169102316923123423632234§(param1:Number, param2:Boolean = true) : String
      {
         var _loc6_:int = 0;
         var _loc5_:Vector.<String> = new Vector.<String>();
         var _loc3_:String = param2 ? String(int(param1)) : String(Math.round(param1));
         var _loc4_:int = _loc3_.length - int(_loc3_.length / 3) * 3;
         if(_loc4_ > 0)
         {
            _loc3_ = (_loc4_ == 1 ? "  " : " ") + _loc3_;
         }
         while(_loc6_ < _loc3_.length)
         {
            _loc5_[_loc5_.length] = _loc3_.substr(_loc6_,3);
            _loc6_ += 3;
         }
         _loc3_ = _loc5_.join(" ");
         if(_loc4_ > 0)
         {
            _loc3_ = _loc3_.substr(3 - _loc4_);
         }
         return _loc3_ + (param2 ? param1.toFixed(10).substr(-11,3) : "");
      }
   }
}

