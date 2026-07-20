package §include super switch§
{
   import §521423124962312509123423632234§.§521423149802314993123423632234§;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class §5214235191235204123423632234§ extends Sprite
   {
      
      protected var §for var native§:int;
      
      protected var §true use native§:Boolean;
      
      protected var §5214238706238719123423632234§:Number = 0;
      
      protected var §521423109472310960123423632234§:Number = 100;
      
      protected var §521423152852315298123423632234§:Number = 10;
      
      private var §521423152462315259123423632234§:Array = [0,0];
      
      private var §5214233002233015123423632234§:Array = [0.9,0.34];
      
      private var §521423113982311411123423632234§:Array = [11119017,11119017];
      
      private var §5214237379237392123423632234§:Array = [0.4,0.95];
      
      private var §native const break§:Matrix = new Matrix();
      
      public function §5214235191235204123423632234§(param1:Boolean = true)
      {
         super();
         this.§native const break§.createGradientBox(1,29,3.141592653589793 * 0.5);
         this.§true use native§ = param1;
      }
      
      public function set §break function if§(param1:Number) : void
      {
         this.§5214238706238719123423632234§ = param1;
         this.§continue use const§();
      }
      
      public function set §false catch default§(param1:Number) : void
      {
         this.§521423109472310960123423632234§ = param1;
         this.§continue use const§();
      }
      
      public function set §521423104002310413123423632234§(param1:Number) : void
      {
         this.§521423152852315298123423632234§ = param1;
         this.§continue use const§();
      }
      
      protected function §continue use const§() : void
      {
         var _loc1_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc2_:Graphics = graphics;
         _loc2_.clear();
         _loc2_.lineStyle(1,11119017);
         _loc2_.lineGradientStyle("linear",this.§521423113982311411123423632234§,this.§5214237379237392123423632234§,§521423149802314993123423632234§.§with set extends§,this.§native const break§);
         _loc2_.beginGradientFill("linear",this.§521423152462315259123423632234§,this.§5214233002233015123423632234§,§521423149802314993123423632234§.§with set extends§,this.§native const break§);
         _loc2_.drawRoundRect(0.5,0.5,this.§for var native§ - 1,29,8,8);
         _loc2_.endFill();
         if(this.§true use native§)
         {
            _loc1_ = width / ((this.§521423109472310960123423632234§ - this.§5214238706238719123423632234§) / this.§521423152852315298123423632234§);
            _loc3_ = _loc1_;
            while(_loc3_ < this.§for var native§ - 1)
            {
               _loc2_.lineStyle(0,16777215,0.4);
               _loc2_.moveTo(_loc3_,5);
               _loc2_.lineTo(_loc3_,25);
               _loc3_ += _loc1_;
            }
         }
      }
      
      override public function set width(param1:Number) : void
      {
         this.§for var native§ = param1;
         this.§continue use const§();
      }
   }
}

