package §521423142652314278123423632234§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.clearInterval;
   import flash.utils.getTimer;
   import flash.utils.setInterval;
   
   public class §52142371423727123423632234§ extends EventDispatcher implements §const switch continue§
   {
      
      private const §52142387523888123423632234§:int = 3600;
      
      private const §static var try§:int = 86400;
      
      private const §5214235580235593123423632234§:int = 60000;
      
      private var §5214231762231775123423632234§:int;
      
      private var §const use super§:uint = 0;
      
      public function §52142371423727123423632234§()
      {
         super();
      }
      
      public function §final super while§() : int
      {
         return this.§5214231762231775123423632234§ - getTimer();
      }
      
      public function §false use var§() : void
      {
         this.§5214232002232015123423632234§();
      }
      
      private function §5214232002232015123423632234§() : void
      {
         if(this.§const use super§ != 0)
         {
            clearInterval(this.§const use super§);
            this.§const use super§ = 0;
         }
      }
      
      public function §null function do§(param1:int) : void
      {
         param1 = Math.min(param1,86400 * 2);
         this.§5214231762231775123423632234§ = getTimer() + param1 * 1000;
         this.§5214232002232015123423632234§();
         if(param1 > 0)
         {
            this.§const use super§ = setInterval(this.§function const package§,60000);
         }
         dispatchEvent(new Event("change"));
      }
      
      private function §function const package§() : void
      {
         if(!this.§5214239830239843123423632234§())
         {
            dispatchEvent(new Event("change"));
            this.§5214232002232015123423632234§();
         }
      }
      
      public function §5214239830239843123423632234§() : Boolean
      {
         return getTimer() < this.§5214231762231775123423632234§;
      }
   }
}

