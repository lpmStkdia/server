package §5214234310234323123423632234§
{
   import §521423138512313864123423632234§.§5214233541233554123423632234§;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   
   public class §finally switch get§ extends §521423138512313864123423632234§.§5214233541233554123423632234§
   {
      
      public function §finally switch get§()
      {
         super();
         §5214237412237425123423632234§.sharpness = 40;
         §5214237412237425123423632234§.thickness = 70;
         §5214234618234631123423632234§.sharpness = -210;
         §5214234618234631123423632234§.thickness = 50;
         §5214234618234631123423632234§.addEventListener("mouseOver",this.§var for if§);
         §5214234618234631123423632234§.addEventListener("mouseOut",this.§5214234784234797123423632234§);
      }
      
      override public function set height(param1:Number) : void
      {
         super.height = Math.ceil(param1);
      }
      
      override public function set y(param1:Number) : void
      {
         super.y = int(param1);
      }
      
      public function set enable(param1:Boolean) : void
      {
         §5214234618234631123423632234§.type = param1 ? "input" : "dynamic";
         §5214234618234631123423632234§.selectable = param1;
         §5214234618234631123423632234§.mouseEnabled = param1;
         §5214234618234631123423632234§.mouseWheelEnabled = param1;
         §5214234618234631123423632234§.tabEnabled = param1;
      }
      
      override public function set width(param1:Number) : void
      {
         super.width = Math.ceil(param1);
      }
      
      private function §var for if§(param1:MouseEvent) : void
      {
         Mouse.cursor = "ibeam";
      }
      
      override public function set x(param1:Number) : void
      {
         super.x = int(param1);
      }
      
      private function §5214234784234797123423632234§(param1:MouseEvent) : void
      {
         Mouse.cursor = "auto";
      }
   }
}

