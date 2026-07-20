package §var while try§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import §throw while throw§.§521423132762313289123423632234§;
   
   public class §override null§ extends Sprite
   {
      
      public static const §5214235655235668123423632234§:BitmapData = new §521423132762313289123423632234§(0,0);
      
      public var data:Object;
      
      public function §override null§(param1:Object)
      {
         super();
         this.data = param1;
         buttonMode = true;
         tabEnabled = false;
         addEventListener("click",this.§521423116222311635123423632234§);
         addChild(new Bitmap(§5214235655235668123423632234§));
      }
      
      private function §521423116222311635123423632234§(param1:MouseEvent) : void
      {
         visible = false;
         param1.stopPropagation();
         removeEventListener("click",this.§521423116222311635123423632234§);
         dispatchEvent(new §521423167952316808123423632234§(this.data));
      }
   }
}

