package §catch package dynamic§
{
   import §5214239456239469123423632234§.§521423102312310244123423632234§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.GlowFilter;
   
   public class §else for else§ extends EventDispatcher
   {
      
      private static const §521423135512313564123423632234§:Number = 1.25;
      
      public static var §try while package§:§521423102312310244123423632234§;
      
      private var §521423146112314624123423632234§:Number;
      
      private var §5214233116233129123423632234§:int;
      
      private var §52142338923402123423632234§:Number;
      
      public function §else for else§()
      {
         super();
      }
      
      public static function §continue switch use§(param1:DisplayObject, param2:uint) : void
      {
         var _loc3_:§else for else§ = new §else for else§();
         _loc3_.§continue switch use§(param1,param2);
      }
      
      private function §5214236317236330123423632234§(param1:Event) : void
      {
         var _loc3_:DisplayObject = param1.target as DisplayObject;
         var _loc2_:GlowFilter = new GlowFilter(this.§5214233116233129123423632234§,this.§521423146112314624123423632234§,6,6,4,1,false);
         _loc3_.filters = [_loc2_];
         this.§521423146112314624123423632234§ -= this.§52142338923402123423632234§;
         if(this.§521423146112314624123423632234§ < 0)
         {
            _loc3_.filters = [];
            _loc3_.removeEventListener("enterFrame",this.§5214236317236330123423632234§);
            dispatchEvent(new Event("complete"));
         }
      }
      
      public function §continue switch use§(param1:DisplayObject, param2:uint) : void
      {
         this.§521423146112314624123423632234§ = param1.alpha;
         this.§5214233116233129123423632234§ = param2;
         this.§52142338923402123423632234§ = 1 / (1.25 * §try while package§.§finally var false§());
         param1.addEventListener("enterFrame",this.§5214236317236330123423632234§);
      }
   }
}

