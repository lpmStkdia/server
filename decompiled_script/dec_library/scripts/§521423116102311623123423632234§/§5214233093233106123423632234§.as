package §521423116102311623123423632234§
{
   import §521423104422310455123423632234§.§521423166812316694123423632234§;
   import §5214235974235987123423632234§.§521423114642311477123423632234§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.setTimeout;
   
   public class §5214233093233106123423632234§ extends Sprite
   {
      
      private static const §521423153842315397123423632234§:int = 30000;
      
      protected var §5214236537236550123423632234§:Boolean = true;
      
      private var §521423119752311988123423632234§:Timer;
      
      private var §function for var§:Boolean = false;
      
      private var §const for continue§:Boolean = false;
      
      protected var §5214231231231244123423632234§:Sprite = new Sprite();
      
      public function §5214233093233106123423632234§()
      {
         super();
         this.§5214231231231244123423632234§.filters = §521423114642311477123423632234§.§final set each§;
         addChild(this.§5214231231231244123423632234§);
         addEventListener("addedToStage",this.§const use use§);
      }
      
      private function §const use use§(param1:Event) : void
      {
         setTimeout(this.§dynamic switch dynamic§,30000);
      }
      
      public function §5214239412239425123423632234§() : void
      {
         this.§function for var§ = false;
         if(this.§const for continue§)
         {
            this.§extends super finally§();
         }
      }
      
      private function §dynamic switch dynamic§() : void
      {
         this.§const for continue§ = true;
         if(!this.§function for var§)
         {
            this.§extends super finally§();
         }
      }
      
      public function §52142332823341123423632234§() : void
      {
         alpha = 1;
         removeEventListener("addedToStage",this.§const use use§);
         this.§function for var§ = true;
      }
      
      private function §throw§(param1:TimerEvent) : void
      {
         if(!this.§function for var§)
         {
            alpha -= 0.05;
         }
         else
         {
            this.§521423119752311988123423632234§.stop();
            alpha = 1;
         }
      }
      
      public function get §521423133822313395123423632234§() : Boolean
      {
         return this.§5214236537236550123423632234§;
      }
      
      private function §extends super finally§() : void
      {
         this.§521423119752311988123423632234§ = new Timer(50,20);
         this.§521423119752311988123423632234§.addEventListener("timer",this.§throw§);
         this.§521423119752311988123423632234§.addEventListener("timerComplete",this.§native function final§);
         this.§521423119752311988123423632234§.start();
      }
      
      private function §native function final§(param1:TimerEvent) : void
      {
         this.§5214236537236550123423632234§ = false;
         dispatchEvent(new §521423166812316694123423632234§("KillMe",this));
         removeEventListener("addedToStage",this.§const use use§);
      }
   }
}

