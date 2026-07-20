package §implements use var§
{
   import flash.display.BitmapData;
   
   public class §try var package§ extends BitmapData
   {
      
      public function §try var package§(param1:uint, param2:uint = 20, param3:uint = 20)
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         super(param2,param3,false,0);
         while(_loc4_ < param2)
         {
            _loc5_ = 0;
            while(_loc5_ < param3)
            {
               setPixel(_loc4_ % 2 == 1 ? _loc5_ : _loc5_ + 1,_loc4_,param1);
               _loc5_ += 2;
            }
            _loc4_++;
         }
      }
   }
}

