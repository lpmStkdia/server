package §521423101572310170123423632234§
{
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §521423124172312430123423632234§
   {
      
      public static const §var catch default§:Point = new Point();
      
      public function §521423124172312430123423632234§()
      {
         super();
      }
      
      public static function §5214233917233930123423632234§(param1:BitmapData, param2:BitmapData, param3:Boolean = false) : BitmapData
      {
         var _loc5_:BitmapData = null;
         var _loc4_:BitmapData = new BitmapData(param1.width,param1.height);
         _loc4_.copyPixels(param1,param1.rect,§var catch default§);
         if(param1.width != param2.width || param1.height != param2.height)
         {
            _loc5_ = param2;
            param2 = new BitmapData(param1.width,param1.height);
            param2.draw(_loc5_,new Matrix(param1.width / _loc5_.width,0,0,param1.height / _loc5_.height),null,"normal",null,true);
         }
         _loc4_.copyChannel(param2,param2.rect,§var catch default§,1,8);
         if(_loc5_ != null)
         {
            param2.dispose();
            param2 = _loc5_;
         }
         if(param3)
         {
            param1.dispose();
            param2.dispose();
         }
         return _loc4_;
      }
   }
}

