package §5214233791233804123423632234§
{
   import §521423150222315035123423632234§.§include use override§;
   import §5214234310234323123423632234§.§break while override§;
   import flash.display.Bitmap;
   import flash.display.Shape;
   import flash.events.Event;
   
   public class §5214231180231193123423632234§ extends §include use override§
   {
      
      private static const §in finally do§:Number = 120;
      
      private static const §import catch include§:Number = 100;
      
      private var §521423161902316203123423632234§:Bitmap;
      
      private var §5214238662238675123423632234§:§break while override§;
      
      private var §5214239480239493123423632234§:§break while override§;
      
      private var §521423185792318592123423632234§:String;
      
      public function §5214231180231193123423632234§(param1:Bitmap, param2:String, param3:String)
      {
         super();
         this.§521423161902316203123423632234§ = param1;
         this.§5214238662238675123423632234§ = new §break while override§();
         this.§5214238662238675123423632234§.align = "center";
         this.§5214238662238675123423632234§.wordWrap = true;
         this.§5214238662238675123423632234§.multiline = true;
         this.§5214239480239493123423632234§ = new §break while override§();
         this.§5214239480239493123423632234§.§5214239166239179123423632234§ = 16;
         this.§5214239480239493123423632234§.bold = true;
         this.§521423161902316203123423632234§.x = 120 - this.§521423161902316203123423632234§.bitmapData.width >> 1;
         this.§521423161902316203123423632234§.y = 100 - this.§521423161902316203123423632234§.bitmapData.height >> 1;
         this.§5214238662238675123423632234§.text = param2;
         this.§5214238662238675123423632234§.width = 120;
         this.§5214238662238675123423632234§.y = 5;
         this.§5214236856236869123423632234§(param3);
         var _loc4_:Shape = new Shape();
         _loc4_.graphics.beginFill(676609,1);
         _loc4_.graphics.lineStyle(1,5177127,1);
         _loc4_.graphics.drawRoundRect(0.5,0.5,120,100,6,6);
         _loc4_.graphics.endFill();
         addChild(_loc4_);
         addChild(this.§521423161902316203123423632234§);
         addChild(this.§5214238662238675123423632234§);
         addChild(this.§5214239480239493123423632234§);
         addEventListener("addedToStage",this.§5214235505235518123423632234§);
      }
      
      public function §5214236856236869123423632234§(param1:String) : void
      {
         this.§5214239480239493123423632234§.text = param1;
         this.§5214239480239493123423632234§.x = 120 - this.§5214239480239493123423632234§.width >> 1;
         this.§5214239480239493123423632234§.y = 100 - 5 - this.§5214239480239493123423632234§.height;
      }
      
      private function §package finally each§(param1:Event) : void
      {
         removeEventListener("removedFromStage",this.§package finally each§);
         stage.quality = this.§521423185792318592123423632234§;
      }
      
      private function §5214235505235518123423632234§(param1:Event) : void
      {
         removeEventListener("addedToStage",this.§5214235505235518123423632234§);
         this.§521423185792318592123423632234§ = stage.quality;
         stage.quality = "medium";
         addEventListener("removedFromStage",this.§package finally each§);
      }
   }
}

