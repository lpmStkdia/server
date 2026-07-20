package §override use package§
{
   import §521423104422310455123423632234§.§521423166812316694123423632234§;
   import §521423116102311623123423632234§.§5214233093233106123423632234§;
   import §521423116102311623123423632234§.§try catch include§;
   
   public class §5214239807239820123423632234§ extends §try catch include§
   {
      
      public var §521423141422314155123423632234§:int = 10;
      
      public function §5214239807239820123423632234§()
      {
         super();
         §5214231216231229123423632234§ = 6;
      }
      
      private function §521423131482313161123423632234§(param1:§521423166812316694123423632234§) : void
      {
         var _loc2_:§5214233093233106123423632234§ = param1.§52142355823571123423632234§;
         _loc2_.x = -_loc2_.width - 10;
         _loc2_.removeEventListener("updateUid",this.§5214233302233315123423632234§);
      }
      
      private function §5214233302233315123423632234§(param1:§521423166812316694123423632234§) : void
      {
         var _loc2_:§5214233093233106123423632234§ = param1.§52142355823571123423632234§;
         if(§521423172712317284123423632234§.contains(_loc2_))
         {
            §5214232830232843123423632234§();
         }
         _loc2_.removeEventListener("KillMe",this.§5214233302233315123423632234§);
      }
      
      override public function §5214232830232843123423632234§(param1:Boolean = false) : §5214233093233106123423632234§
      {
         var _loc2_:§5214233093233106123423632234§ = super.§5214232830232843123423632234§(param1);
         var _loc3_:§case var get§ = _loc2_ as §case var get§;
         if(_loc3_ != null)
         {
            _loc3_.§521423129592312972123423632234§();
         }
         return _loc2_;
      }
      
      public function §each for implements§(param1:§case var get§) : void
      {
         var _loc2_:§case var get§ = null;
         §get while null§(param1);
         if(§521423172712317284123423632234§.numChildren > this.§521423141422314155123423632234§)
         {
            _loc2_ = §5214232830232843123423632234§() as §case var get§;
            if(_loc2_ != null)
            {
               _loc2_.removeEventListener("KillMe",this.§5214233302233315123423632234§);
               _loc2_.removeEventListener("updateUid",this.§521423131482313161123423632234§);
            }
         }
         param1.addEventListener("KillMe",this.§5214233302233315123423632234§);
         param1.addEventListener("updateUid",this.§521423131482313161123423632234§);
         param1.x = -param1.width - 10;
      }
   }
}

