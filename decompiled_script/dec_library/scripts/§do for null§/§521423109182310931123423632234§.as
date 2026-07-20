package §do for null§
{
   import §break function in§.§5214239058239071123423632234§;
   import §continue switch case§.§each var else§;
   import flash.events.FullScreenEvent;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   
   public class §521423109182310931123423632234§ implements §5214239058239071123423632234§
   {
      
      private static const §extends var do§:int = 250;
      
      private var §521423178592317872123423632234§:Boolean;
      
      private var §native catch native§:uint;
      
      public function §521423109182310931123423632234§(param1:§each var else§, param2:Boolean)
      {
         super();
         if(param2)
         {
            param1.stage.addEventListener("fullScreen",this.§override var try§);
            this.§521423178592317872123423632234§ = param1.stage.displayState != "normal";
         }
      }
      
      private function §override var try§(param1:FullScreenEvent) : void
      {
         clearTimeout(this.§native catch native§);
         if(param1.fullScreen)
         {
            this.§521423178592317872123423632234§ = true;
         }
         else
         {
            this.§native catch native§ = setTimeout(this.§521423120632312076123423632234§,250);
         }
      }
      
      private function §521423120632312076123423632234§() : void
      {
         this.§521423178592317872123423632234§ = false;
      }
      
      public function §if while override§() : Boolean
      {
         return this.§521423178592317872123423632234§;
      }
   }
}

