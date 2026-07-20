package §default set use§
{
   import §521423175742317587123423632234§.§521423121382312151123423632234§;
   import §5214233678233691123423632234§.§set finally super§;
   import §5214234445234458123423632234§.§521423122492312262123423632234§;
   import §5214237338237351123423632234§.§5214239746239759123423632234§;
   import §5214237361237374123423632234§.§const package var§;
   import §5214237361237374123423632234§.§else set false§;
   import §5214237746237759123423632234§.§case switch else§;
   import §5214239738239751123423632234§.§5214235195235208123423632234§;
   import flash.events.EventDispatcher;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §static catch do§.§static set in§;
   import §with finally return§.§521423149192314932123423632234§;
   
   public class §521423147792314792123423632234§ extends EventDispatcher implements §include const static§
   {
      
      public static var §return use native§:§5214235195235208123423632234§;
      
      public static var §521423113722311385123423632234§:§set finally super§;
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      public static var §with const for§:§521423122492312262123423632234§;
      
      public static var §521423145752314588123423632234§:§else set false§;
      
      public static var §521423106022310615123423632234§:§521423149192314932123423632234§;
      
      public static var §switch while in§:§521423121382312151123423632234§;
      
      public static var §52142344923462123423632234§:§case switch else§;
      
      private var §521423169352316948123423632234§:String;
      
      private var §super catch dynamic§:Boolean;
      
      public function §521423147792314792123423632234§()
      {
         super();
      }
      
      private function §case use final§() : void
      {
         var _loc1_:String = §52142344923462123423632234§.userName;
         §521423106022310615123423632234§.§try var while§().setProperty("showAlertDeadBattle",_loc1_ + "_true");
      }
      
      public function §return while default§(param1:String, param2:Boolean) : void
      {
         this.§do use default§(param1,param2,true);
      }
      
      private function §521423143982314411123423632234§(param1:Boolean) : String
      {
         var _loc2_:String = null;
         if(param1)
         {
            _loc2_ = §521423164582316471123423632234§.§521423157602315773123423632234§("FRIENDS_EXIT_FROM_BATTLE_ALERT");
         }
         else
         {
            _loc2_ = §521423164582316471123423632234§.§521423157602315773123423632234§("STRING_ALERT_GO_TO_BATTLE_IS_UNAVAILABLE_RANK_FUND");
         }
         §521423145752314588123423632234§.§in use function§(_loc2_,Vector.<String>([§521423164582316471123423632234§.§521423157602315773123423632234§("ALERT_ANSWER_YES"),§521423164582316471123423632234§.§521423157602315773123423632234§("ALERT_ANSWER_NO")]));
         §521423145752314588123423632234§.addEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.§5214231959231972123423632234§);
         return _loc2_;
      }
      
      private function §521423166522316665123423632234§(param1:§const package var§) : void
      {
         §521423145752314588123423632234§.removeEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.§521423166522316665123423632234§);
         this.§throw for static§(param1,§521423164582316471123423632234§.§521423157602315773123423632234§("STRING_GO_TO_BATTLE_LABEL"),§521423164582316471123423632234§.§521423157602315773123423632234§("STRING_DECLINE_LABEL"));
      }
      
      private function §final set return§(param1:String, param2:Boolean) : void
      {
         if(param2)
         {
            this.§case use final§();
            navigateToURL(new URLRequest(param1),"_self");
         }
         else
         {
            this.§5214239108239121123423632234§(param1);
         }
      }
      
      public function §521423133822313395123423632234§(param1:String) : void
      {
         dispatchEvent(new §include package in§("BattleLinkAliveEvent.ALIVE",param1));
      }
      
      public function §5214239108239121123423632234§(param1:String) : void
      {
         this.§case use final§();
         dispatchEvent(new §do const try§("BattleLinkActivatorServiceEvent.ACTIVATE_LINK",param1));
      }
      
      public function §do use default§(param1:String, param2:Boolean, param3:Boolean) : void
      {
         this.§521423169352316948123423632234§ = param1;
         this.§super catch dynamic§ = param2;
         if(§switch while in§.§else set in§)
         {
            this.§final set return§(this.§521423169352316948123423632234§,this.§super catch dynamic§);
            return;
         }
         if(§return use native§.§each while with§() == §5214239746239759123423632234§.§default for get§)
         {
            this.§521423143982314411123423632234§(param3);
         }
         else
         {
            this.§return const§(param3);
         }
      }
      
      public function §5214233937233950123423632234§(param1:String) : void
      {
         dispatchEvent(new §include package in§("BattleLinkAliveEvent.DEAD",param1));
      }
      
      private function §throw for static§(param1:§const package var§, param2:String, param3:String) : void
      {
         if(param1.§use const override§ == param2)
         {
            dispatchEvent(new §do const try§("BattleLinkActivatorServiceEvent.CONFIRMED_NAVIGATE",this.§521423169352316948123423632234§));
            this.§final set return§(this.§521423169352316948123423632234§,this.§super catch dynamic§);
         }
         else if(param1.§use const override§ == param3)
         {
            dispatchEvent(new §do const try§("BattleLinkActivatorServiceEvent.NOT_CONFIRMED_NAVIGATE",this.§521423169352316948123423632234§));
            if(§with const for§.§null finally if§())
            {
               §521423113722311385123423632234§.§extends switch try§();
            }
         }
      }
      
      private function §return const§(param1:Boolean) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            _loc2_ = §521423164582316471123423632234§.§521423157602315773123423632234§("STRING_ALERT_GOT_TO_BATTLE_IS_UNAVAILABLE_RANK");
            §521423145752314588123423632234§.§in use function§(_loc2_,Vector.<String>([§521423164582316471123423632234§.§521423157602315773123423632234§("STRING_GO_TO_BATTLE_LABEL"),§521423164582316471123423632234§.§521423157602315773123423632234§("STRING_DECLINE_LABEL")]));
            §521423145752314588123423632234§.addEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.§521423166522316665123423632234§);
         }
         else
         {
            this.§final set return§(this.§521423169352316948123423632234§,this.§super catch dynamic§);
         }
      }
      
      public function §521423110852311098123423632234§(param1:String) : void
      {
         dispatchEvent(new §include package in§("BattleLinkAliveEvent.IS_ALIVE",param1));
      }
      
      private function §5214231959231972123423632234§(param1:§const package var§) : void
      {
         §521423145752314588123423632234§.removeEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.§5214231959231972123423632234§);
         this.§throw for static§(param1,§521423164582316471123423632234§.§521423157602315773123423632234§("ALERT_ANSWER_YES"),§521423164582316471123423632234§.§521423157602315773123423632234§("ALERT_ANSWER_NO"));
      }
   }
}

