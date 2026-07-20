package §521423176122317625123423632234§
{
   import §continue switch case§.§dynamic const break§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import §get switch dynamic§.§catch break§;
   import §native while false§.§with while class§;
   
   public class §get catch return§ extends Sprite implements §catch break§
   {
      
      private var §static use each§:TextField;
      
      private var §continue super if§:Button;
      
      private var §while while include§:Point;
      
      private var §override function with§:Boolean = false;
      
      public function §get catch return§()
      {
         super();
         mouseEnabled = false;
         tabEnabled = false;
         this.§continue if§();
         this.§5214233671233684123423632234§();
         this.§while while include§ = new Point(300,200);
         this.filters = [new DropShadowFilter(3,70,0,0.5,2,2,1,2,false,false,false)];
         addEventListener("addedToStage",this.§const use use§);
      }
      
      public function get §5214237788237801123423632234§() : Point
      {
         return this.§while while include§;
      }
      
      private function align(param1:Event = null) : void
      {
         if(stage != null)
         {
            x = stage.stageWidth - width >> 1;
            y = stage.stageHeight - height >> 1;
         }
      }
      
      private function §const use use§(param1:Event) : void
      {
         if(!§override function with§)
         {
            stage.addEventListener("resize",this.align);
            §override function with§ = true;
         }
         this.§for var dynamic§();
         this.align();
      }
      
      private function §continue if§() : void
      {
         this.§static use each§ = new TextField();
         this.§static use each§.sharpness = -50;
         this.§static use each§.width = 250 * §dynamic const break§.§5214231303231316123423632234§;
         this.§static use each§.y = 25 * §dynamic const break§.§5214231303231316123423632234§;
         this.§static use each§.defaultTextFormat = new TextFormat("Tahoma",11 * §dynamic const break§.§5214231303231316123423632234§,0);
         this.§static use each§.type = "dynamic";
         this.§static use each§.autoSize = "center";
         this.§static use each§.antiAliasType = "advanced";
         this.§static use each§.embedFonts = false;
         this.§static use each§.selectable = true;
         this.§static use each§.multiline = true;
         this.§static use each§.wordWrap = true;
         addChild(this.§static use each§);
      }
      
      public function set text(param1:String) : void
      {
         this.§static use each§.text = param1;
         this.§while while include§.x = Math.max(Math.round(this.§static use each§.length * 0.5),300) * §dynamic const break§.§5214231303231316123423632234§;
         this.§static use each§.width = this.§while while include§.x - 50;
         this.§static use each§.x = Math.round((this.§while while include§.x - this.§static use each§.textWidth) * 0.5);
         this.§for var dynamic§();
         this.align();
      }
      
      private function §5214233671233684123423632234§() : void
      {
         this.§continue super if§ = new Button("Close");
         this.§continue super if§.addEventListener("click",this.§521423144852314498123423632234§);
         addChild(this.§continue super if§);
      }
      
      private function §for var dynamic§() : void
      {
         this.§while while include§.y = 25 * §dynamic const break§.§5214231303231316123423632234§ + this.§static use each§.textHeight + 30 * §dynamic const break§.§5214231303231316123423632234§ + this.§continue super if§.height;
         this.graphics.clear();
         this.graphics.beginFill(13421772,1);
         this.graphics.drawRoundRect(0,0,this.§while while include§.x,this.§while while include§.y,5 * §dynamic const break§.§5214231303231316123423632234§,5 * §dynamic const break§.§5214231303231316123423632234§);
         this.§continue super if§.repaint();
         this.§continue super if§.x = Math.round((this.§while while include§.x - this.§continue super if§.width) * 0.5);
         this.§continue super if§.y = Math.round(this.§while while include§.y - 15 - this.§continue super if§.height);
      }
      
      public function §var package class§() : void
      {
         if(§override function with§)
         {
            stage.removeEventListener("resize",this.align);
            §override function with§ = false;
         }
         if(parent != null)
         {
            parent.removeChild(this);
         }
      }
      
      private function §521423144852314498123423632234§(param1:MouseEvent) : void
      {
         this.§var package class§();
      }
      
      public function §const var super§(param1:§with while class§) : DisplayObject
      {
         this.text = param1.§521423116232311636123423632234§();
         return this;
      }
   }
}

import §continue switch case§.§dynamic const break§;
import flash.display.Sprite;
import flash.text.TextField;
import flash.text.TextFormat;

class Button extends Sprite
{
   
   private static const H_MARGIN:int = 20;
   
   private static const V_MARGIN:int = 5;
   
   private var e3e6980c:TextField;
   
   public function Button(param1:String)
   {
      super();
      this.c70f7bea();
      this.caption = param1;
   }
   
   public function set caption(param1:String) : void
   {
      this.e3e6980c.text = param1;
      this.repaint();
   }
   
   public function repaint() : void
   {
      if(stage == null)
      {
         return;
      }
      var _loc1_:int = this.e3e6980c.textWidth + 2 * 20 * §dynamic const break§.§5214231303231316123423632234§;
      var _loc2_:int = this.e3e6980c.textHeight + 2 * 5 * §dynamic const break§.§5214231303231316123423632234§;
      this.e3e6980c.x = _loc1_ - this.e3e6980c.textWidth >> 1;
      this.e3e6980c.y = _loc2_ - this.e3e6980c.textHeight >> 1;
      graphics.beginFill(16777215,1);
      graphics.lineStyle(0,6710886);
      graphics.drawRoundRect(0,0,_loc1_,_loc2_,5 * §dynamic const break§.§5214231303231316123423632234§,5 * §dynamic const break§.§5214231303231316123423632234§);
   }
   
   private function c70f7bea() : void
   {
      this.e3e6980c = new TextField();
      this.e3e6980c.sharpness = -50;
      this.e3e6980c.defaultTextFormat = new TextFormat("Tahoma",12 * §dynamic const break§.§5214231303231316123423632234§,0,true);
      this.e3e6980c.type = "dynamic";
      this.e3e6980c.autoSize = "left";
      this.e3e6980c.antiAliasType = "advanced";
      this.e3e6980c.embedFonts = false;
      this.e3e6980c.selectable = false;
      this.e3e6980c.multiline = false;
      this.e3e6980c.mouseEnabled = false;
      this.e3e6980c.tabEnabled = false;
      addChild(this.e3e6980c);
   }
}
