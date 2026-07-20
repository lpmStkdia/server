package §521423101572310170123423632234§
{
   import §5214231835231848123423632234§.§521423156122315625123423632234§;
   import flash.events.Event;
   
   public class §set switch each§ extends §521423156122315625123423632234§
   {
      
      private var §521423105742310587123423632234§:Boolean;
      
      private var §case var package§:Boolean;
      
      public function §set switch each§()
      {
         super();
         addEventListener("open",this.§5214233576233589123423632234§,false,2147483647);
      }
      
      override public function close() : void
      {
         if(this.§521423105742310587123423632234§)
         {
            this.§521423105742310587123423632234§ = false;
            super.close();
         }
         else
         {
            this.§case var package§ = true;
         }
      }
      
      private function §5214233576233589123423632234§(param1:Event) : void
      {
         this.§521423105742310587123423632234§ = true;
         if(this.§case var package§)
         {
            this.close();
         }
      }
   }
}

