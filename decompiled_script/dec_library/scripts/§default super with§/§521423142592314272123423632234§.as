package §default super with§
{
   import §521423188792318892123423632234§.§521423136762313689123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import §5214238500238513123423632234§.§switch use static§;
   import §extends const override§.§521423177842317797123423632234§;
   import flash.display.BitmapData;
   import flash.geom.ColorTransform;
   import §true catch false§.§52142358423597123423632234§;
   
   public class §521423142592314272123423632234§
   {
      
      public function §521423142592314272123423632234§()
      {
         super();
      }
      
      public static function §default finally else§(param1:§521423177842317797123423632234§, param2:Number) : ColorTransform
      {
         var _loc7_:§switch use static§ = null;
         var _loc13_:§switch use static§ = null;
         var _loc8_:§521423136762313689123423632234§ = null;
         var _loc10_:§do function else§ = null;
         var _loc6_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc14_:ColorTransform = null;
         if(!§52142358423597123423632234§.§5214232292232305123423632234§ || §52142358423597123423632234§.§try const const§)
         {
            _loc7_ = new §switch use static§(param1.§52142393223945123423632234§);
            _loc13_ = new §switch use static§(param1.§static package default§);
            _loc7_.§5214231855231868123423632234§(_loc13_);
            _loc8_ = new §521423136762313689123423632234§();
            _loc8_.§set const get§(param1.§5214234458234471123423632234§,0,param1.§finally set class§);
            _loc10_ = new §do function else§(0,1,0);
            _loc10_.§true switch override§(_loc8_);
            _loc10_.§class while dynamic§();
            _loc6_ = (_loc10_.§521423155722315585123423632234§ > 0 ? _loc10_.§521423155722315585123423632234§ : -_loc10_.§521423155722315585123423632234§) * param2;
            _loc9_ = (_loc13_.§521423115122311525123423632234§() >> 16 & 0xFF) / 255;
            _loc4_ = (_loc13_.§521423115122311525123423632234§() >> 8 & 0xFF) / 255;
            _loc3_ = (_loc13_.§521423115122311525123423632234§() & 0xFF) / 255;
            _loc5_ = (_loc7_.§521423115122311525123423632234§() >> 16 & 0xFF) / 255;
            _loc12_ = (_loc7_.§521423115122311525123423632234§() >> 8 & 0xFF) / 255;
            _loc11_ = (_loc7_.§521423115122311525123423632234§() & 0xFF) / 255;
            _loc14_ = new ColorTransform();
            _loc14_.redMultiplier = 2 * (_loc9_ + _loc5_ * _loc6_);
            _loc14_.greenMultiplier = 2 * (_loc4_ + _loc12_ * _loc6_);
            _loc14_.blueMultiplier = 2 * (_loc3_ + _loc11_ * _loc6_);
            return _loc14_;
         }
         return null;
      }
      
      public static function §5214239217239230123423632234§(param1:BitmapData, param2:ColorTransform) : BitmapData
      {
         var _loc3_:BitmapData = param1.clone();
         _loc3_.colorTransform(_loc3_.rect,param2);
         return _loc3_;
      }
      
      public static function clone(param1:ColorTransform) : ColorTransform
      {
         if(param1 == null)
         {
            return null;
         }
         return new ColorTransform(param1.redMultiplier,param1.greenMultiplier,param1.blueMultiplier,param1.alphaMultiplier,param1.redOffset,param1.greenOffset,param1.blueOffset,param1.alphaOffset);
      }
      
      public static function §return throw§(param1:ColorTransform, param2:ColorTransform) : Boolean
      {
         if(param1 == param2)
         {
            return true;
         }
         if(param1 == null || param2 == null)
         {
            return false;
         }
         return param1.redMultiplier == param2.redMultiplier && param1.greenMultiplier == param2.greenMultiplier && param1.blueMultiplier == param2.blueMultiplier && param1.alphaMultiplier == param2.alphaMultiplier && param1.redOffset == param2.redOffset && param1.greenOffset == param2.greenOffset && param1.blueOffset == param2.blueOffset && param1.alphaOffset == param2.alphaOffset;
      }
      
      public static function toString(param1:ColorTransform) : String
      {
         if(param1 == null)
         {
            return "null";
         }
         return param1.toString();
      }
   }
}

