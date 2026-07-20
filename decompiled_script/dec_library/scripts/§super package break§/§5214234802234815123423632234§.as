package §super package break§
{
   import §521423102462310259123423632234§.§else set null§;
   import §521423130372313050123423632234§.§finally for while§;
   import §521423150582315071123423632234§.§5214235218235231123423632234§;
   import §521423150582315071123423632234§.§5214237881237894123423632234§;
   import §5214233678233691123423632234§.§set finally super§;
   import §5214234445234458123423632234§.§521423122492312262123423632234§;
   import §5214234445234458123423632234§.§do use for§;
   import §continue switch case§.§dynamic const break§;
   import §continue switch case§.§each var else§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import §null const else§.§521423177422317755123423632234§;
   
   public class §5214234802234815123423632234§ implements §while while const§, §else set null§
   {
      
      public static var §class function package§:§each var else§;
      
      public static var §521423113722311385123423632234§:§set finally super§;
      
      public static var §with const for§:§521423122492312262123423632234§;
      
      public static var §throw switch use§:§5214237881237894123423632234§;
      
      private var §throw use for§:Vector.<§521423177422317755123423632234§>;
      
      private var §5214231982231995123423632234§:Vector.<§521423177422317755123423632234§>;
      
      public function §5214234802234815123423632234§()
      {
         super();
         this.§throw use for§ = new Vector.<§521423177422317755123423632234§>();
         this.§5214231982231995123423632234§ = new Vector.<§521423177422317755123423632234§>();
      }
      
      private static function §get use each§(param1:DisplayObject) : void
      {
         param1.x = §class function package§.stage.stageWidth / §dynamic const break§.§5214231303231316123423632234§ - param1.width >> 1;
         param1.y = §class function package§.stage.stageHeight / §dynamic const break§.§5214231303231316123423632234§ - param1.height >> 1;
      }
      
      public function §521423139512313964123423632234§(param1:§521423177422317755123423632234§) : void
      {
         §get use each§(param1);
      }
      
      public function §var const else§(param1:§521423177422317755123423632234§) : void
      {
         var _loc2_:int = this.§throw use for§.indexOf(param1);
         if(_loc2_ < 0)
         {
            return;
         }
         this.§throw use for§.removeAt(this.§throw use for§.indexOf(param1));
         if(this.§throw use for§.length == 0 && this.§5214231982231995123423632234§.length > 0)
         {
            this.§throw use for§.push(this.§5214231982231995123423632234§.pop());
         }
         this.§521423121292312142123423632234§(param1,this.§throw use for§.length == 0);
         if(this.§throw use for§.length > 0)
         {
            this.§for for import§(this.§throw use for§[0],false);
         }
         else
         {
            §class function package§.stage.removeEventListener("resize",this.§use use static§);
         }
      }
      
      private function §use use static§(param1:Event) : void
      {
         if(this.§throw use for§.length > 0)
         {
            §get use each§(this.§throw use for§[0]);
         }
      }
      
      private function §for for import§(param1:§521423177422317755123423632234§, param2:Boolean) : void
      {
         if(param2)
         {
            §521423113722311385123423632234§.§extends switch try§();
         }
         §get use each§(param1);
         §with const for§.addEventListener("DialogWindowsDispatcherServiceEvent.FORCIBLY_CLOSE",this.§use for else§);
         §with const for§.§521423142772314290123423632234§();
         this.§521423129532312966123423632234§.addChild(param1);
         param1.§521423134592313472123423632234§();
      }
      
      private function §use for else§(param1:§do use for§) : void
      {
         for each(var _loc2_ in this.§throw use for§.concat())
         {
            _loc2_.§5214233571233584123423632234§();
         }
      }
      
      private function §521423121292312142123423632234§(param1:§521423177422317755123423632234§, param2:Boolean) : void
      {
         if(this.§521423129532312966123423632234§.contains(param1))
         {
            param1.§5214234539234552123423632234§();
            this.§521423129532312966123423632234§.removeChild(param1);
            §with const for§.removeEventListener("DialogWindowsDispatcherServiceEvent.FORCIBLY_CLOSE",this.§use for else§);
            §with const for§.§override catch get§();
         }
         if(param2)
         {
            §521423113722311385123423632234§.§521423107012310714123423632234§();
         }
      }
      
      public function §break use get§(param1:§finally for while§) : void
      {
         if(this.§throw use for§.length > 0)
         {
            this.§521423121292312142123423632234§(this.§throw use for§[0],true);
            §class function package§.stage.removeEventListener("resize",this.§use use static§);
         }
         this.§throw use for§.length = 0;
         this.§5214231982231995123423632234§.length = 0;
      }
      
      private function §521423120452312058123423632234§(param1:§5214235218235231123423632234§) : void
      {
         if(this.§5214231982231995123423632234§.length > 0)
         {
            this.§521423128252312838123423632234§(this.§5214231982231995123423632234§.pop());
            §throw switch use§.removeEventListener("tipsLoadingCompleted",this.§521423120452312058123423632234§);
         }
      }
      
      private function get §521423129532312966123423632234§() : DisplayObjectContainer
      {
         return §class function package§.§521423129532312966123423632234§;
      }
      
      public function §521423128252312838123423632234§(param1:§521423177422317755123423632234§) : void
      {
         if(this.§throw use for§.indexOf(param1) > -1)
         {
            return;
         }
         this.§throw use for§.unshift(param1);
         if(this.§throw use for§.length > 1)
         {
            this.§521423121292312142123423632234§(this.§throw use for§[1],false);
         }
         this.§for for import§(param1,this.§throw use for§.length == 1);
         if(this.§throw use for§.length == 1)
         {
            §class function package§.stage.addEventListener("resize",this.§use use static§,false,-1);
         }
      }
      
      public function §52142399892310002123423632234§(param1:§521423177422317755123423632234§) : void
      {
         if(§throw switch use§.§class for break§())
         {
            this.§5214231982231995123423632234§.unshift(param1);
            §throw switch use§.addEventListener("tipsLoadingCompleted",this.§521423120452312058123423632234§);
            return;
         }
         if(this.§throw use for§.length == 0)
         {
            this.§521423128252312838123423632234§(param1);
         }
         else
         {
            this.§5214231982231995123423632234§.unshift(param1);
         }
      }
   }
}

