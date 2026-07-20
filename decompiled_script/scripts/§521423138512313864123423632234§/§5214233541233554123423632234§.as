package §521423138512313864123423632234§
{
   import §521423126202312633123423632234§.TanksFontService;
   import §5214238675238688123423632234§.§521423104662310479123423632234§;
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import §while set null§.§521423129322312945123423632234§;
   import §while set null§.§5214239662239675123423632234§;
   import §while set null§.§break for null§;
   import §while set null§.§break var true§;
   import §while set null§.§extends package while§;
   import §while set null§.§extends var continue§;
   
   public class §5214233541233554123423632234§ extends Sprite
   {
      
      private static const §native set function§:BitmapData = new §break var true§(0,0);
      
      private static const §521423176832317696123423632234§:BitmapData = new §521423129322312945123423632234§(0,0);
      
      private static const §521423145982314611123423632234§:BitmapData = new §break for null§(0,0);
      
      private static const §extends catch case§:BitmapData = new §extends var continue§(0,0);
      
      private static const §5214238699238712123423632234§:BitmapData = new §extends package while§(0,0);
      
      private static const §5214234741234754123423632234§:BitmapData = new §5214239662239675123423632234§(0,0);
      
      private var §521423167772316790123423632234§:int = 0;
      
      private var §try package default§:Boolean = true;
      
      private var §in set each§:String = "";
      
      public var §5214237412237425123423632234§:§finally function return§;
      
      private const §if function case§:TextFormat = TanksFontService.getTextFormat(12);
      
      private const §521423106492310662123423632234§:Sprite = new Sprite();
      
      private const §521423173342317347123423632234§:Shape = new Shape();
      
      private const §native var else§:Shape = new Shape();
      
      private const §5214234274234287123423632234§:Shape = new Shape();
      
      protected var §for var native§:int;
      
      private var §52142344323456123423632234§:int;
      
      public var §5214234618234631123423632234§:TextField;
      
      private var §final var package§:int = 0;
      
      private var §each try§:String = "";
      
      private var §throw static§:Timer;
      
      private var §5214234566234579123423632234§:Boolean;
      
      public function §5214233541233554123423632234§()
      {
         super();
         addChild(this.§521423106492310662123423632234§);
         this.§521423106492310662123423632234§.addChild(this.§521423173342317347123423632234§);
         this.§521423106492310662123423632234§.addChild(this.§native var else§);
         this.§521423106492310662123423632234§.addChild(this.§5214234274234287123423632234§);
         this.§5214237412237425123423632234§ = new §finally function return§();
         this.§5214237412237425123423632234§.x = -10;
         this.§5214237412237425123423632234§.y = 7;
         addChild(this.§5214237412237425123423632234§);
         this.§final var package§ = getTimer();
         this.§5214234618234631123423632234§ = new TextField();
         addChild(this.§5214234618234631123423632234§);
         this.§if function case§.color = 16777215;
         this.§5214234618234631123423632234§.defaultTextFormat = this.§if function case§;
         this.§5214234618234631123423632234§.antiAliasType = "advanced";
         this.§5214234618234631123423632234§.gridFitType = "pixel";
         this.§5214234618234631123423632234§.embedFonts = TanksFontService.isEmbedFonts();
         this.§5214234618234631123423632234§.type = "input";
         this.§5214234618234631123423632234§.x = 3;
         this.§5214234618234631123423632234§.y = 7;
         this.§5214234618234631123423632234§.height = 20;
         this.§5214234618234631123423632234§.addEventListener("change",this.§5214231138231151123423632234§);
         this.width = 212;
      }
      
      private function §continue use const§() : void
      {
         var _loc1_:Graphics = this.§521423173342317347123423632234§.graphics;
         _loc1_.clear();
         _loc1_.beginBitmapFill(this.§try package default§ ? §native set function§ : §extends catch case§);
         _loc1_.drawRect(0,0,5,30);
         _loc1_.endFill();
         this.§521423173342317347123423632234§.x = 0;
         this.§521423173342317347123423632234§.y = 0;
         _loc1_ = this.§native var else§.graphics;
         _loc1_.clear();
         _loc1_.beginBitmapFill(this.§try package default§ ? §521423176832317696123423632234§ : §5214238699238712123423632234§);
         _loc1_.drawRect(0,0,this.§for var native§ - 10,30);
         _loc1_.endFill();
         this.§native var else§.x = 5;
         this.§native var else§.y = 0;
         _loc1_ = this.§5214234274234287123423632234§.graphics;
         _loc1_.clear();
         _loc1_.beginBitmapFill(this.§try package default§ ? §521423145982314611123423632234§ : §5214234741234754123423632234§);
         _loc1_.drawRect(0,0,5,30);
         _loc1_.endFill();
         this.§5214234274234287123423632234§.x = this.§for var native§ - 5;
         this.§5214234274234287123423632234§.y = 0;
      }
      
      override public function set height(param1:Number) : void
      {
         this.§52142344323456123423632234§ = param1;
         this.§continue use const§();
      }
      
      override public function set width(param1:Number) : void
      {
         this.§for var native§ = param1;
         this.§5214234618234631123423632234§.width = this.§for var native§ - 6;
         this.§continue use const§();
      }
      
      public function get value() : String
      {
         return this.§in set each§;
      }
      
      public function set hidden(param1:Boolean) : void
      {
         this.§5214234566234579123423632234§ = param1;
         this.§5214234618234631123423632234§.displayAsPassword = this.§5214234566234579123423632234§;
         this.§5214234618234631123423632234§.defaultTextFormat = this.§if function case§;
         this.§5214234618234631123423632234§.setTextFormat(this.§if function case§);
      }
      
      public function §var package class§(param1:Event) : void
      {
         removeEventListener("removedFromStage",this.§var package class§);
         this.§5214234618234631123423632234§.removeEventListener("textInput",this.§5214231138231151123423632234§);
         this.§5214234618234631123423632234§.removeEventListener("keyUp",this.§5214237869237882123423632234§);
      }
      
      public function set §5214236731236744123423632234§(param1:int) : void
      {
         this.§5214234618234631123423632234§.maxChars = param1;
      }
      
      private function §5214237869237882123423632234§(param1:KeyboardEvent) : void
      {
         var _loc2_:int = getTimer();
         this.§final var package§ = _loc2_;
      }
      
      public function set §class super break§(param1:Boolean) : void
      {
         this.§try package default§ = param1;
         this.§continue use const§();
      }
      
      private function §catch package§() : void
      {
         this.§5214234618234631123423632234§.defaultTextFormat = this.§if function case§;
         this.§5214234618234631123423632234§.setTextFormat(this.§if function case§);
      }
      
      public function get §class super break§() : Boolean
      {
         return this.§try package default§;
      }
      
      public function §52142367423687123423632234§() : void
      {
         this.§5214234618234631123423632234§.text = "";
         this.§class super break§ = true;
      }
      
      private function §5214231138231151123423632234§(param1:Event) : void
      {
         this.§in set each§ = this.§5214234618234631123423632234§.text;
         dispatchEvent(new §521423104662310479123423632234§("LoginChanged"));
      }
      
      override public function set tabIndex(param1:int) : void
      {
         this.§5214234618234631123423632234§.tabIndex = param1;
      }
      
      public function set align(param1:String) : void
      {
         this.§if function case§.align = param1;
         this.§catch package§();
      }
      
      public function set §5214237954237967123423632234§(param1:String) : void
      {
         this.§5214234618234631123423632234§.restrict = param1;
      }
      
      public function set label(param1:String) : void
      {
         this.§5214237412237425123423632234§.text = param1;
         this.§5214237412237425123423632234§.autoSize = "right";
      }
      
      public function set §52142376323776123423632234§(param1:int) : void
      {
         this.§521423167772316790123423632234§ = param1;
         this.§5214234618234631123423632234§.addEventListener("keyUp",this.§5214237869237882123423632234§);
         this.§throw static§ = new Timer(this.§521423167772316790123423632234§);
         this.§throw static§.addEventListener("timer",this.§5214239820239833123423632234§);
         this.§5214234618234631123423632234§.removeEventListener("textInput",this.§5214231138231151123423632234§);
         this.§throw static§.start();
      }
      
      private function §5214239820239833123423632234§(param1:TimerEvent) : void
      {
         var _loc2_:int = getTimer();
         if(_loc2_ - this.§final var package§ > this.§521423167772316790123423632234§ && this.§each try§ != this.value)
         {
            this.§each try§ = this.value;
            dispatchEvent(new §521423104662310479123423632234§("LoginChanged"));
         }
         this.§final var package§ = _loc2_;
      }
      
      public function set value(param1:String) : void
      {
         this.§5214234618234631123423632234§.text = this.§in set each§ = param1;
      }
   }
}

