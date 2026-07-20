package §5214236812236825123423632234§
{
   import §521423138512313864123423632234§.§finally function return§;
   import §5214236035236048123423632234§.§use while§;
   import flash.display.Sprite;
   
   public class §5214238328238341123423632234§ extends Sprite
   {
      
      protected var icon:§use while§;
      
      protected var §5214237923237936123423632234§:int;
      
      protected var label:§finally function return§;
      
      public function §5214238328238341123423632234§(param1:int = -1)
      {
         super();
         this.§5214237923237936123423632234§ = param1;
         this.§5214239350239363123423632234§();
      }
      
      public function set §5214239166239179123423632234§(param1:int) : void
      {
         this.label.§5214239166239179123423632234§ = param1;
      }
      
      public function set text(param1:String) : void
      {
         this.label.htmlText = param1;
      }
      
      protected function §5214239350239363123423632234§() : void
      {
         if(this.§5214237923237936123423632234§ > -1)
         {
            this.icon = new §use while§();
            this.icon.type = this.§5214237923237936123423632234§;
            addChild(this.icon);
            this.icon.x = this.§5214237923237936123423632234§ == 1 ? 1 : 0;
            this.icon.y = 0;
         }
         this.label = new §finally function return§();
         this.label.color = 16777215;
         if(this.icon)
         {
            this.label.x = this.icon.width + 3;
         }
         addChild(this.label);
      }
   }
}

