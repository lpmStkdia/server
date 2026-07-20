package §implements use var§
{
   import §521423101572310170123423632234§.§521423124172312430123423632234§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §5214237238237251123423632234§
   {
      
      public var §521423161902316203123423632234§:BitmapData;
      
      private var §extends for do§:§5214234735234748123423632234§;
      
      private var §5214237402237415123423632234§:Function;
      
      private var §package const if§:Loader;
      
      public function §5214237238237251123423632234§()
      {
         super();
      }
      
      private function §null use set§(param1:ByteArray, param2:Function) : void
      {
         this.§package const if§ = new Loader();
         this.§package const if§.contentLoaderInfo.addEventListener("complete",param2);
         this.§package const if§.loadBytes(param1);
      }
      
      private function §catch catch get§() : void
      {
         this.§package const if§ = null;
         this.§5214237402237415123423632234§.call(null,this);
      }
      
      private function §521423116812311694123423632234§(param1:BitmapData) : void
      {
         this.§521423161902316203123423632234§ = param1;
         this.§catch catch get§();
      }
      
      public function §52142328223295123423632234§(param1:§5214234735234748123423632234§, param2:Function) : void
      {
         this.§extends for do§ = param1;
         this.§5214237402237415123423632234§ = param2;
         this.§null use set§(param1.§5214237626237639123423632234§,this.§5214237433237446123423632234§);
      }
      
      private function §function for const§(param1:Event) : void
      {
         var _loc2_:BitmapData = Bitmap(this.§package const if§.content).bitmapData;
         this.§521423161902316203123423632234§ = §521423124172312430123423632234§.§5214233917233930123423632234§(this.§521423161902316203123423632234§,_loc2_,true);
         this.§catch catch get§();
      }
      
      private function §5214237433237446123423632234§(param1:Event) : void
      {
         this.§521423161902316203123423632234§ = Bitmap(this.§package const if§.content).bitmapData;
         if(this.§extends for do§.§super const each§ != null)
         {
            this.§null use set§(this.§extends for do§.§super const each§,this.§function for const§);
         }
         else
         {
            this.§catch catch get§();
         }
      }
   }
}

