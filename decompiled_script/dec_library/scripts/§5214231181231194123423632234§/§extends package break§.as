package §5214231181231194123423632234§
{
   import §521423124962312509123423632234§.§521423149802314993123423632234§;
   import §521423126202312633123423632234§.TanksFontService;
   import §521423138512313864123423632234§.§finally function return§;
   import §5214238675238688123423632234§.§521423104662310479123423632234§;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §extends package break§ extends Sprite
   {
      
      private const §if function case§:TextFormat = TanksFontService.getTextFormat(12);
      
      public var §try use for§:§finally function return§;
      
      public var §5214234618234631123423632234§:TextField;
      
      private var §for var native§:int;
      
      private var §52142344323456123423632234§:int = 30;
      
      private var §521423152462315259123423632234§:Array = [0,0];
      
      private var §5214233002233015123423632234§:Array = [0.9,0.34];
      
      private var §521423113982311411123423632234§:Array = [11119017,11119017];
      
      private var §5214237379237392123423632234§:Array = [0.4,0.95];
      
      public function §extends package break§()
      {
         super();
         this.§try use for§ = new §finally function return§();
         this.§try use for§.x = 3;
         this.§try use for§.y = 7;
         this.§try use for§.tabEnabled = false;
         this.§try use for§.antiAliasType = "advanced";
         this.§try use for§.thickness = 150;
         this.§try use for§.sharpness = 200;
         addChild(this.§try use for§);
         this.§5214234618234631123423632234§ = new TextField();
         addChild(this.§5214234618234631123423632234§);
         this.§if function case§.color = 14540253;
         this.§5214234618234631123423632234§.tabEnabled = false;
         this.§5214234618234631123423632234§.defaultTextFormat = this.§if function case§;
         this.§5214234618234631123423632234§.antiAliasType = "advanced";
         this.§5214234618234631123423632234§.thickness = 150;
         this.§5214234618234631123423632234§.sharpness = 200;
         this.§5214234618234631123423632234§.gridFitType = "pixel";
         this.§5214234618234631123423632234§.embedFonts = TanksFontService.isEmbedFonts();
         this.§5214234618234631123423632234§.type = "input";
         this.§5214234618234631123423632234§.x = this.§try use for§.width + 6;
         this.§5214234618234631123423632234§.y = 7;
         this.§5214234618234631123423632234§.height = 20;
         this.§5214234618234631123423632234§.addEventListener("change",this.§include var if§);
         this.width = 212;
         tabEnabled = false;
         tabChildren = false;
      }
      
      public function §implements package package§(param1:String) : void
      {
         this.§try use for§.text = param1 + ":";
         this.§5214234618234631123423632234§.x = this.§try use for§.width + 6;
         this.§5214234618234631123423632234§.width = this.§for var native§ - this.§try use for§.width - 9;
      }
      
      override public function set height(param1:Number) : void
      {
         this.§52142344323456123423632234§ = param1;
         this.§continue use const§();
      }
      
      public function §52142367423687123423632234§() : void
      {
         this.§5214234618234631123423632234§.text = "";
      }
      
      public function §var package class§(param1:Event) : void
      {
         removeEventListener("removedFromStage",this.§var package class§);
         this.§5214234618234631123423632234§.removeEventListener("textInput",this.§include var if§);
      }
      
      public function §extends set default§(param1:§5214232420232433123423632234§) : void
      {
         switch(param1)
         {
            case §5214232420232433123423632234§.§521423181842318197123423632234§:
               this.§try use for§.textColor = 4691967;
               this.§5214234618234631123423632234§.textColor = 10013694;
               this.§521423152462315259123423632234§[0] = 2587;
               this.§521423152462315259123423632234§[1] = 7236;
               break;
            case §5214232420232433123423632234§.§5214233099233112123423632234§:
               this.§try use for§.textColor = 15741974;
               this.§5214234618234631123423632234§.textColor = 16685208;
               this.§521423152462315259123423632234§[0] = 1835008;
               this.§521423152462315259123423632234§[1] = 4325376;
               break;
            case §5214232420232433123423632234§.§do const switch§:
               this.§try use for§.textColor = 14540253;
               this.§5214234618234631123423632234§.textColor = 14540253;
               this.§521423152462315259123423632234§[0] = 0;
               this.§521423152462315259123423632234§[1] = 0;
               break;
            case §5214232420232433123423632234§.§throw use class§:
               this.§try use for§.textColor = 16776960;
               this.§5214234618234631123423632234§.textColor = 16777071;
               this.§521423152462315259123423632234§[0] = 1840640;
               this.§521423152462315259123423632234§[1] = 4338944;
         }
         this.§continue use const§();
      }
      
      public function set align(param1:String) : void
      {
         this.§if function case§.align = param1;
         this.§catch package§();
      }
      
      private function §continue use const§() : void
      {
         var _loc2_:Matrix = new Matrix();
         _loc2_.createGradientBox(1,this.§52142344323456123423632234§ - 1,3.141592653589793 * 0.5);
         var _loc1_:Graphics = graphics;
         _loc1_.clear();
         _loc1_.lineStyle(1,11119017);
         _loc1_.lineGradientStyle("linear",this.§521423113982311411123423632234§,this.§5214237379237392123423632234§,§521423149802314993123423632234§.§with set extends§,_loc2_);
         _loc1_.beginGradientFill("linear",this.§521423152462315259123423632234§,this.§5214233002233015123423632234§,§521423149802314993123423632234§.§with set extends§,_loc2_);
         _loc1_.drawRoundRect(0.5,0.5,this.§for var native§ - 1,this.§52142344323456123423632234§ - 1,8,8);
         _loc1_.endFill();
      }
      
      public function get value() : String
      {
         return this.§5214234618234631123423632234§.text;
      }
      
      override public function set width(param1:Number) : void
      {
         this.§for var native§ = param1;
         this.§5214234618234631123423632234§.width = this.§for var native§ - 6;
         this.§continue use const§();
      }
      
      private function §include var if§(param1:Event) : void
      {
         dispatchEvent(new §521423104662310479123423632234§("LoginChanged"));
      }
      
      public function set value(param1:String) : void
      {
         this.§5214234618234631123423632234§.text = param1;
      }
      
      private function §catch package§() : void
      {
         this.§5214234618234631123423632234§.defaultTextFormat = this.§if function case§;
         this.§5214234618234631123423632234§.setTextFormat(this.§if function case§);
      }
   }
}

