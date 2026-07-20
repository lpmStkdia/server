package §521423138512313864123423632234§
{
   import flash.display.Graphics;
   import flash.display.Sprite;
   
   public class §include function each§ extends Sprite
   {
      
      private const §default var switch§:int = 200;
      
      public var color:int = 16777215;
      
      public var §5214234803234816123423632234§:Number = 0.4;
      
      private var §5214237412237425123423632234§:§finally function return§ = new §finally function return§();
      
      public function §include function each§()
      {
         super();
         addChild(this.§5214237412237425123423632234§);
         this.§5214237412237425123423632234§.§5214239166239179123423632234§ = 11;
      }
      
      public function set text(param1:String) : void
      {
         var _loc2_:Graphics = this.graphics;
         this.§5214237412237425123423632234§.text = param1;
         if(this.§5214237412237425123423632234§.textWidth > 200)
         {
            this.§5214237412237425123423632234§.width = 200;
            this.§5214237412237425123423632234§.multiline = true;
            this.§5214237412237425123423632234§.wordWrap = true;
         }
         _loc2_.clear();
         _loc2_.beginFill(this.color,this.§5214234803234816123423632234§);
         _loc2_.drawRect(-3,-3,this.§5214237412237425123423632234§.textWidth + 9,this.§5214237412237425123423632234§.textHeight + 9);
         _loc2_.endFill();
      }
   }
}

