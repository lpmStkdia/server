package §5214233176233189123423632234§
{
   import §5214234310234323123423632234§.§5214233541233554123423632234§;
   import flash.events.Event;
   
   public class §each function throw§ extends §5214233541233554123423632234§
   {
      
      private var §switch set const§:String;
      
      private const §521423166912316704123423632234§:uint = 8421504;
      
      public function §each function throw§(param1:String)
      {
         super();
         this.§switch set const§ = param1;
         value = param1;
         §5214234618234631123423632234§.textColor = 8421504;
         §5214234618234631123423632234§.displayAsPassword = false;
         addEventListener("focusIn",this.§else package in§);
         addEventListener("focusOut",this.§521423107562310769123423632234§);
      }
      
      override public function set hidden(param1:Boolean) : void
      {
         super.hidden = param1;
         §5214234618234631123423632234§.displayAsPassword = false;
      }
      
      public function §else package in§(param1:Event) : void
      {
         if(value == this.§switch set const§)
         {
            §5214234618234631123423632234§.textColor = 16777215;
            value = "";
            §5214234618234631123423632234§.displayAsPassword = this.hidden;
         }
      }
      
      public function §5214236856236869123423632234§(param1:String) : void
      {
         this.value = param1;
         §5214234618234631123423632234§.textColor = 16777215;
      }
      
      public function §521423107562310769123423632234§(param1:Event) : void
      {
         if(value == "")
         {
            §5214234618234631123423632234§.textColor = 8421504;
            value = this.§switch set const§;
            §5214234618234631123423632234§.displayAsPassword = false;
         }
      }
   }
}

