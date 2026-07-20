package §521423180552318068123423632234§
{
   import §521423101572310170123423632234§.§521423124172312430123423632234§;
   import §5214234310234323123423632234§.§break while override§;
   import §false finally function§.§5214234851234864123423632234§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import §with var final§.§5214239766239779123423632234§;
   import §with var final§.§continue extends§;
   import §with var final§.§use use native§;
   
   public class §const switch each§
   {
      
      private static const §implements for in§:int = 26;
      
      private static var §const const switch§:BitmapData;
      
      private static const §final function class§:Vector.<BitmapData> = new <BitmapData>[new §use use native§(0,0),new §continue extends§(0,0),new §5214239766239779123423632234§(0,0)];
      
      private static const §set for true§:Vector.<BitmapData> = new Vector.<BitmapData>(8);
      
      public function §const switch each§()
      {
         super();
      }
      
      private static function §5214237625237638123423632234§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§break while override§ = new §break while override§();
         _loc2_.bold = true;
         _loc2_.§5214239166239179123423632234§ = 17;
         §const const switch§ = new BitmapData(182,26,true,0);
         var _loc3_:Matrix = new Matrix();
         _loc1_ = 0;
         while(_loc1_ < 7)
         {
            _loc2_.text = String.fromCharCode(65 + _loc1_);
            _loc3_.tx = _loc1_ * 26 + (26 - _loc2_.width) / 2;
            if(_loc1_ == 0 || _loc1_ == 2 || _loc1_ == 4 || _loc1_ == 5)
            {
               _loc3_.tx -= 1;
            }
            _loc3_.ty = 1 + (26 - _loc2_.height) / 2;
            §const const switch§.draw(_loc2_,_loc3_);
            _loc1_++;
         }
      }
      
      public static function §521423137472313760123423632234§(param1:§5214234851234864123423632234§) : BitmapData
      {
         return §final function class§[param1.value];
      }
      
      public static function §return super const§(param1:String) : BitmapData
      {
         var _loc3_:int = param1.charCodeAt(0) - 65;
         var _loc2_:BitmapData = §set for true§[_loc3_];
         if(_loc2_ == null)
         {
            if(§const const switch§ == null)
            {
               §5214237625237638123423632234§();
            }
            _loc2_ = new BitmapData(26,§const const switch§.height,true,0);
            _loc2_.copyPixels(§const const switch§,new Rectangle(_loc3_ * 26,0,26,§const const switch§.height),§521423124172312430123423632234§.§var catch default§);
            §set for true§[_loc3_] = _loc2_;
         }
         return _loc2_;
      }
   }
}

