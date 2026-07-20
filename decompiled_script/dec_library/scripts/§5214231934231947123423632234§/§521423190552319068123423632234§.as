package §5214231934231947123423632234§
{
   import §521423178502317863123423632234§.§5214235498235511123423632234§;
   import flash.events.EventDispatcher;
   
   public class §521423190552319068123423632234§ extends EventDispatcher implements §521423173702317383123423632234§
   {
      
      public function §521423190552319068123423632234§()
      {
         super();
      }
      
      public function §521423180962318109123423632234§(param1:String) : void
      {
         dispatchEvent(new §const const implements§("LeaveBattleNotifierServiceEvent.LEAVE_BATTLE",param1));
      }
      
      public function §package function use§(param1:Vector.<§5214235498235511123423632234§>) : void
      {
         dispatchEvent(new §5214237317237330123423632234§("SetBattleNotifierServiceEvent.SET_BATTLE",param1));
      }
   }
}

