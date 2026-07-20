package §5214236035236048123423632234§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §521423169262316939123423632234§ extends Sprite
   {
      
      private static const §catch const true§:BitmapData = new §catch var extends§(0,0);
      
      private static const §521423169922317005123423632234§:BitmapData = new §set while static§(0,0);
      
      public function §521423169262316939123423632234§(param1:int = 0)
      {
         var _loc4_:Bitmap = null;
         var _loc5_:int = 0;
         var _loc3_:int = 0;
         super();
         var _loc2_:int = int(param1 > 3 ? param1 : 3);
         _loc5_ = 0;
         while(_loc5_ < param1)
         {
            _loc4_ = new Bitmap(§521423169922317005123423632234§);
            _loc4_.x = _loc3_;
            addChild(_loc4_);
            _loc3_ += 12;
            _loc5_++;
         }
         _loc5_ = 0;
         while(_loc5_ < _loc2_ - param1)
         {
            _loc4_ = new Bitmap(§catch const true§);
            _loc4_.x = _loc3_;
            addChild(_loc4_);
            _loc3_ += 12;
            _loc5_++;
         }
      }
   }
}

