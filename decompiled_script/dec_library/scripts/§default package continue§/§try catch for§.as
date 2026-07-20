package §default package continue§
{
   import §521423101572310170123423632234§.§521423124172312430123423632234§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §try catch for§
   {
      
      public function §try catch for§()
      {
         super();
      }
      
      public static function §catch switch include§(param1:BitmapData, param2:BitmapData) : Bitmap
      {
         var _loc5_:Number = param1.width;
         var _loc6_:Number = param1.height;
         var _loc4_:BitmapData = new BitmapData(_loc5_,_loc6_,true,0);
         var _loc3_:Rectangle = new Rectangle(0,0,_loc5_,_loc6_);
         _loc4_.copyPixels(param1,_loc3_,§521423124172312430123423632234§.§var catch default§);
         _loc4_.copyChannel(param2,_loc3_,§521423124172312430123423632234§.§var catch default§,1,8);
         param1.dispose();
         param2.dispose();
         return new Bitmap(_loc4_);
      }
   }
}

