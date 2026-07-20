package §5214238907238920123423632234§
{
   import §521423150222315035123423632234§.§include use override§;
   import §521423169482316961123423632234§.§52142336323376123423632234§;
   import §521423169482316961123423632234§.§false set get§;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   import §static catch do§.§static set in§;
   import §true const if§.§do set catch§;
   
   public class §5214231127231140123423632234§ extends §include use override§
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      private var §if super for§:Vector.<§52142336323376123423632234§> = new Vector.<§52142336323376123423632234§>(4);
      
      private var §dynamic in§:§do super const§;
      
      private var §521423187932318806123423632234§:§do set catch§ = new §do set catch§();
      
      public function §5214231127231140123423632234§()
      {
         super();
         this.§521423187932318806123423632234§.§in catch catch§(8);
         addChild(this.§521423187932318806123423632234§);
      }
      
      override public function get width() : Number
      {
         return this.§521423187932318806123423632234§.width;
      }
      
      override public function get height() : Number
      {
         return this.§if super for§[0].height;
      }
      
      public function §false use var§() : void
      {
         for each(var _loc1_ in this.§if super for§)
         {
            _loc1_.removeEventListener("click",this.§521423117702311783123423632234§);
         }
      }
      
      private function §521423117702311783123423632234§(param1:MouseEvent) : void
      {
         var _loc2_:§52142336323376123423632234§ = §52142336323376123423632234§(param1.currentTarget);
         var _loc3_:§do super const§ = _loc2_.§521423184792318492123423632234§();
         if(this.§dynamic in§ != _loc3_)
         {
            this.§case switch null§(_loc3_);
         }
      }
      
      public function §case switch null§(param1:§do super const§) : void
      {
         if(this.§dynamic in§ != null)
         {
            this.§if super for§[this.§dynamic in§.value].enabled = true;
         }
         this.§if super for§[param1.value].enabled = false;
         this.§dynamic in§ = param1;
         dispatchEvent(new §5214231531231544123423632234§(param1));
      }
      
      public function §52142325123264123423632234§(param1:§do super const§) : void
      {
         switch(param1)
         {
            case §do super const§.§521423160972316110123423632234§:
               this.§521423187932318806123423632234§.§52142341723430123423632234§(this.§5214239187239200123423632234§(§do super const§.§521423160972316110123423632234§,§521423164582316471123423632234§.§521423157602315773123423632234§("SETTINGS_TAB_NAME_GAME"),§false set get§.§5214233271233284123423632234§));
               break;
            case §do super const§.§set function const§:
               this.§521423187932318806123423632234§.§52142341723430123423632234§(this.§5214239187239200123423632234§(§do super const§.§set function const§,§521423164582316471123423632234§.§521423157602315773123423632234§("SETTINGS_TAB_NAME_GRAPHICS"),§false set get§.§5214235153235166123423632234§));
               break;
            case §do super const§.§521423164292316442123423632234§:
               this.§521423187932318806123423632234§.§52142341723430123423632234§(this.§5214239187239200123423632234§(§do super const§.§521423164292316442123423632234§,§521423164582316471123423632234§.§521423157602315773123423632234§("SETTINGS_TAB_NAME_ACCOUNT"),§false set get§.§5214237591237604123423632234§));
               break;
            case §do super const§.§return var const§:
               this.§521423187932318806123423632234§.§52142341723430123423632234§(this.§5214239187239200123423632234§(§do super const§.§return var const§,§521423164582316471123423632234§.§521423157602315773123423632234§("SETTINGS_TAB_NAME_CONTROLS"),§false set get§.§catch function finally§));
         }
      }
      
      private function §5214239187239200123423632234§(param1:§do super const§, param2:String, param3:BitmapData) : §52142336323376123423632234§
      {
         var _loc4_:§52142336323376123423632234§ = new §52142336323376123423632234§(param1,param2,param3);
         _loc4_.width = 104;
         this.§if super for§[param1.value] = _loc4_;
         _loc4_.addEventListener("click",this.§521423117702311783123423632234§);
         return _loc4_;
      }
   }
}

