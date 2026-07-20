package §5214235609235622123423632234§
{
   import §5214231391231404123423632234§.§521423121182312131123423632234§;
   import §5214232825232838123423632234§.§false use get§;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   
   public class §5214235399235412123423632234§ extends §521423121182312131123423632234§
   {
      
      private static const §5214231999232012123423632234§:int = 1;
      
      private static const §5214233754233767123423632234§:ColorTransform = new ColorTransform(1.09,1.09,1.09);
      
      protected var §return use throw§:Bitmap;
      
      protected var §521423139472313960123423632234§:Bitmap;
      
      protected var §5214235823235836123423632234§:int;
      
      public function §5214235399235412123423632234§(param1:§false use get§)
      {
         super();
         this.§5214236280236293123423632234§(param1);
         this.§5214239350239363123423632234§();
      }
      
      private function §521423151022315115123423632234§(param1:MouseEvent) : void
      {
         this.§521423139472313960123423632234§.visible = param1.type == "mouseOver";
         this.§return use throw§.visible = !this.§521423139472313960123423632234§.visible;
         switch(param1.type)
         {
            case "mouseOver":
               this.§5214235823235836123423632234§ = y;
               break;
            case "mouseOut":
               y = this.§5214235823235836123423632234§;
               break;
            case "mouseUp":
               y = this.§5214235823235836123423632234§;
               break;
            case "mouseDown":
               y = this.§5214235823235836123423632234§ + 1;
         }
      }
      
      protected function §5214239350239363123423632234§() : void
      {
         buttonMode = true;
         addEventListener("mouseOver",this.§521423151022315115123423632234§);
         addEventListener("mouseOut",this.§521423151022315115123423632234§);
         addEventListener("mouseDown",this.§521423151022315115123423632234§);
         addEventListener("mouseUp",this.§521423151022315115123423632234§);
      }
      
      override public function §false use var§() : void
      {
         removeEventListener("mouseOver",this.§521423151022315115123423632234§);
         removeEventListener("mouseOut",this.§521423151022315115123423632234§);
         removeEventListener("mouseDown",this.§521423151022315115123423632234§);
         removeEventListener("mouseUp",this.§521423151022315115123423632234§);
      }
      
      private function §5214236280236293123423632234§(param1:§false use get§) : void
      {
         this.§return use throw§ = new Bitmap(param1.§return use throw§);
         this.§521423139472313960123423632234§ = new Bitmap(param1.§521423139472313960123423632234§);
         if(param1.§521423139472313960123423632234§ == null)
         {
            this.§521423139472313960123423632234§.bitmapData = param1.§return use throw§;
            this.§521423139472313960123423632234§.transform.colorTransform = §5214233754233767123423632234§;
         }
         addChildAt(this.§521423139472313960123423632234§,0);
         addChildAt(this.§return use throw§,0);
         this.§521423139472313960123423632234§.visible = false;
      }
      
      public function §5214236798236811123423632234§(param1:§false use get§) : void
      {
         removeChild(this.§return use throw§);
         removeChild(this.§521423139472313960123423632234§);
         this.§5214236280236293123423632234§(param1);
      }
   }
}

