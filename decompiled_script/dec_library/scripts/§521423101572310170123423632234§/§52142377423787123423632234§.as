package §521423101572310170123423632234§
{
   import §521423130892313102123423632234§.§521423146422314655123423632234§;
   import §521423130892313102123423632234§.§null function var§;
   import §521423165552316568123423632234§.§default var function§;
   import §5214231835231848123423632234§.§default var do§;
   import §5214232264232277123423632234§.§5214237893237906123423632234§;
   import §5214237436237449123423632234§.§5214237633237646123423632234§;
   import flash.events.NetStatusEvent;
   import flash.net.SharedObject;
   import flash.system.Capabilities;
   import flash.utils.ByteArray;
   import §get switch dynamic§.§override use with§;
   import §native while false§.§const set finally§;
   
   public class §52142377423787123423632234§ implements §5214237633237646123423632234§, §in set get§
   {
      
      private var §5214236013236026123423632234§:§521423146422314655123423632234§;
      
      private var §5214233090233103123423632234§:Boolean;
      
      private var §for super break§:SharedObject;
      
      private var §5214235304235317123423632234§:§catch const if§;
      
      private var §5214235595235608123423632234§:Boolean;
      
      private var §for super in§:Object;
      
      public function §52142377423787123423632234§(param1:§default var function§)
      {
         super();
         var _loc2_:§null function var§ = §null function var§(param1.§5214231532231545123423632234§(§null function var§));
         this.§5214236013236026123423632234§ = _loc2_.§continue set in§("resource");
         this.§for super break§ = SharedObject.getLocal("localstorage","/");
         this.§5214235304235317123423632234§ = new §catch const if§(this.§for super break§);
         var _loc4_:§default var do§ = §default var do§;
         var _loc3_:String = flash.system.Capabilities.playerType == "Desktop" || flash.system.Capabilities.playerType == "External" ? "0" : "1";
         if(_loc3_ == "1")
         {
            this.§if const var§(true);
         }
         else if(_loc3_ == "0")
         {
            this.§5214233090233103123423632234§ = false;
         }
         else
         {
            this.§5214233090233103123423632234§ = this.§for super break§.data.enabled;
         }
      }
      
      public function §return super while§(param1:String) : void
      {
         var _loc2_:§521423182331123423632234§ = null;
         var _loc3_:§include catch class§ = this.§5214235304235317123423632234§.§catch switch package§(param1);
         if(_loc3_.§5214232057232070123423632234§)
         {
            return;
         }
         for each(var _loc4_ in _loc3_.§521423151832315196123423632234§)
         {
            _loc2_ = new §521423182331123423632234§(param1,_loc4_);
            _loc2_.§52142367423687123423632234§();
         }
         this.§5214235304235317123423632234§.§521423129552312968123423632234§(param1);
      }
      
      public function §extends finally native§(param1:§5214237893237906123423632234§) : void
      {
         this.§return super while§(param1.toString());
      }
      
      public function §52142367423687123423632234§() : void
      {
         var _loc1_:Vector.<String> = this.§5214235304235317123423632234§.§true break§();
         for each(var _loc2_ in _loc1_)
         {
            this.§return super while§(_loc2_);
         }
      }
      
      private function §if const var§(param1:Boolean) : void
      {
         var _loc3_:String = null;
         var _loc4_:§const set finally§ = null;
         var _loc2_:§override use with§ = null;
         this.§5214235595235608123423632234§ = param1;
         try
         {
            _loc3_ = this.§for super break§.flush(104857600);
         }
         catch(e:Error)
         {
            _loc4_ = new §const set finally§();
            §5214236013236026123423632234§.§521423156462315659123423632234§(_loc4_.§521423116232311636123423632234§());
            _loc2_ = §override use with§(§default var function§.§import use include§().§5214231532231545123423632234§(§override use with§));
            _loc2_.§set catch include§(_loc4_);
         }
         switch(_loc3_)
         {
            case "flushed":
               this.§52142313923152123423632234§(true);
               break;
            case "pending":
               this.§for super break§.addEventListener("netStatus",this.§5214231320231333123423632234§);
         }
      }
      
      public function §5214233086233099123423632234§(param1:§5214237893237906123423632234§, param2:int, param3:ByteArray, param4:String, param5:String) : void
      {
         if(!param5)
         {
            param5 = "default";
         }
         var _loc6_:§521423182331123423632234§ = new §521423182331123423632234§(param1.toString(),param5);
         _loc6_.§5214233126233139123423632234§ = param2;
         _loc6_.data = param3;
         _loc6_.§5214232834232847123423632234§();
         this.§5214235304235317123423632234§.§override switch each§(_loc6_.§continue package implements§,param5,param4);
      }
      
      public function §static catch§(param1:§5214237893237906123423632234§, param2:int, param3:String) : ByteArray
      {
         var _loc4_:§521423182331123423632234§ = new §521423182331123423632234§(param1.toString(),param3);
         if(_loc4_.§5214233126233139123423632234§ == param2)
         {
            return _loc4_.data;
         }
         this.§5214235304235317123423632234§.§5214232337232350123423632234§(_loc4_.§continue package implements§,param3);
         _loc4_.§52142367423687123423632234§();
         return null;
      }
      
      public function §5214231266231279123423632234§() : §catch const if§
      {
         return this.§5214235304235317123423632234§;
      }
      
      public function get enabled() : Boolean
      {
         return this.§5214233090233103123423632234§;
      }
      
      private function §52142313923152123423632234§(param1:Boolean) : void
      {
         if(!this.§5214235595235608123423632234§)
         {
            this.§for super break§.data.enabled = param1;
         }
         this.§5214233090233103123423632234§ = param1;
      }
      
      private function §5214231320231333123423632234§(param1:NetStatusEvent) : void
      {
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc3_:int = 0;
         this.§for super break§.removeEventListener("netStatus",this.§5214231320231333123423632234§);
         if(param1.info.code == "SharedObject.Flush.Failed")
         {
            _loc2_ = Capabilities.os.indexOf("Windows");
            _loc4_ = Capabilities.os.indexOf("Linux");
            _loc3_ = Capabilities.os.indexOf("Mac");
            if(_loc2_ >= 0 || (_loc4_ >= 0 || _loc3_ >= 0) && this.§for super break§.flush(104857600) == "pending")
            {
               this.§52142313923152123423632234§(false);
            }
            else
            {
               this.§52142313923152123423632234§(true);
            }
         }
         else
         {
            this.§52142313923152123423632234§(true);
         }
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(param1)
         {
            this.§if const var§(false);
         }
         else
         {
            this.§5214235595235608123423632234§ = false;
            this.§52142313923152123423632234§(false);
         }
      }
      
      public function §52142375923772123423632234§() : void
      {
         this.§for super break§.flush();
      }
   }
}

