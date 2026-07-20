package §set function dynamic§
{
   import §521423158432315856123423632234§.§5214231885231898123423632234§;
   import §const break§.§extends use in§;
   import flash.events.Event;
   import flash.utils.Dictionary;
   
   public class §5214233242233255123423632234§ implements §implements for override§
   {
      
      public static var §native function throw§:§extends use in§;
      
      private var §5214231649231662123423632234§:Dictionary;
      
      public function §5214233242233255123423632234§()
      {
         super();
         this.§5214231649231662123423632234§ = new Dictionary();
      }
      
      public function §5214235131235144123423632234§(param1:§5214231885231898123423632234§) : void
      {
         var _loc2_:§static var get§ = this.§5214231649231662123423632234§[param1];
         if(_loc2_ != null)
         {
            _loc2_.removeEventListener("complete",this.§finally package in§);
            _loc2_.§false use var§();
            delete this.§5214231649231662123423632234§[param1];
         }
      }
      
      private function §finally package in§(param1:Event) : void
      {
         var _loc2_:§5214231885231898123423632234§ = §static var get§(param1.target).item;
         §native function throw§.§include switch import§(_loc2_);
         delete this.§5214231649231662123423632234§[_loc2_];
      }
      
      public function §521423171322317145123423632234§(param1:§5214231885231898123423632234§) : Number
      {
         var _loc2_:§static var get§ = this.§5214231649231662123423632234§[param1];
         if(_loc2_ != null)
         {
            return _loc2_.§get while var§;
         }
         return 0;
      }
      
      public function §5214231790231803123423632234§(param1:§5214231885231898123423632234§, param2:uint) : void
      {
         var _loc3_:§static var get§ = new §static var get§(param1,param2);
         this.§5214231649231662123423632234§[param1] = _loc3_;
         _loc3_.addEventListener("complete",this.§finally package in§);
      }
   }
}

