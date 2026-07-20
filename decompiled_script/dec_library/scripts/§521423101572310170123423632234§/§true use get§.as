package §521423101572310170123423632234§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.setTimeout;
   
   public class §true use get§ extends EventDispatcher
   {
      
      public var §null set false§:Vector.<BitmapData>;
      
      private var §case function else§:Vector.<ByteArray>;
      
      private var §5214238769238782123423632234§:Dictionary = new Dictionary();
      
      private var §5214239507239520123423632234§:int;
      
      private var §switch set finally§:int;
      
      private var §521423175192317532123423632234§:int;
      
      private var §521423183882318401123423632234§:Boolean;
      
      private var §default while return§:int;
      
      public function §true use get§()
      {
         super();
      }
      
      private function §import for use§(param1:int) : ImageLoader
      {
         var _loc2_:ImageLoader = new ImageLoader(param1);
         _loc2_.contentLoaderInfo.addEventListener("complete",this.§5214235722235735123423632234§);
         _loc2_.loadBytes(this.§case function else§[this.§521423175192317532123423632234§]);
         return _loc2_;
      }
      
      private function §5214231537231550123423632234§() : void
      {
         var _loc1_:ImageLoader = null;
         while(this.§switch set finally§ < this.§5214239507239520123423632234§ && this.§521423175192317532123423632234§ < this.§case function else§.length)
         {
            _loc1_ = this.§import for use§(this.§521423175192317532123423632234§);
            this.§5214238769238782123423632234§[_loc1_] = true;
            ++this.§switch set finally§;
            ++this.§521423175192317532123423632234§;
         }
      }
      
      private function §catch catch get§() : void
      {
         this.§521423183882318401123423632234§ = false;
         this.§case function else§ = null;
         dispatchEvent(new Event("complete"));
      }
      
      private function §5214235722235735123423632234§(param1:Event) : void
      {
         var _loc2_:ImageLoader = ImageLoader(LoaderInfo(param1.target).loader);
         --this.§switch set finally§;
         ++this.§default while return§;
         delete this.§5214238769238782123423632234§[_loc2_];
         this.§null set false§[_loc2_.index] = Bitmap(_loc2_.content).bitmapData;
         if(this.§default while return§ == this.§case function else§.length)
         {
            this.§catch catch get§();
         }
         else
         {
            this.§5214231537231550123423632234§();
         }
      }
      
      public function §extends var class§(param1:Vector.<ByteArray>, param2:int) : void
      {
         if(this.§521423183882318401123423632234§)
         {
            throw new Error("Already running");
         }
         if(param1 == null)
         {
            throw new ArgumentError("Parameter imageDatas is null");
         }
         this.§case function else§ = param1;
         this.§5214239507239520123423632234§ = param2;
         this.§521423183882318401123423632234§ = true;
         this.§null set false§ = new Vector.<BitmapData>(param1.length);
         this.§default while return§ = 0;
         this.§switch set finally§ = 0;
         this.§521423175192317532123423632234§ = 0;
         if(param1.length > 0)
         {
            this.§5214231537231550123423632234§();
         }
         else
         {
            setTimeout(this.§catch catch get§,0);
         }
      }
   }
}

import flash.display.Loader;

class ImageLoader extends Loader
{
   
   public var index:int;
   
   public function ImageLoader(param1:int)
   {
      super();
      this.index = param1;
   }
}
