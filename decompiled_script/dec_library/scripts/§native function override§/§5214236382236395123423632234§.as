package §native function override§
{
   import flash.filters.ColorMatrixFilter;
   import flash.utils.Dictionary;
   
   public class §5214236382236395123423632234§
   {
      
      private static const §static finally static§:Number = 0.01;
      
      private static var §5214235974235987123423632234§:Dictionary = new Dictionary();
      
      public function §5214236382236395123423632234§()
      {
         super();
      }
      
      private static function §5214231978231991123423632234§(param1:Number, param2:Number) : Boolean
      {
         return Math.abs(param1 - param2) < 0.01;
      }
      
      public static function §use include§(param1:Number, param2:Number, param3:Number, param4:Number) : ColorMatrixFilter
      {
         for(var _loc7_ in §5214235974235987123423632234§)
         {
            if(§5214231978231991123423632234§(param1,_loc7_.b) && §5214231978231991123423632234§(param2,_loc7_.c) && §5214231978231991123423632234§(param3,_loc7_.s) && §5214231978231991123423632234§(param4,_loc7_.h))
            {
               return §5214235974235987123423632234§[_loc7_];
            }
         }
         var _loc8_:§static while native§ = new §static while native§();
         _loc8_.§set const function§ = param1;
         _loc8_.§override set extends§ = param2;
         _loc8_.§implements finally implements§ = param3;
         _loc8_.§521423131822313195123423632234§ = param4;
         var _loc5_:ColorMatrixFilter = new ColorMatrixFilter(_loc8_.§true while function§());
         var _loc6_:Object = {
            "b":param1,
            "c":param2,
            "s":param3,
            "h":param4
         };
         §5214235974235987123423632234§[_loc6_] = _loc5_;
         return _loc5_;
      }
   }
}

