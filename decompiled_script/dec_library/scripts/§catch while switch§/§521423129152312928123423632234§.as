package §catch while switch§
{
   import §5214236158236171123423632234§.§521423105062310519123423632234§;
   import flash.display.BitmapData;
   import flash.utils.Dictionary;
   
   public class §521423129152312928123423632234§ implements §5214232219232232123423632234§
   {
      
      private var §override set case§:Dictionary = new Dictionary();
      
      public function §521423129152312928123423632234§()
      {
         super();
      }
      
      private function §break for extends§(param1:§521423105062310519123423632234§, param2:BitmapData, param3:Dictionary) : §include use dynamic§
      {
         var _loc4_:§include use dynamic§ = param3["colormap"];
         if(_loc4_ == null)
         {
            _loc4_ = new §include use dynamic§(param1.§5214235203235216123423632234§(param2));
            param3["colormap"] = _loc4_;
         }
         return _loc4_;
      }
      
      public function §52142367423687123423632234§() : void
      {
         var _loc3_:int = 0;
         for each(var _loc2_ in this.§override set case§)
         {
            for each(var _loc1_ in _loc2_)
            {
               _loc1_.§function var function§.dispose();
               _loc3_++;
            }
         }
         this.§override set case§ = new Dictionary();
      }
      
      private function §5214231963231976123423632234§(param1:§521423105062310519123423632234§) : Dictionary
      {
         var _loc2_:Dictionary = this.§override set case§[param1.§while catch class§];
         if(_loc2_ == null)
         {
            _loc2_ = new Dictionary();
            this.§override set case§[param1.§while catch class§] = _loc2_;
         }
         return _loc2_;
      }
      
      public function §521423135432313556123423632234§(param1:§521423105062310519123423632234§, param2:BitmapData) : BitmapData
      {
         var _loc4_:Dictionary = this.§5214231963231976123423632234§(param1);
         var _loc3_:§include use dynamic§ = this.§break for extends§(param1,param2,_loc4_);
         ++_loc3_.§var var final§;
         return _loc3_.§function var function§;
      }
   }
}

