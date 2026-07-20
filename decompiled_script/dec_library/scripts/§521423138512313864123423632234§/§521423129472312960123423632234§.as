package §521423138512313864123423632234§
{
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   
   public class §521423129472312960123423632234§ extends Sprite
   {
      
      public const §521423173342317347123423632234§:Shape = new Shape();
      
      public const §native var else§:Shape = new Shape();
      
      public const §5214234274234287123423632234§:Shape = new Shape();
      
      public var §native set function§:BitmapData;
      
      public var §521423176832317696123423632234§:BitmapData;
      
      public var §521423145982314611123423632234§:BitmapData;
      
      public var §for var native§:int;
      
      public function §521423129472312960123423632234§()
      {
         super();
         addChild(this.§521423173342317347123423632234§);
         addChild(this.§native var else§);
         addChild(this.§5214234274234287123423632234§);
      }
      
      override public function set width(param1:Number) : void
      {
         this.§for var native§ = param1;
         this.§continue use const§();
      }
      
      public function §continue use const§() : void
      {
         var _loc1_:Graphics = this.§521423173342317347123423632234§.graphics;
         _loc1_.clear();
         if(§native set function§)
         {
            _loc1_.beginBitmapFill(this.§native set function§);
         }
         _loc1_.drawRect(0,0,7,30);
         _loc1_.endFill();
         this.§521423173342317347123423632234§.x = 0;
         this.§521423173342317347123423632234§.y = 0;
         _loc1_ = this.§native var else§.graphics;
         _loc1_.clear();
         if(§521423176832317696123423632234§)
         {
            _loc1_.beginBitmapFill(this.§521423176832317696123423632234§);
         }
         _loc1_.drawRect(0,0,this.§for var native§ - 14,30);
         _loc1_.endFill();
         this.§native var else§.x = 7;
         this.§native var else§.y = 0;
         _loc1_ = this.§5214234274234287123423632234§.graphics;
         _loc1_.clear();
         if(§521423145982314611123423632234§)
         {
            _loc1_.beginBitmapFill(this.§521423145982314611123423632234§);
         }
         _loc1_.drawRect(0,0,7,30);
         _loc1_.endFill();
         this.§5214234274234287123423632234§.x = this.§for var native§ - 7;
         this.§5214234274234287123423632234§.y = 0;
      }
   }
}

