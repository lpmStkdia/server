package §implements use var§
{
   import §521423101572310170123423632234§.*;
   import §5214231835231848123423632234§.§default var do§;
   import §5214234079234092123423632234§.§5214239059239072123423632234§;
   import §5214237436237449123423632234§.§5214237633237646123423632234§;
   import §class super do§.§case use default§;
   import flash.display.Loader;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.Capabilities;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import §true use var§.§throw finally continue§;
   
   public class §5214232468232481123423632234§ extends §5214237009237022123423632234§ implements §521423188192318832123423632234§
   {
      
      public static var §package var import§:§5214237633237646123423632234§;
      
      public static var §521423104832310496123423632234§:§throw finally continue§;
      
      private static const §while switch default§:String = "library";
      
      private var §final set true§:§set switch each§;
      
      private var §throw package function§:Loader;
      
      private var §521423125772312590123423632234§:§case use default§;
      
      private var §default set§:§5214239059239072123423632234§;
      
      private var data:ByteArray;
      
      public function §5214232468232481123423632234§(param1:§package switch get§)
      {
         super(param1);
         this.§521423125772312590123423632234§ = §521423104832310496123423632234§ as §case use default§;
      }
      
      private function §function finally extends§(param1:Event) : void
      {
         §include use catch§();
         §5214237869237882123423632234§.§null use else§(this);
      }
      
      private function §return use static§() : void
      {
      }
      
      private function §521423178882317901123423632234§() : String
      {
         var _loc1_:String = ".bin";
         return "library" + _loc1_;
      }
      
      override protected function §521423120912312104123423632234§() : void
      {
         this.§final set true§.close();
         this.§each finally class§();
      }
      
      override public function get §default for true§() : String
      {
         return "-r";
      }
      
      override public function §null use set§(param1:String, param2:§521423134722313485123423632234§) : void
      {
         super.§null use set§(param1,param2);
         this.§each finally class§();
      }
      
      override protected function §521423108502310863123423632234§() : void
      {
         super.§521423108502310863123423632234§();
         if(§include package true§(2) || !§package var import§.enabled)
         {
            this.data = null;
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:String = null;
         if(this.§default set§ != null)
         {
            _loc1_ = this.§default set§.§break set with§("Bundle-Name");
         }
         return "[" + super.toString() + ", name = " + _loc1_ + "]";
      }
      
      protected function §each finally class§() : void
      {
         var _loc1_:String = §521423128472312860123423632234§ + this.§521423178882317901123423632234§() + §521423143052314318123423632234§();
         this.§final set true§ = new §set switch each§();
         this.§final set true§.dataFormat = "binary";
         this.§final set true§.addEventListener("open",this.§function finally extends§);
         this.§final set true§.addEventListener("progress",this.§for set return§);
         this.§final set true§.addEventListener("ioError",this.§for set try§);
         this.§final set true§.addEventListener("securityError",this.§for set try§);
         this.§final set true§.addEventListener("complete",this.§in var true§);
         this.§final set true§.load(new URLRequest(_loc1_));
         §include set while§ = "Data requested";
         §5214231431231444123423632234§();
      }
      
      override public function get §in super get§() : String
      {
         return "Library";
      }
      
      private function §521423164202316433123423632234§(param1:Event) : void
      {
         try
         {
            this.§return use static§();
            if(!this.§521423125772312590123423632234§.§use for§())
            {
               this.§521423108502310863123423632234§();
            }
            else
            {
               this.§521423125772312590123423632234§.§else set package§(this);
            }
         }
         catch(err:Error)
         {
            §5214237869237882123423632234§.§in finally return§(this,err.getStackTrace() + ", message=" + err.message);
         }
      }
      
      override public function §52142316923182123423632234§(param1:§default function return§) : void
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeBytes(this.data);
         param1.§set use class§(this,_loc2_);
         this.data = null;
      }
      
      public function §521423164612316474123423632234§() : void
      {
         this.§521423108502310863123423632234§();
      }
      
      private function §default finally for§(param1:ByteArray) : void
      {
         this.§throw package function§ = new Loader();
         this.§throw package function§.contentLoaderInfo.addEventListener("complete",this.§521423164202316433123423632234§);
         var _loc2_:LoaderContext = new LoaderContext(false,ApplicationDomain.currentDomain);
         var _loc3_:§default var do§ = §default var do§;
         if(flash.system.Capabilities.playerType == "Desktop" || flash.system.Capabilities.playerType == "External")
         {
            _loc2_.allowCodeImport = true;
         }
         this.§throw package function§.loadBytes(param1,_loc2_);
      }
      
      override public function §521423172812317294123423632234§(param1:ByteArray, param2:§521423134722313485123423632234§) : Boolean
      {
         §5214236013236026123423632234§.§521423178252317838123423632234§("SWFLibraryResource::loadBytes() id: %1",[this.§false catch override§.id]);
         this.§5214237869237882123423632234§ = param2;
         this.§default finally for§(param1);
         return true;
      }
      
      private function §521423173072317320123423632234§() : void
      {
         var _loc2_:Array = null;
         var _loc1_:int = 0;
         var _loc3_:String = this.data.readUTF();
         this.§default set§ = new §5214239059239072123423632234§();
         if(_loc3_.length > 0)
         {
            _loc2_ = _loc3_.split(/[=&]/);
            while(_loc1_ < _loc2_.length)
            {
               this.§default set§.§each const function§(_loc2_[_loc1_],_loc2_[_loc1_ + 1]);
               _loc1_ += 2;
            }
         }
      }
      
      private function §for set return§(param1:ProgressEvent) : void
      {
         §include use catch§();
      }
      
      private function §in var true§(param1:Event) : void
      {
         §class catch break§();
         this.data = this.§final set true§.data;
         this.§521423173072317320123423632234§();
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeBytes(this.data,this.data.position,this.data.bytesAvailable);
         this.§final set true§ = null;
         this.§default finally for§(_loc2_);
      }
      
      private function §for set try§(param1:ErrorEvent) : void
      {
         §class catch break§();
         §5214231496231509123423632234§();
      }
   }
}

