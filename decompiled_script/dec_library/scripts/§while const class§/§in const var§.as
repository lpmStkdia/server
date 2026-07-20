package §while const class§
{
   import flash.events.Event;
   
   public class §in const var§ extends Event
   {
      
      public static const §continue switch§:String = "sendMessage";
      
      private var §5214231712231725123423632234§:String;
      
      private var §521423988231001123423632234§:Boolean;
      
      public function §in const var§(param1:String, param2:String, param3:Boolean)
      {
         super(param1);
         this.§5214231712231725123423632234§ = param2;
         this.§521423988231001123423632234§ = param3;
      }
      
      public function get §521423150652315078123423632234§() : String
      {
         return this.§5214231712231725123423632234§;
      }
      
      public function get §5214233817233830123423632234§() : Boolean
      {
         return this.§521423988231001123423632234§;
      }
      
      override public function clone() : Event
      {
         return new §in const var§(type,this.§5214231712231725123423632234§,this.§521423988231001123423632234§);
      }
      
      override public function toString() : String
      {
         return "[BattleChatEvent type=" + type + ", message=" + this.§5214231712231725123423632234§ + ", teamOnly=" + this.§521423988231001123423632234§ + "]";
      }
   }
}

