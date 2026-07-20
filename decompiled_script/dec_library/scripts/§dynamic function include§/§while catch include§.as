package §dynamic function include§
{
   import §521423101572310170123423632234§.§set switch each§;
   import §class function true§.§5214237690237703123423632234§;
   import §class function true§.§override in§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   
   public class §while catch include§ extends EventDispatcher
   {
      
      private static const §5214237172237185123423632234§:int = 0;
      
      private static const §case for with§:int = 1;
      
      private static const §in while get§:int = 2;
      
      public var §5214237626237639123423632234§:ByteArray;
      
      public var §super const each§:ByteArray;
      
      private var §implements package in§:int = 0;
      
      private var §final set true§:§set switch each§;
      
      private var §5214238101238114123423632234§:String;
      
      private var §521423124112312424123423632234§:String;
      
      public function §while catch include§()
      {
         super();
      }
      
      public function §5214231496231509123423632234§() : void
      {
         switch(this.§implements package in§ - 1)
         {
            case 0:
               this.§5214236131236144123423632234§();
               this.§521423180122318025123423632234§(1,this.§5214238101238114123423632234§);
               break;
            case 1:
               this.§5214236131236144123423632234§();
               this.§521423180122318025123423632234§(2,this.§521423124112312424123423632234§);
               break;
            default:
               throw new Error("Wrong loader state: " + this.§implements package in§);
         }
      }
      
      private function §var set true§(param1:ProgressEvent) : void
      {
         var _loc3_:int = 0;
         var _loc2_:Number = NaN;
         if(hasEventListener("loaderProgress"))
         {
            _loc3_ = this.§implements package in§ == 1 ? 0 : 1;
            _loc2_ = 0.5 * (_loc3_ + param1.bytesLoaded / param1.bytesTotal);
            dispatchEvent(new §override in§("loaderProgress",2,_loc3_,_loc2_,param1.bytesLoaded,param1.bytesTotal));
         }
      }
      
      private function §package switch catch§() : void
      {
         this.§5214236131236144123423632234§();
         this.§5214238101238114123423632234§ = null;
         this.§521423124112312424123423632234§ = null;
      }
      
      private function §5214236131236144123423632234§() : void
      {
         if(this.§final set true§ != null)
         {
            this.§final set true§.close();
            this.§final set true§.removeEventListener("open",this.§true for do§);
            this.§final set true§.removeEventListener("progress",this.§var set true§);
            this.§final set true§.removeEventListener("complete",this.§521423180072318020123423632234§);
            this.§final set true§.removeEventListener("ioError",this.§for set try§);
            this.§final set true§.removeEventListener("securityError",this.§for set try§);
            this.§final set true§ = null;
         }
      }
      
      private function §521423180122318025123423632234§(param1:int, param2:String) : void
      {
         this.§implements package in§ = param1;
         this.§import for use§();
         this.§final set true§.load(new URLRequest(param2));
      }
      
      private function §5214231331231344123423632234§(param1:int) : void
      {
         if(hasEventListener("partComplete"))
         {
            dispatchEvent(new §5214237690237703123423632234§("partComplete",2,param1));
         }
      }
      
      private function §catch catch get§() : void
      {
         this.§implements package in§ = 0;
         this.§package switch catch§();
         if(hasEventListener("complete"))
         {
            dispatchEvent(new Event("complete"));
         }
      }
      
      private function §521423180072318020123423632234§(param1:Event) : void
      {
         switch(this.§implements package in§ - 1)
         {
            case 0:
               this.§5214237626237639123423632234§ = this.§final set true§.data;
               this.§5214236131236144123423632234§();
               this.§5214231331231344123423632234§(0);
               if(this.§521423124112312424123423632234§)
               {
                  this.§521423180122318025123423632234§(2,this.§521423124112312424123423632234§);
               }
               else
               {
                  this.§catch catch get§();
               }
               break;
            case 1:
               this.§super const each§ = this.§final set true§.data;
               this.§5214236131236144123423632234§();
               this.§5214231331231344123423632234§(1);
               this.§catch catch get§();
         }
      }
      
      public function §null use set§(param1:String, param2:String = null) : void
      {
         this.§throw var super§();
         this.§5214238101238114123423632234§ = param1;
         this.§521423124112312424123423632234§ = param2;
         this.§521423180122318025123423632234§(1,param1);
      }
      
      private function §true for do§(param1:Event) : void
      {
         if(this.§5214237626237639123423632234§ == null && hasEventListener("open"))
         {
            dispatchEvent(new Event("open"));
         }
         if(hasEventListener("partOpen"))
         {
            dispatchEvent(new §5214237690237703123423632234§("partOpen",2,this.§implements package in§ == 1 ? 0 : 1));
         }
      }
      
      private function §import for use§() : void
      {
         this.§final set true§ = new §set switch each§();
         this.§final set true§.dataFormat = "binary";
         this.§final set true§.addEventListener("open",this.§true for do§);
         this.§final set true§.addEventListener("progress",this.§var set true§);
         this.§final set true§.addEventListener("complete",this.§521423180072318020123423632234§);
         this.§final set true§.addEventListener("ioError",this.§for set try§);
         this.§final set true§.addEventListener("securityError",this.§for set try§);
      }
      
      public function §override catch get§() : void
      {
         if(this.§implements package in§ == 0)
         {
            return;
         }
         this.§implements package in§ = 0;
         this.§final set true§.close();
         this.§package switch catch§();
      }
      
      private function §for set try§(param1:ErrorEvent) : void
      {
         this.§implements package in§ = 0;
         this.§package switch catch§();
         dispatchEvent(param1);
      }
      
      public function §throw var super§() : void
      {
         this.§override catch get§();
         this.§5214237626237639123423632234§ = null;
         this.§super const each§ = null;
      }
   }
}

