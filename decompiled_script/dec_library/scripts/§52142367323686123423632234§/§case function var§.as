package §52142367323686123423632234§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   
   public class §case function var§ extends §use var var§
   {
      
      protected var icon:Bitmap;
      
      public function §case function var§(param1:String, param2:Class, param3:BitmapData = null)
      {
         super(new §else super dynamic§());
         enabled = true;
         §521423184252318438123423632234§ = 12;
         §catch var class§ = 22;
         §super catch case§ = 6;
         §5214237412237425123423632234§.align = "left";
         §5214237412237425123423632234§.autoSize = "left";
         §5214237412237425123423632234§.text = param1;
         if(param2 != null)
         {
            this.icon = new param2();
         }
         else
         {
            this.icon = new Bitmap(param3);
         }
         §switch var use§.addChild(this.icon);
         this.§5214236171236184123423632234§();
      }
      
      protected function §5214236171236184123423632234§() : void
      {
         this.icon.x = 30 - this.icon.bitmapData.width >> 1;
         this.icon.y = 30 - this.icon.bitmapData.height >> 1;
      }
      
      override public function set width(param1:Number) : void
      {
         if(§5214237412237425123423632234§.visible)
         {
            if(this.icon != null && this.icon.visible)
            {
               §5214237412237425123423632234§.x = 21 + (param1 - 21 - §5214237412237425123423632234§.width >> 1);
            }
            else
            {
               §5214237412237425123423632234§.x = param1 - §5214237412237425123423632234§.width >> 1;
            }
         }
         super.width = param1;
      }
      
      override public function get width() : Number
      {
         return super.width;
      }
   }
}

