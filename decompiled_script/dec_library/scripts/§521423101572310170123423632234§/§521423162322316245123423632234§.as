package §521423101572310170123423632234§
{
   import §521423130892313102123423632234§.§521423146422314655123423632234§;
   import §521423130892313102123423632234§.§null function var§;
   import §521423165552316568123423632234§.§default var function§;
   import §5214232264232277123423632234§.§5214237893237906123423632234§;
   import §5214234079234092123423632234§.§with while get§;
   import §5214237436237449123423632234§.§5214237633237646123423632234§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import §static function if§.§continue package if§;
   
   public class §521423162322316245123423632234§ implements §521423137082313721123423632234§, §521423134722313485123423632234§, §default function return§
   {
      
      public static var §case var super§:§5214237633237646123423632234§;
      
      public static var §while function finally§:§continue package if§;
      
      private var §5214236013236026123423632234§:§521423146422314655123423632234§;
      
      private var §default super var§:§in set get§;
      
      private const §5214238356238369123423632234§:int = 5;
      
      private var §5214237541237554123423632234§:int;
      
      private var §5214236687236700123423632234§:PriorityQueue;
      
      private var §5214234899234912123423632234§:Dictionary;
      
      public function §521423162322316245123423632234§(param1:§default var function§)
      {
         super();
         var _loc2_:§null function var§ = §null function var§(param1.§5214231532231545123423632234§(§null function var§));
         this.§5214236013236026123423632234§ = _loc2_.§continue set in§("resource");
         this.§5214236687236700123423632234§ = new PriorityQueue();
         this.§5214234899234912123423632234§ = new Dictionary();
         this.§default super var§ = §in set get§(param1.§5214231532231545123423632234§(§in set get§));
      }
      
      protected function §521423177052317718123423632234§(param1:§5214237009237022123423632234§) : String
      {
         var _loc4_:§5214237009237022123423632234§ = param1;
         var _loc3_:§5214237893237906123423632234§ = _loc4_.§false catch override§.id;
         var _loc5_:§5214237009237022123423632234§ = param1;
         var _loc2_:§5214237893237906123423632234§ = _loc5_.§false catch override§.§false set dynamic§;
         var _loc6_:§5214237893237906123423632234§;
         var _loc7_:§5214237893237906123423632234§;
         var _loc8_:§5214237893237906123423632234§;
         var _loc9_:§5214237893237906123423632234§;
         return §while function finally§.§521423112772311290123423632234§ + §with while get§.§52142353723550123423632234§((_loc6_ = _loc3_).§521423190412319054123423632234§,(_loc7_ = _loc3_).§use const break§,(_loc8_ = _loc2_).§521423190412319054123423632234§,(_loc9_ = _loc2_).§use const break§);
      }
      
      private function §continue catch get§(param1:§5214237009237022123423632234§) : ResourceEntry
      {
         param1.§import for break§(8);
         --this.§5214237541237554123423632234§;
         var _loc2_:ResourceEntry = this.§5214234899234912123423632234§[param1];
         delete this.§5214234899234912123423632234§[param1];
         return _loc2_;
      }
      
      public function §521423169932317006123423632234§(param1:§5214237009237022123423632234§, param2:String) : void
      {
         param1.§switch var while§(4);
         var _loc3_:ResourceEntry = this.§throw finally override§(param1);
         try
         {
            for each(var _loc4_ in _loc3_.listeners)
            {
               _loc4_.§521423169932317006123423632234§(param1,param2);
            }
         }
         catch(e:Error)
         {
            var _loc8_:§5214237009237022123423632234§;
            §5214236013236026123423632234§.§521423112302311243123423632234§("ResourceLoader::onResourceLoadingError() %1 %2",[e.getStackTrace(),(_loc8_ = param1).§false catch override§.id]);
         }
         this.§5214238746238759123423632234§();
      }
      
      private function §static while var§(param1:§5214237009237022123423632234§) : void
      {
         var _loc5_:§5214237893237906123423632234§;
         var _loc4_:§5214237009237022123423632234§;
         var _loc2_:ByteArray = this.§default super var§.§static catch§(param1.§false catch override§.id,(_loc5_ = (_loc4_ = param1).§false catch override§.§false set dynamic§).§use const break§,param1.§default for true§);
         param1.§switch var while§(2);
         if(_loc2_ == null || !param1.§521423172812317294123423632234§(_loc2_,this))
         {
            this.§in package dynamic§(param1);
         }
      }
      
      private function §in package dynamic§(param1:§5214237009237022123423632234§) : void
      {
         param1.§import for break§(2);
         var _loc2_:String = this.§521423177052317718123423632234§(param1);
         param1.§null use set§(_loc2_,this);
      }
      
      private function §throw finally override§(param1:§5214237009237022123423632234§) : ResourceEntry
      {
         param1.§include set while§ = "Loaded";
         var _loc2_:ResourceEntry = this.§continue catch get§(param1);
         if(!param1.§false function continue§(2 | 4))
         {
            this.§521423170182317031123423632234§(param1);
         }
         return _loc2_;
      }
      
      private function §521423170182317031123423632234§(param1:§5214237009237022123423632234§) : void
      {
         if(§case var super§ != null && §case var super§.enabled)
         {
            param1.§52142316923182123423632234§(this);
         }
      }
      
      public function §5214234512234525123423632234§(param1:§5214237009237022123423632234§, param2:§521423134722313485123423632234§) : void
      {
         var _loc3_:ResourceEntry = this.§5214234899234912123423632234§[param1];
         if(_loc3_ == null)
         {
            _loc3_ = new ResourceEntry(param1,param2);
            this.§5214234899234912123423632234§[param1] = _loc3_;
         }
         else
         {
            _loc3_.addListener(param2);
         }
      }
      
      public function §in finally return§(param1:§5214237009237022123423632234§, param2:String) : void
      {
         var _loc3_:ResourceEntry = this.§continue catch get§(param1);
         this.§5214238746238759123423632234§();
         for each(var _loc4_ in _loc3_.listeners)
         {
            _loc4_.§in finally return§(param1,param2);
         }
      }
      
      public function §null use else§(param1:§5214237009237022123423632234§) : void
      {
         var _loc2_:ResourceEntry = this.§5214234899234912123423632234§[param1];
         _loc2_.loadingStarted = true;
         for each(var _loc3_ in _loc2_.listeners)
         {
            _loc3_.§null use else§(param1);
         }
      }
      
      public function §implements catch do§(param1:§5214237009237022123423632234§) : void
      {
         var _loc2_:ResourceEntry = this.§throw finally override§(param1);
         if(_loc2_ != null)
         {
            for each(var _loc3_ in _loc2_.listeners)
            {
               try
               {
                  _loc3_.§implements catch do§(param1);
               }
               catch(e:Error)
               {
                  §5214236013236026123423632234§.§521423112302311243123423632234§("ResourceLoader::onResourceLoadingComplete() loadingComplete listener invocation error: %1",[e.getStackTrace()]);
               }
            }
         }
         this.§5214238746238759123423632234§();
      }
      
      public function §set use class§(param1:§5214237009237022123423632234§, param2:ByteArray) : void
      {
         var _loc5_:§5214237893237906123423632234§;
         var _loc4_:§5214237009237022123423632234§;
         this.§default super var§.§5214233086233099123423632234§(param1.§false catch override§.id,(_loc5_ = (_loc4_ = param1).§false catch override§.§false set dynamic§).§use const break§,param2,param1.§in super get§,param1.§default for true§);
      }
      
      public function §false use const§(param1:§5214237009237022123423632234§, param2:§521423134722313485123423632234§, param3:int) : void
      {
         this.§5214234512234525123423632234§(param1,param2);
         var _loc4_:§5214237009237022123423632234§ = param1;
         if((_loc4_.§null set case§ & 8) == 0)
         {
            param1.§switch var while§(8);
            param1.§include set while§ = "Queued";
            this.§5214236687236700123423632234§.putData(param1,param3);
            this.§5214238746238759123423632234§();
         }
      }
      
      public function §set set catch§(param1:§5214237009237022123423632234§, param2:§521423134722313485123423632234§) : void
      {
         var _loc3_:ResourceEntry = this.§5214234899234912123423632234§[param1];
         if(_loc3_ != null)
         {
            _loc3_.removeListener(param2);
         }
      }
      
      private function §5214238746238759123423632234§() : void
      {
         var _loc1_:§5214237009237022123423632234§ = null;
         while(this.§5214236687236700123423632234§.size > 0 && this.§5214237541237554123423632234§ < 5)
         {
            _loc1_ = §5214237009237022123423632234§(this.§5214236687236700123423632234§.getData());
            ++this.§5214237541237554123423632234§;
            var _loc2_:§5214237009237022123423632234§ = _loc1_;
            if((_loc2_.§null set case§ & 1) != 0)
            {
               this.§implements catch do§(_loc1_);
            }
            else if(§case var super§ != null && §case var super§.enabled)
            {
               this.§static while var§(_loc1_);
            }
            else
            {
               this.§in package dynamic§(_loc1_);
            }
         }
      }
   }
}

