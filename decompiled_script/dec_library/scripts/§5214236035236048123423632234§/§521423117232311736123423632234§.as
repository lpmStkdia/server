package §5214236035236048123423632234§
{
   import §521423149872315000123423632234§.§521423102962310309123423632234§;
   import §521423149872315000123423632234§.§521423135372313550123423632234§;
   import §521423149872315000123423632234§.§521423182442318257123423632234§;
   import §521423149872315000123423632234§.§52142326323276123423632234§;
   import §521423149872315000123423632234§.§default finally var§;
   import §521423149872315000123423632234§.§dynamic finally implements§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §521423117232311736123423632234§ extends Sprite
   {
      
      private static const §do catch each§:BitmapData = new §521423135372313550123423632234§(0,0);
      
      private static const §throw switch super§:BitmapData = new §521423102962310309123423632234§(0,0);
      
      private static const §521423146412314654123423632234§:BitmapData = new §default finally var§(0,0);
      
      private static const §5214234929234942123423632234§:BitmapData = new §dynamic finally implements§(0,0);
      
      private static const §521423145362314549123423632234§:BitmapData = new §52142326323276123423632234§(0,0);
      
      private static const §import finally true§:BitmapData = new §521423182442318257123423632234§(0,0);
      
      private var icon:Bitmap = new Bitmap(§521423146412314654123423632234§);
      
      private var §521423159832315996123423632234§:int = 0;
      
      private var §521423151862315199123423632234§:int = 0;
      
      public function §521423117232311736123423632234§()
      {
         super();
         addChild(icon);
      }
      
      private function §package set get§(param1:Event) : void
      {
         §521423151862315199123423632234§ = §521423151862315199123423632234§ + 1;
         if(§521423151862315199123423632234§ > 5)
         {
            §521423151862315199123423632234§ = 0;
            §521423159832315996123423632234§ = (§521423159832315996123423632234§ + 1) % 4;
            switch(§521423159832315996123423632234§)
            {
               case 0:
                  this.icon.bitmapData = §521423146412314654123423632234§;
                  break;
               case 1:
                  this.icon.bitmapData = §5214234929234942123423632234§;
                  break;
               case 2:
                  this.icon.bitmapData = §521423145362314549123423632234§;
                  break;
               case 3:
                  this.icon.bitmapData = §import finally true§;
            }
         }
      }
      
      public function §5214238294238307123423632234§(param1:int) : void
      {
         removeEventListener("enterFrame",this.§package set get§);
         this.icon.visible = param1 != 0;
         switch(param1 - 1)
         {
            case 0:
               §521423151862315199123423632234§ = 0;
               §521423159832315996123423632234§ = 0;
               icon.bitmapData = §521423146412314654123423632234§;
               addEventListener("enterFrame",this.§package set get§);
               break;
            case 1:
               this.icon.bitmapData = §throw switch super§;
               break;
            case 2:
               this.icon.bitmapData = §do catch each§;
         }
      }
   }
}

