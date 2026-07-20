package §if var null§
{
   import flash.events.Event;
   
   public class CheckEmailEvent extends Event
   {
      
      public static const CHECK_EMAIL:String = "CheckEmailEvent.CHECK_EMAIL";
      
      private var §extends finally include§:String;
      
      public function CheckEmailEvent(param1:String)
      {
         super("CheckEmailEvent.CHECK_EMAIL");
         this.§extends finally include§ = param1;
      }
      
      public function get email() : String
      {
         return this.§extends finally include§;
      }
      
      override public function clone() : Event
      {
         return new CheckEmailEvent(this.email);
      }
   }
}