class ResourceEntry
{
   
   public var resource:§5214237009237022123423632234§;
   
   public var listeners:Vector.<§521423134722313485123423632234§>;
   
   public var loadingStarted:Boolean;
   
   public function ResourceEntry(param1:§5214237009237022123423632234§, param2:§521423134722313485123423632234§)
   {
      super();
      this.resource = param1;
      this.listeners = new Vector.<§521423134722313485123423632234§>(1);
      this.listeners[0] = param2;
   }
   
   public function addListener(param1:§521423134722313485123423632234§) : void
   {
      if(this.listeners.indexOf(param1) < 0)
      {
         this.listeners[listeners.length] = param1;
         if(this.loadingStarted)
         {
            param1.§null use else§(this.resource);
         }
      }
   }
   
   public function removeListener(param1:§521423134722313485123423632234§) : void
   {
      var _loc2_:int = int(this.listeners.indexOf(param1));
      if(_loc2_ >= 0)
      {
         this.listeners.removeAt(_loc2_);
      }
   }
}

class QueueItem
{
   
   public var data:Object;
   
   public var priority:int;
   
   public var next:QueueItem;
   
   public var prev:QueueItem;
   
   public function QueueItem(param1:Object, param2:int)
   {
      super();
      this.data = param1;
      this.priority = param2;
   }
}

