package §static set override§
{
   import §521423188942318907123423632234§.§5214233114233127123423632234§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class §5214233453233466123423632234§ extends §include switch for§
   {
      
      public function §5214233453233466123423632234§()
      {
         super();
      }
      
      override protected function §5214239118239131123423632234§(param1:int) : Bitmap
      {
         return new Bitmap(§521423188122318825123423632234§.§5214239796239809123423632234§[param1 - 1]);
      }
      
      override protected function §with while true§(param1:int) : Bitmap
      {
         var _loc3_:BitmapData = null;
         var _loc2_:BitmapData = null;
         var _loc5_:Matrix = null;
         var _loc4_:Vector.<BitmapData> = §521423163702316383123423632234§.§5214239796239809123423632234§;
         if(_loc4_[param1 - 1] == null)
         {
            _loc3_ = new §5214233114233127123423632234§(0,0);
            _loc2_ = §521423188122318825123423632234§.§5214239796239809123423632234§[param1 - 1];
            _loc5_ = new Matrix();
            _loc5_.tx = 37 - _loc2_.width / 2;
            _loc5_.ty = 37 - _loc2_.height / 2;
            if(param1 == 1 || param1 == 2)
            {
               _loc5_.ty += 2;
            }
            else if(param1 == 4)
            {
               _loc5_.ty += 1;
            }
            else if(param1 == 24 || param1 == 28)
            {
               _loc5_.ty -= 1;
            }
            else if(param1 == 14 || param1 == 12 || param1 == 21 || param1 == 23 || param1 == 25 || param1 == 27)
            {
               _loc5_.ty -= 2;
            }
            else if(param1 == 11 || param1 == 20 || param1 == 26)
            {
               _loc5_.ty -= 3;
            }
            _loc3_.draw(_loc2_,_loc5_);
            _loc4_[param1 - 1] = _loc3_;
         }
         return new Bitmap(_loc4_[param1 - 1]);
      }
   }
}

