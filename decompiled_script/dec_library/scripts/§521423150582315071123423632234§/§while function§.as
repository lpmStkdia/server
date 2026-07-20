package §521423150582315071123423632234§
{
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §while function§ extends Sprite
   {
      
      private static var §while for throw§:Class = bullets_swf$136e2a1b6a59841a34d44e627dddb6bf1570205700;
      
      private var §package const if§:Loader;
      
      public function §while function§()
      {
         super();
         var _loc1_:LoaderContext = new LoaderContext();
         _loc1_.applicationDomain = ApplicationDomain.currentDomain;
         _loc1_.allowCodeImport = true;
         §package const if§ = new Loader();
         §package const if§.contentLoaderInfo.addEventListener("complete",§521423166492316662123423632234§);
         §package const if§.loadBytes(new §while for throw§(),_loc1_);
         addChild(§package const if§);
      }
      
      private function §521423166492316662123423632234§(param1:Event) : void
      {
         §package const if§.contentLoaderInfo.removeEventListener("complete",§521423166492316662123423632234§);
      }
   }
}

