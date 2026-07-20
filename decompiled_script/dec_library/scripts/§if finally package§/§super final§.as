package §if finally package§
{
   public class §super final§
   {
      
      public function §super final§()
      {
         super();
      }
      
      public static function §each var dynamic§(param1:Number, param2:int, param3:Boolean) : String
      {
         if(param3)
         {
            param1 = Math.ceil(param1);
         }
         if(param1 % 1 != 0)
         {
            return String(param1);
         }
         var _loc5_:String = param1.toFixed(param2);
         var _loc4_:String = "";
         if(param2 > 0)
         {
            _loc4_ = _loc5_.substr(_loc5_.length - param2 - 1);
            if(_loc4_ == ".00")
            {
               _loc4_ = "";
            }
            _loc5_ = _loc5_.substr(0,_loc5_.length - param2 - 1);
         }
         while(_loc5_.length > 3)
         {
            _loc4_ = " " + _loc5_.substr(_loc5_.length - 3,3) + _loc4_;
            _loc5_ = _loc5_.substr(0,_loc5_.length - 3);
         }
         return _loc5_ + _loc4_;
      }
   }
}

