package §521423124962312509123423632234§
{
   import flash.display.BitmapData;
   
   public class §521423148162314829123423632234§
   {
      
      public function §521423148162314829123423632234§()
      {
         super();
      }
      
      public static function §finally package default§(param1:BitmapData) : BitmapData
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:int = param1.width;
         var _loc3_:BitmapData = new BitmapData(_loc2_,param1.height,true);
         while(_loc4_ < _loc2_)
         {
            _loc5_ = 0;
            while(_loc5_ < param1.height)
            {
               _loc3_.setPixel32(_loc4_,_loc5_,param1.getPixel32(_loc2_ - 1 - _loc4_,_loc5_));
               _loc5_++;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public static function §521423180902318103123423632234§(param1:BitmapData) : BitmapData
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,true);
         while(_loc3_ < param1.width)
         {
            _loc4_ = 0;
            while(_loc4_ < param1.height)
            {
               _loc2_.setPixel32(_loc3_,_loc4_,param1.getPixel32(_loc3_,param1.height - 1 - _loc4_));
               _loc4_++;
            }
            _loc3_++;
         }
         return _loc2_;
      }
   }
}