class PriorityQueue
{
   
   private var head:QueueItem;
   
   private var tail:QueueItem;
   
   private var _size:int;
   
   public function PriorityQueue()
   {
      super();
      this.head = new QueueItem(null,0);
      this.tail = new QueueItem(null,0);
      this.head.next = this.tail;
      this.tail.prev = this.head;
   }
   
   public function get size() : int
   {
      return this._size;
   }
   
   public function putData(param1:Object, param2:int) : void
   {
      var _loc3_:QueueItem = this.tail.prev;
      while(_loc3_ != this.head && _loc3_.priority < param2)
      {
         _loc3_ = _loc3_.prev;
      }
      var _loc4_:QueueItem = new QueueItem(param1,param2);
      _loc4_.next = _loc3_.next;
      _loc4_.prev = _loc3_;
      _loc4_.next.prev = _loc4_;
      _loc3_.next = _loc4_;
      ++this._size;
   }
   
   public function getData() : Object
   {
      if(this._size == 0)
      {
         return null;
      }
      var _loc1_:QueueItem = this.head.next;
      _loc1_.next.prev = _loc1_.prev;
      _loc1_.prev.next = _loc1_.next;
      _loc1_.next = null;
      _loc1_.prev = null;
      --this._size;
      return _loc1_.data;
   }
}
