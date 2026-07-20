package §521423113802311393123423632234§
{
   import §521423165552316568123423632234§.§default var function§;
   import flash.events.EventDispatcher;
   import §static catch do§.§static set in§;
   
   public class §521423136822313695123423632234§ extends EventDispatcher implements §5214235903235916123423632234§
   {
      
      public static var §521423164582316471123423632234§:§static set in§ = §default var function§.§import use include§().§5214231532231545123423632234§(§static set in§) as §static set in§;
      
      private const §521423140182314031123423632234§:String = "vkontakte";
      
      private const §set const use§:String = "facebook";
      
      private const §5214238009238022123423632234§:String = "google";
      
      private var §5214231881231894123423632234§:Boolean;
      
      private var §521423189462318959123423632234§:Boolean;
      
      private var §override function native§:Boolean;
      
      private var §null set set§:Boolean;
      
      public function §521423136822313695123423632234§()
      {
         super();
      }
      
      public function §implements set include§(param1:String) : Boolean
      {
         var _loc2_:String = param1;
         if("vkontakte" !== _loc2_)
         {
            return false;
         }
         return true;
      }
      
      public function §with native§(param1:String) : void
      {
         if(param1 == "vkontakte")
         {
            this.§521423189462318959123423632234§ = true;
         }
         else if(param1 == "google")
         {
            this.§null set set§ = true;
         }
         else
         {
            this.§override function native§ = true;
         }
         dispatchEvent(new §for var false§("SocialNetworkServiceEvent.LINK_SUCCESS",param1));
      }
      
      public function set §521423742387123423632234§(param1:Boolean) : void
      {
         this.§null set set§ = param1;
      }
      
      public function §if const include§(param1:String) : void
      {
         if(param1 == "vkontakte")
         {
            this.§521423189462318959123423632234§ = false;
         }
         else if(param1 == "google")
         {
            this.§null set set§ = false;
         }
         else
         {
            this.§override function native§ = false;
         }
         dispatchEvent(new §for var false§("SocialNetworkServiceEvent.UNLINK_SUCCESS",param1));
      }
      
      public function set §521423119572311970123423632234§(param1:Boolean) : void
      {
         this.§5214231881231894123423632234§ = param1;
      }
      
      public function set §class var if§(param1:Boolean) : void
      {
         this.§521423189462318959123423632234§ = param1;
      }
      
      public function §each switch override§(param1:String) : Boolean
      {
         switch(param1)
         {
            case "vkontakte":
               return this.§521423189462318959123423632234§;
            case "facebook":
               return this.§override function native§;
            case "google":
               return this.§null set set§;
            default:
               return false;
         }
      }
      
      public function set §default function static§(param1:Boolean) : void
      {
         this.§override function native§ = param1;
      }
      
      public function §5214238622238635123423632234§(param1:String) : void
      {
         dispatchEvent(new §for var false§("SocialNetworkServiceEvent.CREATE_LINK",param1));
      }
      
      public function §52142392323936123423632234§(param1:String) : void
      {
         dispatchEvent(new §for var false§("SocialNetworkServiceEvent.UNLINK",param1));
      }
      
      public function get §521423119572311970123423632234§() : Boolean
      {
         return this.§5214231881231894123423632234§;
      }
   }
}

