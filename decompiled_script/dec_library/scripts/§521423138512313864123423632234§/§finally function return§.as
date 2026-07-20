package §521423138512313864123423632234§
{
   import §521423126202312633123423632234§.TanksFontService;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §finally function return§ extends TextField
   {
      
      private var §if function case§:TextFormat;
      
      public function §finally function return§()
      {
         super();
         this.§if function case§ = TanksFontService.getTextFormat(12);
         this.§if function case§.color = 16777215;
         this.selectable = false;
         this.embedFonts = TanksFontService.isEmbedFonts();
         this.antiAliasType = "advanced";
         this.gridFitType = "subpixel";
         this.width = 10;
         this.height = 12;
         this.autoSize = "left";
         this.defaultTextFormat = this.§if function case§;
      }
      
      public function set bold(param1:Boolean) : void
      {
         this.§if function case§.bold = param1;
         this.defaultTextFormat = this.§if function case§;
         this.setTextFormat(this.§if function case§);
      }
      
      override public function set height(param1:Number) : void
      {
         super.height = Math.ceil(param1);
      }
      
      public function set §5214235724235737123423632234§(param1:uint) : void
      {
         this.§if function case§.color = param1;
         this.defaultTextFormat = this.§if function case§;
      }
      
      override public function set width(param1:Number) : void
      {
         super.width = Math.ceil(param1);
      }
      
      public function set §5214239166239179123423632234§(param1:int) : void
      {
         this.§if function case§.size = param1;
         this.defaultTextFormat = this.§if function case§;
         this.setTextFormat(this.§if function case§);
      }
      
      public function set color(param1:uint) : void
      {
         this.§if function case§.color = param1;
         this.defaultTextFormat = this.§if function case§;
         this.setTextFormat(this.§if function case§);
      }
      
      public function set align(param1:String) : void
      {
         this.§if function case§.align = param1;
         this.defaultTextFormat = this.§if function case§;
         this.setTextFormat(this.§if function case§);
      }
      
      override public function set x(param1:Number) : void
      {
         super.x = int(param1);
      }
      
      override public function set y(param1:Number) : void
      {
         super.y = int(param1);
      }
   }
}