import §521423132992313312123423632234§.§52142350423517123423632234§;

class ConsoleCommand
{
   
   public var name:String;
   
   public var description:String;
   
   protected var storage:§52142377423787123423632234§;
   
   public function ConsoleCommand(param1:String, param2:§52142377423787123423632234§)
   {
      super();
      this.name = param1;
      this.storage = param2;
   }
   
   public function execute(param1:§52142350423517123423632234§, param2:Array) : void
   {
   }
}

class PrintIndexCommand extends ConsoleCommand
{
   
   public function PrintIndexCommand(param1:String, param2:§52142377423787123423632234§)
   {
      super(param1,param2);
      description = param1 + " -- lists all locally stored resources";
   }
   
   override public function execute(param1:§52142350423517123423632234§, param2:Array) : void
   {
      var _loc5_:§include catch class§ = null;
      var _loc4_:int = 0;
      var _loc3_:§catch const if§ = storage.§5214231266231279123423632234§();
      var _loc6_:Vector.<String> = _loc3_.§true break§();
      _loc6_.sort(this.comparator);
      for each(var _loc7_ in _loc6_)
      {
         _loc5_ = _loc3_.§catch switch package§(_loc7_);
         param1.§521423110002311013123423632234§(++_loc4_ + ". " + _loc7_ + ": " + _loc5_.§in super get§ + ", " + _loc5_.§521423151832315196123423632234§);
      }
   }
   
   private function comparator(param1:String, param2:String) : Number
   {
      if(param1 < param2)
      {
         return -1;
      }
      if(param1 > param2)
      {
         return 1;
      }
      return 0;
   }
}

class DeleteResourceCommand extends ConsoleCommand
{
   
   public function DeleteResourceCommand(param1:String, param2:§52142377423787123423632234§)
   {
      super(param1,param2);
      description = param1 + " resource_id -- removes locally stored resource with given id";
   }
   
   override public function execute(param1:§52142350423517123423632234§, param2:Array) : void
   {
      var _loc3_:String = String(param2[0]);
      if(!_loc3_)
      {
         param1.§521423110002311013123423632234§("Resource id should be specified");
         return;
      }
      storage.§return super while§(_loc3_);
      param1.§521423110002311013123423632234§("Resource " + _loc3_ + " has been removed from local storage");
   }
}

class ClearStorageCommand extends ConsoleCommand
{
   
   public function ClearStorageCommand(param1:String, param2:§52142377423787123423632234§)
   {
      super(param1,param2);
      description = param1 + " -- wipes out all locally stored resources";
   }
   
   override public function execute(param1:§52142350423517123423632234§, param2:Array) : void
   {
      storage.§52142367423687123423632234§();
      param1.§521423110002311013123423632234§("Local storage has been cleared");
   }
}

class StatusCommand extends ConsoleCommand
{
   
   public function StatusCommand(param1:String, param2:§52142377423787123423632234§)
   {
      super(param1,param2);
      description = param1 + " -- prints local storage status";
   }
   
   override public function execute(param1:§52142350423517123423632234§, param2:Array) : void
   {
      param1.§521423110002311013123423632234§("Local storage is " + (storage.enabled ? "enabled" : "disabled"));
   }
}

class EnableStorageCommand extends ConsoleCommand
{
   
   public function EnableStorageCommand(param1:String, param2:§52142377423787123423632234§)
   {
      super(param1,param2);
      description = param1 + " -- enables local storage";
   }
   
   override public function execute(param1:§52142350423517123423632234§, param2:Array) : void
   {
      storage.enabled = true;
      param1.§521423110002311013123423632234§("Locale storage enabled");
   }
}

class DisableStorageCommand extends ConsoleCommand
{
   
   public function DisableStorageCommand(param1:String, param2:§52142377423787123423632234§)
   {
      super(param1,param2);
      description = param1 + " -- disables local storage";
   }
   
   override public function execute(param1:§52142350423517123423632234§, param2:Array) : void
   {
      storage.enabled = false;
      param1.§521423110002311013123423632234§("Locale storage disabled");
   }
}

class FlushStorageIndexCommand extends ConsoleCommand
{
   
   public function FlushStorageIndexCommand(param1:String, param2:§52142377423787123423632234§)
   {
      super(param1,param2);
      description = param1 + " -- writes storage index to disk";
   }
   
   override public function execute(param1:§52142350423517123423632234§, param2:Array) : void
   {
      storage.§52142375923772123423632234§();
   }
}
