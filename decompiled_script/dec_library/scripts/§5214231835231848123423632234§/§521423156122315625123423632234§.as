package §5214231835231848123423632234§
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.system.Capabilities;
   import flash.utils.ByteArray;
   import flash.utils.getDefinitionByName;
   
   public class §521423156122315625123423632234§ extends URLLoader
   {
      
      private var §return switch continue§:String;
      
      private var §5214233582233595123423632234§:String;
      
      private var §include set each§:Object;
      
      private var §521423146062314619123423632234§:Class;
      
      private var §false catch for§:Class;
      
      public function §521423156122315625123423632234§()
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
      
      override public function load(param1:URLRequest) : void
      {
         var _loc3_:§default var do§ = §default var do§;
         if(!(flash.system.Capabilities.playerType == "Desktop" || flash.system.Capabilities.playerType == "External"))
         {
            super.load(param1);
            return;
         }
         this.§return switch continue§ = param1.url;
         this.§5214233582233595123423632234§ = §5214239965239978123423632234§.§null const break§(this.§return switch continue§);
         var _loc2_:Object = this.§include set each§.resolvePath(this.§5214233582233595123423632234§);
         if(_loc2_.exists)
         {
            super.addEventListener("ioError",this.§do use continue§,false,0,true);
            super.addEventListener("securityError",this.§do use continue§,false,0,true);
            param1.url = _loc2_.url;
            super.load(param1);
            return;
         }
         this.§5214237936237949123423632234§(param1);
      }
      
      private function §5214234370234383123423632234§(param1:Event) : void
      {
         var _loc2_:Object = new this.§521423146062314619123423632234§(this.§include set each§.resolvePath(this.§5214233582233595123423632234§).nativePath);
         var _loc3_:Object = new this.§false catch for§();
         try
         {
            _loc3_.open(_loc2_,"write");
            _loc3_.writeBytes(URLLoader(param1.target).data as ByteArray);
            _loc3_.close();
         }
         catch(e:Error)
         {
            throw new IOErrorEvent("CacheURLLoader error! " + e.message);
         }
      }
      
      private function §do use continue§(param1:Event) : void
      {
         this.§5214237936237949123423632234§(new URLRequest(this.§return switch continue§));
      }
      
      private function §5214237936237949123423632234§(param1:URLRequest) : void
      {
         this.dataFormat = "binary";
         this.addEventListener("complete",this.§5214234370234383123423632234§,false,0,true);
         super.load(param1);
      }
   }
}

