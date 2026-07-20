package §521423129082312921123423632234§
{
   import §521423165552316568123423632234§.§default var function§;
   import §continue switch case§.§dynamic const break§;
   import §continue switch case§.§each var else§;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.Shape;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import §if finally include§.§521423135842313597123423632234§;
   import §throw while throw§.§521423149072314920123423632234§;
   
   public class §521423192552319268123423632234§ implements §false super finally§
   {
      
      private static const §521423145502314563123423632234§:BitmapData = new §521423149072314920123423632234§(0,0);
      
      private var §521423176052317618123423632234§:§default var function§;
      
      private var stage:Stage;
      
      private var §5214233263233276123423632234§:DisplayObjectContainer;
      
      private var §521423106492310662123423632234§:Shape;
      
      private var §null use function§:Rectangle;
      
      public function §521423192552319268123423632234§()
      {
         super();
         this.§521423176052317618123423632234§ = §521423135842313597123423632234§.§521423176052317618123423632234§;
         var _loc1_:§each var else§ = this.§521423176052317618123423632234§.§5214231532231545123423632234§(§each var else§) as §each var else§;
         this.stage = _loc1_.stage;
         this.§5214233263233276123423632234§ = _loc1_.§dynamic super return§;
         this.§521423106492310662123423632234§ = new Shape();
      }
      
      private function §import use switch§(param1:Event = null) : void
      {
         this.§521423106492310662123423632234§.graphics.clear();
         this.§521423106492310662123423632234§.graphics.beginBitmapFill(§521423145502314563123423632234§);
         this.§521423106492310662123423632234§.graphics.drawRect(0,0,this.stage.stageWidth / §dynamic const break§.§5214231303231316123423632234§,this.stage.stageHeight / §dynamic const break§.§5214231303231316123423632234§);
         if(this.§null use function§ != null)
         {
            this.§521423106492310662123423632234§.graphics.drawRect(this.§null use function§.x,this.§null use function§.y,this.§null use function§.width,this.§null use function§.height);
         }
      }
      
      public function §521423138552313868123423632234§() : void
      {
         if(this.§5214233263233276123423632234§.contains(this.§521423106492310662123423632234§))
         {
            this.stage.removeEventListener("resize",this.§import use switch§);
            this.§5214233263233276123423632234§.removeChild(this.§521423106492310662123423632234§);
         }
      }
      
      public function §true for false§() : void
      {
         if(!this.§5214233263233276123423632234§.contains(this.§521423106492310662123423632234§))
         {
            this.§import use switch§();
            this.§5214233263233276123423632234§.addChild(this.§521423106492310662123423632234§);
            this.stage.addEventListener("resize",this.§import use switch§);
         }
      }
      
      public function §extends set extends§(param1:Rectangle = null) : void
      {
         this.§null use function§ = param1;
         this.§import use switch§();
      }
   }
}

