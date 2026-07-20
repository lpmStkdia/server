package §521423176192317632123423632234§
{
   import §521423175742317587123423632234§.§521423121382312151123423632234§;
   import §5214232595232608123423632234§.§true set function§;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import §with set class§.§for use switch§;
   
   public class §521423402353123423632234§ extends EventDispatcher implements §521423142302314243123423632234§
   {
      
      public static var §5214231471231484123423632234§:§true set function§;
      
      public static var §switch while in§:§521423121382312151123423632234§;
      
      private var §include set use§:Boolean;
      
      private var §521423154452315458123423632234§:Sound;
      
      public function §521423402353123423632234§()
      {
         super();
      }
      
      public function §52142398423997123423632234§(param1:String) : void
      {
         dispatchEvent(new §false var use§("BattleInviteServiceEvent.REMOVE_INVITE",param1));
      }
      
      public function §each super include§(param1:String) : void
      {
         dispatchEvent(new §false var use§("BattleInviteServiceEvent.REJECT",param1));
      }
      
      public function §5214231369231382123423632234§(param1:String, param2:String, param3:String, param4:Boolean) : void
      {
         var _loc5_:§false var use§ = new §false var use§("BattleInviteServiceEvent.ACCEPT",param1);
         _loc5_.§5214233497233510123423632234§ = param2;
         _loc5_.§try for final§ = param3;
         _loc5_.§5214233878233891123423632234§ = param4;
         dispatchEvent(_loc5_);
      }
      
      public function §5214231766231779123423632234§(param1:String) : void
      {
         dispatchEvent(new §false var use§("BattleInviteServiceEvent.INVITE",param1));
      }
      
      public function set §while for for§(param1:Boolean) : void
      {
         if(this.§include set use§ != param1)
         {
            dispatchEvent(new §finally super var§("BattleInviteEnableEvent.UPDATE",param1));
         }
         this.§include set use§ = param1;
      }
      
      public function get §while for for§() : Boolean
      {
         return this.§include set use§;
      }
      
      public function §521423141792314192123423632234§(param1:String) : Boolean
      {
         return §switch while in§.§521423114272311440123423632234§() && §5214231471231484123423632234§.§implements while try§(param1,§for use switch§.§super while case§);
      }
      
      public function set §5214236198236211123423632234§(param1:Sound) : void
      {
         this.§521423154452315458123423632234§ = param1;
      }
      
      public function §const set implements§() : void
      {
         if(this.§521423154452315458123423632234§ != null)
         {
            this.§521423154452315458123423632234§.play();
         }
      }
   }
}

