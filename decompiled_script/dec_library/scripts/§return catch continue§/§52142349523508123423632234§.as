package §return catch continue§
{
   import §521423113802311393123423632234§.§5214235903235916123423632234§;
   import §521423113802311393123423632234§.§for var false§;
   import §521423154102315423123423632234§.§52142341623429123423632234§;
   import §521423154102315423123423632234§.§5214236361236374123423632234§;
   import §521423154102315423123423632234§.§true catch do§;
   import §521423180292318042123423632234§.§package super get§;
   import §5214237361237374123423632234§.§else set false§;
   import §catch set implements§.§521423109732310986123423632234§;
   import §catch set implements§.§521423127512312764123423632234§;
   import §do function static§.§5214232145232158123423632234§;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §static catch do§.§static set in§;
   
   public class §52142349523508123423632234§ extends §52142341623429123423632234§ implements §true catch do§, §521423127512312764123423632234§, §521423109732310986123423632234§
   {
      
      public static var §super const switch§:§5214235903235916123423632234§;
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      public static var §521423145752314588123423632234§:§else set false§;
      
      public function §52142349523508123423632234§()
      {
         super();
      }
      
      public function §5214238569238582123423632234§(param1:String) : void
      {
         §521423145752314588123423632234§.§override catch null§(§521423164582316471123423632234§.§521423157602315773123423632234§("ALERT_ACCOUNT_ALREADY_LINKED").replace("%1",§5214232145232158123423632234§.§521423121762312189123423632234§(param1)));
      }
      
      public function §else for case§() : void
      {
         §super const switch§.removeEventListener("SocialNetworkServiceEvent.CREATE_LINK",this.§else catch get§);
         §super const switch§.removeEventListener("SocialNetworkServiceEvent.UNLINK",this.§521423165042316517123423632234§);
      }
      
      private function §const package false§(param1:String) : String
      {
         var _loc2_:§5214236361236374123423632234§ = null;
         for each(_loc2_ in §521423127052312718123423632234§().§dynamic function override§)
         {
            if(_loc2_.§52142329923312123423632234§ == param1)
            {
               return _loc2_.§5214233169233182123423632234§;
            }
         }
         return "";
      }
      
      public function §521423155612315574123423632234§(param1:String) : void
      {
         §super const switch§.§if const include§(param1);
         §521423145752314588123423632234§.§override catch null§(§521423164582316471123423632234§.§521423157602315773123423632234§("ALERT_ACCOUNT_UNLINKED").replace("%1",§5214232145232158123423632234§.§521423121762312189123423632234§(param1)));
      }
      
      private function §521423165042316517123423632234§(param1:§for var false§) : void
      {
         if(§super const switch§.§521423119572311970123423632234§)
         {
            §finally set implements§.§default catch get§(param1.§521423158292315842123423632234§);
         }
         else
         {
            §521423145752314588123423632234§.§override catch null§(§521423164582316471123423632234§.§521423157602315773123423632234§("ALERT_ACCOUNT_CANT_BE_UNLINKED").replace("%1",§5214232145232158123423632234§.§521423121762312189123423632234§(param1.§521423158292315842123423632234§)));
         }
      }
      
      private function §catch package try§(param1:String) : Boolean
      {
         var _loc2_:§5214236361236374123423632234§ = null;
         for each(_loc2_ in §521423127052312718123423632234§().§dynamic function override§)
         {
            if(_loc2_.§52142329923312123423632234§ == param1)
            {
               return _loc2_.§5214232295232308123423632234§;
            }
         }
         return false;
      }
      
      public function §521423115462311559123423632234§(param1:String) : void
      {
         §super const switch§.§with native§(param1);
         §521423145752314588123423632234§.§override catch null§(§521423164582316471123423632234§.§521423157602315773123423632234§("ALERT_ACCOUNT_SUCCESS_LINKED"));
      }
      
      private function §else catch get§(param1:§for var false§) : void
      {
         this.§5214234204234217123423632234§(this.§const package false§(param1.§521423158292315842123423632234§));
      }
      
      public function §5214236388236401123423632234§() : void
      {
         §521423145752314588123423632234§.§in use function§(§521423164582316471123423632234§.§521423157602315773123423632234§("ALERT_ACCOUNT_LINKING_ERROR"),Vector.<String>([§521423164582316471123423632234§.§521423157602315773123423632234§(§package super get§.§finally use case§)]));
      }
      
      public function §finally package break§() : void
      {
         §super const switch§.§521423119572311970123423632234§ = §521423127052312718123423632234§().§521423119572311970123423632234§;
         §super const switch§.§class var if§ = this.§catch package try§("vkontakte");
         §super const switch§.§default function static§ = this.§catch package try§("facebook");
         §super const switch§.§521423742387123423632234§ = this.§catch package try§("google");
         §super const switch§.addEventListener("SocialNetworkServiceEvent.CREATE_LINK",this.§else catch get§);
         §super const switch§.addEventListener("SocialNetworkServiceEvent.UNLINK",this.§521423165042316517123423632234§);
      }
      
      private function §5214234204234217123423632234§(param1:String) : void
      {
         if(ExternalInterface.available)
         {
            ExternalInterface.call("newPopup",param1);
         }
         else
         {
            navigateToURL(new URLRequest(param1));
         }
      }
   }
}

