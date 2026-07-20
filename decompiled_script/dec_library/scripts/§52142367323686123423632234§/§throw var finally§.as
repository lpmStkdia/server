package §52142367323686123423632234§
{
   import §521423150222315035123423632234§.§include use override§;
   import flash.display.Bitmap;
   
   public class §throw var finally§ extends §include use override§
   {
      
      private var §true finally dynamic§:Bitmap;
      
      private var §while function for§:Bitmap;
      
      private var §break while var§:Bitmap;
      
      public function §throw var finally§(param1:§package package set§)
      {
         super();
         this.§true finally dynamic§ = new Bitmap(param1.§true finally dynamic§);
         this.§while function for§ = new Bitmap(param1.§while function for§);
         this.§break while var§ = new Bitmap(param1.§break while var§);
         this.§5214236798236811123423632234§(param1);
         addChild(this.§true finally dynamic§);
         addChild(this.§break while var§);
         addChild(this.§while function for§);
         mouseEnabled = false;
      }
      
      private function align(param1:int) : void
      {
         this.§while function for§.x = this.§true finally dynamic§.width;
         this.§break while var§.x = param1 - this.§break while var§.width;
         this.§while function for§.width = param1 - this.§true finally dynamic§.width - this.§break while var§.width;
      }
      
      override public function set width(param1:Number) : void
      {
         param1 = int(param1);
         this.align(param1);
         super.width = param1;
      }
      
      public function §5214236798236811123423632234§(param1:§package package set§) : void
      {
         this.§true finally dynamic§.bitmapData = param1.§true finally dynamic§;
         this.§while function for§.bitmapData = param1.§while function for§;
         this.§break while var§.bitmapData = param1.§break while var§;
         this.align(width);
      }
   }
}

