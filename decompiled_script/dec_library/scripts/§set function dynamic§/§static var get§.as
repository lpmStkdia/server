package §set function dynamic§
{
   import §521423158432315856123423632234§.§5214231885231898123423632234§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §static var get§ extends EventDispatcher
   {
      
      private var §521423133472313360123423632234§:§5214231885231898123423632234§;
      
      private var §521423123192312332123423632234§:Timer;
      
      private var §521423167102316723123423632234§:Number;
      
      private var §5214234713234726123423632234§:Number;
      
      public function §static var get§(param1:§5214231885231898123423632234§, param2:uint)
      {
         super();
         this.§521423133472313360123423632234§ = param1;
         this.§5214234713234726123423632234§ = param2;
         this.§521423167102316723123423632234§ = getTimer();
         this.§521423123192312332123423632234§ = new Timer(1000);
         this.§521423123192312332123423632234§.addEventListener("timer",this.§override const package§);
         this.§521423123192312332123423632234§.start();
      }
      
      private function §override const package§(param1:TimerEvent) : void
      {
         var _loc2_:uint = (getTimer() - this.§521423167102316723123423632234§) / 1000;
         if(_loc2_ > this.§5214234713234726123423632234§)
         {
            dispatchEvent(new Event("complete"));
            this.§521423123192312332123423632234§.stop();
            this.§false use var§();
         }
      }
      
      public function get §override finally false§() : §5214231885231898123423632234§
      {
         return this.§521423133472313360123423632234§;
      }
      
      public function §false use var§() : void
      {
         if(this.§521423123192312332123423632234§ != null)
         {
            this.§521423123192312332123423632234§.removeEventListener("timer",this.§override const package§);
            this.§521423123192312332123423632234§.stop();
            this.§521423123192312332123423632234§ = null;
         }
      }
      
      public function get §get while var§() : Number
      {
         return this.§5214234713234726123423632234§ * 1000 - (getTimer() - this.§521423167102316723123423632234§);
      }
   }
}

