package §static set override§
{
   import §521423188942318907123423632234§.§521423189442318957123423632234§;
   import §521423188942318907123423632234§.§5214236907236920123423632234§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class §521423110152311028123423632234§ extends §include switch for§
   {
      
      private static const §5214234877234890123423632234§:Bitmap = new Bitmap(new BitmapData(1,1));
      
      public function §521423110152311028123423632234§(param1:int = 1)
      {
         super();
         §null package§(param1);
      }
      
      override protected function §5214239118239131123423632234§(param1:int) : Bitmap
      {
         if(param1 <= 0 || param1 > §521423188122318825123423632234§.§521423112472311260123423632234§.length)
         {
            return §5214234877234890123423632234§;
         }
         return new Bitmap(§521423188122318825123423632234§.§521423112472311260123423632234§[param1 - 1]);
      }
      
      override protected function §with while true§(param1:int) : Bitmap
      {
         var _loc4_:BitmapData = null;
         var _loc3_:BitmapData = null;
         var _loc5_:Matrix = null;
         if(param1 <= 0 || param1 > §521423163702316383123423632234§.§521423112472311260123423632234§.length)
         {
            return §5214234877234890123423632234§;
         }
         var _loc2_:Vector.<BitmapData> = §521423163702316383123423632234§.§521423112472311260123423632234§;
         if(_loc2_[param1 - 1] == null)
         {
            if(param1 == 13 || param1 == 14 || param1 == 15)
            {
               _loc4_ = new §521423189442318957123423632234§(0,0);
            }
            else
            {
               _loc4_ = new §5214236907236920123423632234§(0,0);
            }
            _loc3_ = §521423188122318825123423632234§.§521423112472311260123423632234§[param1 - 1];
            _loc5_ = new Matrix();
            _loc5_.tx = int(9 - _loc3_.width / 2);
            _loc5_.ty = int(9 - _loc3_.height / 2);
            if(param1 == 8 || param1 == 9 || param1 == 10 || param1 == 12 || param1 == 13 || param1 == 14 || param1 == 15 || param1 == 20 || param1 == 24)
            {
               _loc5_.ty -= 1;
            }
            else if(param1 == 30 || param1 == 29 || param1 == 27 || param1 == 28 || param1 == 26)
            {
               _loc5_.tx += 1;
            }
            else if(param1 == 23)
            {
               _loc5_.ty -= 1;
               _loc5_.tx += 1;
            }
            else if(param1 == 22 || param1 == 21 || param1 == 16 || param1 == 17 || param1 == 18 || param1 == 19 || param1 == 25)
            {
               _loc5_.tx += 1;
            }
            _loc4_.draw(_loc3_,_loc5_);
            _loc2_[param1 - 1] = _loc4_;
         }
         return new Bitmap(_loc2_[param1 - 1]);
      }
   }
}

