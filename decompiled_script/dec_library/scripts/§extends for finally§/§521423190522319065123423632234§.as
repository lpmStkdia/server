package §extends for finally§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   
   public class §521423190522319065123423632234§ extends Bitmap
   {
      
      public function §521423190522319065123423632234§(param1:BitmapData)
      {
         super(param1);
      }
      
      protected static function §5214234043234056123423632234§(param1:int, param2:int) : BitmapData
      {
         var _loc4_:BitmapData = new BitmapData(6,1,true,0);
         param2 <<= 24;
         var _loc3_:int = param2 | param1;
         _loc4_.setPixel32(0,0,_loc3_);
         _loc4_.setPixel32(5,0,_loc3_);
         return _loc4_;
      }
   }
}

