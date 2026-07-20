package §5214234445234458123423632234§
{
   import flash.events.EventDispatcher;
   
   public class §521423144082314421123423632234§ extends EventDispatcher implements §521423122492312262123423632234§
   {
      
      private var §521423131212313134123423632234§:Boolean;
      
      public function §521423144082314421123423632234§()
      {
         super();
      }
      
      public function §5214233571233584123423632234§() : void
      {
         this.§521423131212313134123423632234§ = false;
         dispatchEvent(new §do use for§("DialogWindowsDispatcherServiceEvent.FORCIBLY_CLOSE"));
      }
      
      public function §null finally if§() : Boolean
      {
         return this.§521423131212313134123423632234§;
      }
      
      public function §override catch get§() : void
      {
         this.§521423131212313134123423632234§ = false;
         dispatchEvent(new §do use for§("DialogWindowsDispatcherServiceEvent.CLOSE"));
      }
      
      public function §521423142772314290123423632234§() : void
      {
         this.§521423131212313134123423632234§ = true;
         dispatchEvent(new §do use for§("DialogWindowsDispatcherServiceEvent.OPEN"));
      }
   }
}

