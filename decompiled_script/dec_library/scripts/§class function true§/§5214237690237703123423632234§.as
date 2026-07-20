package §class function true§
{
   import flash.events.Event;
   
   public class §5214237690237703123423632234§ extends Event
   {
      
      public static const §5214238926238939123423632234§:String = "partOpen";
      
      public static const §false function native§:String = "partComplete";
      
      private var §static var override§:int;
      
      private var §try catch final§:int;
      
      public function §5214237690237703123423632234§(param1:String, param2:int, param3:int)
      {
         super(param1);
         this.§static var override§ = param2;
         this.§try catch final§ = param3;
      }
      
      override public function toString() : String
      {
         return "[LoaderEvent type=" + type + ", partsTotal=" + this.§static var override§ + ", currentPart=" + this.§try catch final§ + "]";
      }
      
      public function get §521423164772316490123423632234§() : int
      {
         return this.§try catch final§;
      }
      
      public function get §521423147402314753123423632234§() : int
      {
         return this.§static var override§;
      }
      
      override public function clone() : Event
      {
         return new §5214237690237703123423632234§(type,this.§static var override§,this.§try catch final§);
      }
   }
}

