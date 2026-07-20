package §dynamic function include§
{
   import §521423123782312391123423632234§.§use for native§;
   import §class function true§.§5214231297231310123423632234§;
   import §class function true§.§5214237690237703123423632234§;
   import §class function true§.§override in§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import §for use use§.§if package finally§;
   
   public class §521423165942316607123423632234§ extends EventDispatcher
   {
      
      private static const §5214237172237185123423632234§:int = 0;
      
      private static const §5214239935239948123423632234§:int = 1;
      
      private var §implements package in§:int = 0;
      
      private var §5214232615232628123423632234§:§while catch include§;
      
      private var §final super switch§:String;
      
      private var §package function function§:Object;
      
      private var §default const package§:Vector.<String>;
      
      private var §521423135562313569123423632234§:int;
      
      private var §class switch package§:int;
      
      private var §package include§:§use for native§;
      
      private var §5214235042235055123423632234§:Boolean;
      
      public function §521423165942316607123423632234§(param1:Object)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError();
         }
         this.§package function function§ = param1;
         this.§default const package§ = new Vector.<String>();
         for(var _loc2_ in param1)
         {
            this.§default const package§[§default const package§.length] = _loc2_;
         }
         this.§class switch package§ = this.§default const package§.length;
      }
      
      private function §521423159782315991123423632234§(param1:Event) : void
      {
         this.§package include§.§get function in§(this.§default const package§[this.§521423135562313569123423632234§],new §if package finally§(this.§5214232615232628123423632234§.§5214237626237639123423632234§,this.§5214232615232628123423632234§.§super const each§));
         this.§return for break§();
      }
      
      public function §override catch get§() : void
      {
         if(this.§implements package in§ == 1)
         {
            this.§5214232615232628123423632234§.§override catch get§();
            this.§package switch catch§();
            this.§package include§ = null;
            this.§implements package in§ = 0;
         }
      }
      
      public function §throw var super§() : void
      {
         this.§package include§ = null;
      }
      
      private function §use while import§(param1:Event) : void
      {
         if(!this.§5214235042235055123423632234§)
         {
            this.§5214235042235055123423632234§ = true;
            if(hasEventListener("open"))
            {
               dispatchEvent(new Event("open"));
            }
         }
         if(hasEventListener("partOpen"))
         {
            dispatchEvent(new §5214237690237703123423632234§("partOpen",this.§class switch package§,this.§521423135562313569123423632234§));
         }
      }
      
      private function §for set try§(param1:ErrorEvent) : void
      {
         var _loc2_:String = this.§default const package§[this.§521423135562313569123423632234§];
         this.§package include§.§get function in§(_loc2_,new §if package finally§(this.§5214232615232628123423632234§.§5214237626237639123423632234§));
         dispatchEvent(new §5214231297231310123423632234§("loaderError",_loc2_,param1.text));
         this.§return for break§();
      }
      
      private function §package switch catch§() : void
      {
         this.§default const package§ = null;
      }
      
      public function §null use set§(param1:String) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError();
         }
         this.§final super switch§ = param1;
         if(this.§5214232615232628123423632234§ == null)
         {
            this.§5214232615232628123423632234§ = new §while catch include§();
            this.§5214232615232628123423632234§.addEventListener("open",this.§use while import§);
            this.§5214232615232628123423632234§.addEventListener("loaderProgress",this.§with for use§);
            this.§5214232615232628123423632234§.addEventListener("complete",this.§521423159782315991123423632234§);
            this.§5214232615232628123423632234§.addEventListener("ioError",this.§for set try§);
            this.§5214232615232628123423632234§.addEventListener("securityError",this.§for set try§);
         }
         else
         {
            this.§override catch get§();
         }
         this.§package include§ = new §use for native§();
         this.§5214235042235055123423632234§ = false;
         this.§implements package in§ = 1;
         this.§521423135562313569123423632234§ = 0;
         this.§521423150842315097123423632234§();
      }
      
      private function §return for break§() : void
      {
         if(this.§implements package in§ == 0)
         {
            return;
         }
         if(hasEventListener("partComplete"))
         {
            dispatchEvent(new §5214237690237703123423632234§("partComplete",this.§class switch package§,this.§521423135562313569123423632234§));
         }
         if(++this.§521423135562313569123423632234§ == this.§class switch package§)
         {
            this.§package switch catch§();
            this.§implements package in§ = 0;
            if(hasEventListener("complete"))
            {
               dispatchEvent(new Event("complete"));
            }
         }
         else
         {
            this.§521423150842315097123423632234§();
         }
      }
      
      public function get §override set case§() : §use for native§
      {
         return this.§package include§;
      }
      
      private function §with for use§(param1:§override in§) : void
      {
         var _loc2_:Number = NaN;
         if(hasEventListener("loaderProgress"))
         {
            _loc2_ = (this.§521423135562313569123423632234§ + param1.§try package if§) / this.§class switch package§;
            dispatchEvent(new §override in§("loaderProgress",this.§class switch package§,this.§521423135562313569123423632234§,_loc2_,param1.bytesLoaded,param1.bytesTotal));
         }
      }
      
      private function §521423150842315097123423632234§() : void
      {
         var _loc2_:§5214233295233308123423632234§ = this.§package function function§[this.§default const package§[this.§521423135562313569123423632234§]];
         var _loc1_:String = _loc2_.§import package break§ ? this.§final super switch§ + _loc2_.§import package break§ : null;
         this.§5214232615232628123423632234§.§null use set§(this.§final super switch§ + _loc2_.§import use var§,_loc1_);
      }
      
      public function §5214231496231509123423632234§() : void
      {
         if(this.§implements package in§ == 0)
         {
            throw new Error("Wrong method invocation");
         }
         this.§5214232615232628123423632234§.§5214231496231509123423632234§();
      }
   }
}

