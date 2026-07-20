package §521423101572310170123423632234§
{
   import §521423130892313102123423632234§.§521423146422314655123423632234§;
   import §521423130892313102123423632234§.§null function var§;
   import §521423132992313312123423632234§.§52142350423517123423632234§;
   import §521423165552316568123423632234§.§default var function§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import §get for with§.§get for package§;
   
   public class §with for dynamic§ implements §get for package§
   {
      
      private static const §521423114512311464123423632234§:int = 30000;
      
      private static const §if catch catch§:int = 3;
      
      private static const §function package include§:int = 5000;
      
      private var §throw static§:Timer;
      
      private var §52142395123964123423632234§:Vector.<§5214237009237022123423632234§>;
      
      private var §5214237023237036123423632234§:int;
      
      private var §52142376323776123423632234§:int;
      
      private var §521423149082314921123423632234§:int;
      
      public function §with for dynamic§(param1:§default var function§)
      {
         super();
         this.§52142376323776123423632234§ = 30000;
         if(this.§52142376323776123423632234§ < 5000)
         {
            this.§52142376323776123423632234§ = 5000;
         }
         var _loc3_:§null function var§ = §null function var§(param1.§5214231532231545123423632234§(§null function var§));
         var _loc2_:§521423146422314655123423632234§ = _loc3_.§continue set in§("resource");
         this.§521423149082314921123423632234§ = 3;
         if(this.§521423149082314921123423632234§ < 0)
         {
            this.§521423149082314921123423632234§ = 0;
         }
         this.§52142395123964123423632234§ = new Vector.<§5214237009237022123423632234§>();
         this.§throw static§ = new Timer(1000);
      }
      
      public function §521423155192315532123423632234§() : int
      {
         return this.§521423149082314921123423632234§;
      }
      
      private function §super set for§(param1:§52142350423517123423632234§) : void
      {
         var _loc4_:int = 0;
         var _loc2_:§5214237009237022123423632234§ = null;
         var _loc5_:int = 0;
         var _loc3_:int = getTimer();
         while(_loc4_ < this.§5214237023237036123423632234§)
         {
            _loc2_ = this.§52142395123964123423632234§[_loc4_];
            _loc5_ = (_loc3_ - _loc2_.§super var super§) / 1000;
            param1.§521423110002311013123423632234§(_loc4_ + 1 + ". " + _loc2_ + ", time: " + _loc5_ + " second(s)");
            _loc4_++;
         }
      }
      
      private function §override const package§(param1:TimerEvent) : void
      {
         var _loc4_:int = 0;
         var _loc2_:§5214237009237022123423632234§ = null;
         var _loc3_:int = getTimer();
         while(_loc4_ < this.§5214237023237036123423632234§)
         {
            _loc2_ = this.§52142395123964123423632234§[_loc4_];
            if(_loc3_ - _loc2_.§super var super§ > this.§52142376323776123423632234§)
            {
               this.§521423194582319471123423632234§(_loc2_);
               _loc4_--;
               _loc2_.§5214231496231509123423632234§();
            }
            _loc4_++;
         }
      }
      
      public function §521423194582319471123423632234§(param1:§5214237009237022123423632234§) : void
      {
         var _loc2_:int = this.§52142395123964123423632234§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this.§52142395123964123423632234§[_loc2_] = this.§52142395123964123423632234§[--this.§5214237023237036123423632234§];
            this.§52142395123964123423632234§[this.§5214237023237036123423632234§] = null;
            if(this.§5214237023237036123423632234§ == 0)
            {
               this.§throw static§.stop();
               this.§throw static§.removeEventListener("timer",this.§override const package§);
            }
         }
      }
      
      public function §5214236368236381123423632234§(param1:§5214237009237022123423632234§) : void
      {
         if(this.§52142395123964123423632234§.indexOf(param1) < 0)
         {
            this.§52142395123964123423632234§[this.§5214237023237036123423632234§++] = param1;
            if(this.§5214237023237036123423632234§ == 1)
            {
               this.§throw static§.addEventListener("timer",this.§override const package§);
               this.§throw static§.start();
            }
         }
      }
      
      private function §throw const case§(param1:§52142350423517123423632234§, param2:Array) : void
      {
         if(param2.length == 0)
         {
            param1.§521423110002311013123423632234§("Available parameters:");
            param1.§521423110002311013123423632234§("ls -- list currently tracked resources");
            return;
         }
         var _loc3_:* = param2[0];
         if("ls" === _loc3_)
         {
            this.§super set for§(param1);
         }
      }
   }
}

