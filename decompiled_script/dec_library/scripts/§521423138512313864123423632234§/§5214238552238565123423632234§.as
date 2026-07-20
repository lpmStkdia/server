package §521423138512313864123423632234§
{
   import §521423122542312267123423632234§.§case finally in§;
   import §52142367323686123423632234§.§5214239867239880123423632234§;
   import §continue switch case§.§dynamic const break§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.filters.DropShadowFilter;
   import flash.text.TextFormat;
   
   public class §5214238552238565123423632234§ extends §case finally in§
   {
      
      protected var §default do§:§finally function return§ = new §finally function return§();
      
      protected var §5214235347235360123423632234§:Bitmap = new Bitmap();
      
      protected var §for var native§:int = 100;
      
      public function §5214238552238565123423632234§()
      {
         super();
         this.§use case§();
         enabled = true;
         tabEnabled = false;
      }
      
      public function §521423154812315494123423632234§() : void
      {
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.size = 16;
         §5214237412237425123423632234§.defaultTextFormat = _loc1_;
         §5214237412237425123423632234§.setTextFormat(_loc1_);
         §super catch case§ = 14;
      }
      
      override protected function §break use do§() : void
      {
         super.§break use do§();
         var _loc1_:int = §throw package true§() == §5214239867239880123423632234§.§521423137242313737123423632234§ ? 1 : 0;
         this.§default do§.y = 24 + _loc1_;
         this.§5214235347235360123423632234§.y = int(25 - this.§5214235347235360123423632234§.height / 2) + _loc1_;
      }
      
      public function set §5214231250231263123423632234§(param1:String) : void
      {
         this.§default do§.htmlText = param1;
      }
      
      override public function set width(param1:Number) : void
      {
         this.§for var native§ = param1;
         super.width = this.§for var native§;
         this.§default do§.width = this.§for var native§ - 4;
         if(this.§5214235347235360123423632234§.bitmapData != null)
         {
            this.§5214235347235360123423632234§.x = this.§for var native§ - this.§5214235347235360123423632234§.width - 6;
            this.§5214235347235360123423632234§.y = int(25 - this.§5214235347235360123423632234§.height / 2);
            §5214237412237425123423632234§.width = this.§for var native§ - 4 - this.§5214235347235360123423632234§.width;
         }
      }
      
      public function set icon(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this.§5214235347235360123423632234§.visible = true;
            §5214237412237425123423632234§.width = this.§for var native§ - 4 - this.§5214235347235360123423632234§.width;
         }
         else
         {
            §5214237412237425123423632234§.width = this.§for var native§ - 4;
            this.§5214235347235360123423632234§.visible = false;
         }
         this.§5214235347235360123423632234§.bitmapData = param1;
         this.width = this.§for var native§;
      }
      
      private function §use case§() : void
      {
         addChild(this.§5214235347235360123423632234§);
         this.§default do§.align = "center";
         this.§default do§.autoSize = "none";
         this.§default do§.selectable = false;
         this.§default do§.x = 2;
         this.§default do§.y = 24;
         this.§default do§.height = 20;
         this.§default do§.mouseEnabled = false;
         this.§default do§.filters = [new DropShadowFilter(1 * §dynamic const break§.§5214231303231316123423632234§,45,0,0.7,1 * §dynamic const break§.§5214231303231316123423632234§,1 * §dynamic const break§.§5214231303231316123423632234§,1)];
         this.width = 120;
      }
   }
}

