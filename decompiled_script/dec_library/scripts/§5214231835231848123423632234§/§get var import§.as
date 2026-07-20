package §5214231835231848123423632234§
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.media.Sound;
   import flash.media.SoundLoaderContext;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.system.Capabilities;
   import flash.utils.ByteArray;
   import flash.utils.getDefinitionByName;
   
   public class §get var import§ extends Sound
   {
      
      private var §5214233582233595123423632234§:String;
      
      private var §include set each§:Object;
      
      private var §5214234341234354123423632234§:SoundLoaderContext;
      
      private var §521423146062314619123423632234§:Class;
      
      private var §false catch for§:Class;
      
      public function §get var import§()
      {
         super();
         var _loc1_:§default var do§ = §default var do§;
         if(flash.system.Capabilities.playerType == "Desktop" || flash.system.Capabilities.playerType == "External")
         {
            this.§521423146062314619123423632234§ = getDefinitionByName("flash.filesystem.File") as Class;
            this.§false catch for§ = getDefinitionByName("flash.filesystem.FileStream") as Class;
            this.§include set each§ = this.§521423146062314619123423632234§["applicationStorageDirectory"].resolvePath("cache");
            if(!this.§include set each§.exists)
            {
               this.§include set each§.createDirectory();
            }
            else if(!this.§include set each§.isDirectory)
            {
               throw new Error("Cannot create directory." + this.§include set each§.nativePath + " is already exists.");
            }
         }
      }
      
      private function §final finally use§(param1:Event) : void
      {
         dispatchEvent(new IOErrorEvent("SoundCacheLoader: IOError!"));
      }
      
      private function §521423164202316433123423632234§(param1:Event) : void
      {
         var _loc3_:ByteArray = URLLoader(param1.target).data as ByteArray;
         var _loc2_:Object = new this.§521423146062314619123423632234§(this.§include set each§.resolvePath(this.§5214233582233595123423632234§).nativePath);
         var _loc4_:Object = new this.§false catch for§();
         try
         {
            _loc4_.open(_loc2_,"write");
            _loc4_.writeBytes(_loc3_);
            _loc4_.close();
         }
         catch(e:Error)
         {
            dispatchEvent(new IOErrorEvent("SoundCacheLoader error! " + e.message + "url: " + §5214233582233595123423632234§));
         }
         super.load(new URLRequest(_loc2_.url),this.§5214234341234354123423632234§);
      }
      
      private function §521423171222317135123423632234§(param1:Event) : void
      {
         dispatchEvent(new SecurityErrorEvent("SoundCacheLoader: Security error!"));
      }
      
      override public function load(param1:URLRequest, param2:SoundLoaderContext = null) : void
      {
         var _loc5_:§default var do§ = §default var do§;
         if(!(flash.system.Capabilities.playerType == "Desktop" || flash.system.Capabilities.playerType == "External") || param1 == null)
         {
            super.load(param1,param2);
            return;
         }
         this.§5214234341234354123423632234§ = param2;
         this.§5214233582233595123423632234§ = §5214239965239978123423632234§.§null const break§(param1.url);
         var _loc3_:Object = this.§include set each§.resolvePath(this.§5214233582233595123423632234§);
         if(_loc3_.exists)
         {
            param1.url = _loc3_.url;
            super.load(param1,param2);
            return;
         }
         var _loc4_:URLLoader = new URLLoader();
         _loc4_.dataFormat = "binary";
         _loc4_.addEventListener("complete",this.§521423164202316433123423632234§,false,0,true);
         _loc4_.addEventListener("ioError",this.§final finally use§,false,0,true);
         _loc4_.addEventListener("securityError",this.§521423171222317135123423632234§,false,0,true);
         _loc4_.load(param1);
      }
   }
}

