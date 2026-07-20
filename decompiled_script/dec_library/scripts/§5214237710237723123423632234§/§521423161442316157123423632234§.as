package §5214237710237723123423632234§
{
   import §5214234310234323123423632234§.§break while override§;
   import flash.display.Sprite;
   import flash.external.ExternalInterface;
   
   public class §521423161442316157123423632234§ extends Sprite
   {
      
      private static const §in finally do§:int = 25;
      
      private var §5214236661236674123423632234§:§break while override§;
      
      public function §521423161442316157123423632234§()
      {
         super();
         this.§5214239350239363123423632234§();
      }
      
      public function set selected(param1:Boolean) : void
      {
         if(param1)
         {
            buttonMode = useHandCursor = false;
            mouseChildren = false;
            mouseEnabled = false;
         }
         else
         {
            buttonMode = useHandCursor = true;
            mouseChildren = true;
            mouseEnabled = true;
         }
      }
      
      private function §5214239350239363123423632234§() : void
      {
         graphics.clear();
         graphics.beginFill(16711680,0);
         graphics.drawRect(0,0,25,18);
         graphics.endFill();
         this.§5214236661236674123423632234§ = new §break while override§();
         this.§5214236661236674123423632234§.mouseEnabled = false;
         this.§5214236661236674123423632234§.autoSize = "none";
         this.§5214236661236674123423632234§.align = "right";
         this.§5214236661236674123423632234§.color = 5898034;
         this.§5214236661236674123423632234§.width = 25;
         this.§5214236661236674123423632234§.height = 18;
         addChild(this.§5214236661236674123423632234§);
      }
      
      public function §include var override§(param1:String, param2:Boolean) : void
      {
         if(param2)
         {
            this.§5214236661236674123423632234§.text = param1;
            this.§5214236661236674123423632234§.y = 0;
         }
         else
         {
            this.§5214236661236674123423632234§.y = -1;
            this.§5214236661236674123423632234§.htmlText = "<u>" + param1 + "</u>";
         }
         if(ExternalInterface.available)
         {
            this.selected = param2;
         }
         else
         {
            this.selected = true;
         }
      }
   }
}

