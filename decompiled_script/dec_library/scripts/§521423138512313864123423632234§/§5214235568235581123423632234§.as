package §521423138512313864123423632234§
{
   import §521423124962312509123423632234§.§521423149802314993123423632234§;
   import §521423126202312633123423632234§.TanksFontService;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §5214235568235581123423632234§ extends Sprite
   {
      
      private var §5214238057238070123423632234§:Shape = new Shape();
      
      private var §521423106492310662123423632234§:§if with§ = new §if with§(0,0,16744512);
      
      private const §if function case§:TextFormat = TanksFontService.getTextFormat(12);
      
      public var §5214235669235682123423632234§:TextField = new TextField();
      
      private var §for var native§:int;
      
      private var §52142344323456123423632234§:int;
      
      public function §5214235568235581123423632234§(param1:Boolean = true)
      {
         super();
         if(param1)
         {
            addChild(this.§5214238057238070123423632234§);
            addChild(this.§521423106492310662123423632234§);
         }
         this.§5214238057238070123423632234§.x = this.§5214238057238070123423632234§.y = 1;
         addChild(this.§5214235669235682123423632234§);
         this.§if function case§.color = 16777215;
         this.§5214235669235682123423632234§.defaultTextFormat = this.§if function case§;
         this.§5214235669235682123423632234§.antiAliasType = "advanced";
         this.§5214235669235682123423632234§.gridFitType = "pixel";
         this.§5214235669235682123423632234§.embedFonts = TanksFontService.isEmbedFonts();
         this.§5214235669235682123423632234§.sharpness = -210;
         this.§5214235669235682123423632234§.thickness = 50;
         this.§5214235669235682123423632234§.x = this.§5214235669235682123423632234§.y = 5;
         this.§5214235669235682123423632234§.multiline = true;
         this.§5214235669235682123423632234§.wordWrap = true;
         this.§5214235669235682123423632234§.type = "input";
         this.§5214235669235682123423632234§.selectable = true;
         this.§5214235669235682123423632234§.autoSize = "none";
      }
      
      override public function get height() : Number
      {
         return this.§52142344323456123423632234§;
      }
      
      public function set §5214236731236744123423632234§(param1:int) : void
      {
         this.§5214235669235682123423632234§.maxChars = param1;
      }
      
      override public function get width() : Number
      {
         return this.§for var native§;
      }
      
      override public function set height(param1:Number) : void
      {
         this.§52142344323456123423632234§ = param1;
         this.§521423106492310662123423632234§.height = this.§52142344323456123423632234§;
         this.§5214235669235682123423632234§.height = this.§52142344323456123423632234§ - 10;
         this.§continue use const§();
      }
      
      public function set text(param1:String) : void
      {
         this.§5214235669235682123423632234§.text = param1;
      }
      
      public function get text() : String
      {
         return this.§5214235669235682123423632234§.text;
      }
      
      private function §continue use const§() : void
      {
         var _loc1_:Graphics = this.§5214238057238070123423632234§.graphics;
         var _loc2_:Matrix = new Matrix();
         _loc2_.createGradientBox(this.§for var native§ - 2,this.§52142344323456123423632234§ - 2,3.141592653589793 * 0.5);
         _loc1_.clear();
         _loc1_.beginGradientFill("linear",[0,0],[0.9,0.1],§521423149802314993123423632234§.§with set extends§,_loc2_);
         _loc1_.drawRect(0,0,this.§for var native§ - 2,this.§52142344323456123423632234§ - 2);
         _loc1_.endFill();
      }
      
      override public function set width(param1:Number) : void
      {
         this.§for var native§ = param1;
         this.§521423106492310662123423632234§.width = this.§for var native§;
         this.§5214235669235682123423632234§.width = this.§for var native§ - 10;
         this.§continue use const§();
      }
   }
}

