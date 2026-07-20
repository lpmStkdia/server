package §for use use§
{
   import §521423101572310170123423632234§.§521423124172312430123423632234§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.setTimeout;
   import §implements use var§.§try var package§;
   
   public class §521423108362310849123423632234§
   {
      
      private var §5214231482231495123423632234§:BitmapData;
      
      private var §5214237869237882123423632234§:§521423172372317250123423632234§;
      
      private var §package const if§:Loader;
      
      private var §final set with§:§if package finally§;
      
      private var §5214237117237130123423632234§:Boolean;
      
      public function §521423108362310849123423632234§()
      {
         super();
      }
      
      private function §catch catch get§() : void
      {
         this.§package const if§ = null;
         this.§final set with§ = null;
         var _loc1_:§521423172372317250123423632234§ = this.§5214237869237882123423632234§;
         this.§5214237869237882123423632234§ = null;
         _loc1_.onTextureReady(this);
      }
      
      private function §if super false§(param1:Event) : void
      {
         var _loc2_:BitmapData = null;
         if(this.§5214237117237130123423632234§)
         {
            Bitmap(this.§package const if§.content).bitmapData.dispose();
            this.§package const if§.unload();
            this.§package const if§ = null;
         }
         else
         {
            _loc2_ = Bitmap(this.§package const if§.content).bitmapData;
            this.§package const if§.contentLoaderInfo.removeEventListener("complete",this.§if super false§);
            this.§package const if§.unload();
            this.§5214231482231495123423632234§ = §521423124172312430123423632234§.§5214233917233930123423632234§(this.§5214231482231495123423632234§,_loc2_,true);
            this.§catch catch get§();
         }
      }
      
      public function get §function var function§() : BitmapData
      {
         return this.§5214231482231495123423632234§;
      }
      
      public function §switch super use§() : void
      {
         this.§5214237117237130123423632234§ = true;
      }
      
      public function §5214235203235216123423632234§(param1:§if package finally§, param2:§521423172372317250123423632234§) : void
      {
         if(this.§package const if§ != null)
         {
            throw new Error("Construction in progress");
         }
         if(param1 == null)
         {
            throw new ArgumentError("Parameter textureData is null");
         }
         if(param1.§5214237626237639123423632234§ == null)
         {
            this.§5214231482231495123423632234§ = new §try var package§(65280,16,16);
            setTimeout(param2.onTextureReady,0,this);
            return;
         }
         this.§5214237117237130123423632234§ = false;
         this.§final set with§ = param1;
         this.§5214237869237882123423632234§ = param2;
         this.§521423172812317294123423632234§(param1.§5214237626237639123423632234§,this.§dynamic var switch§);
      }
      
      private function §dynamic var switch§(param1:Event) : void
      {
         if(this.§5214237117237130123423632234§)
         {
            Bitmap(this.§package const if§.content).bitmapData.dispose();
            this.§package const if§.unload();
            this.§package const if§ = null;
         }
         else
         {
            this.§5214231482231495123423632234§ = Bitmap(this.§package const if§.content).bitmapData;
            this.§package const if§.contentLoaderInfo.removeEventListener("complete",this.§dynamic var switch§);
            this.§package const if§.unload();
            if(this.§final set with§.§super const each§ != null)
            {
               this.§521423172812317294123423632234§(this.§final set with§.§super const each§,this.§if super false§);
            }
            else
            {
               this.§catch catch get§();
            }
         }
      }
      
      private function §521423172812317294123423632234§(param1:ByteArray, param2:Function) : void
      {
         param1.position = 0;
         this.§package const if§ = new Loader();
         this.§package const if§.contentLoaderInfo.addEventListener("complete",param2);
         this.§package const if§.loadBytes(param1);
      }
   }
}

