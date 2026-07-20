package §break for use§
{
   import §5214236465236478123423632234§.§continue function do§;
   import §5214236465236478123423632234§.§native switch package§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §52142345223465123423632234§ extends §continue function do§
   {
      
      private var §throw static§:Timer;
      
      private var §package function import§:uint;
      
      private var §use for use§:Boolean;
      
      public function §52142345223465123423632234§(param1:int, param2:int, param3:§native switch package§, param4:Boolean)
      {
         super(param1,param2,param3);
         this.§use for use§ = param4;
         this.§throw static§ = new Timer(1000);
         this.§throw static§.addEventListener("timer",this.§override const package§);
      }
      
      private static function §dynamic function package§(param1:int) : String
      {
         var _loc2_:int = param1 / 60;
         return _loc2_ > 9 ? _loc2_.toString() : "0" + _loc2_.toString();
      }
      
      private static function §5214236294236307123423632234§(param1:int) : String
      {
         var _loc2_:int = param1 % 60;
         return _loc2_ > 9 ? _loc2_.toString() : "0" + _loc2_.toString();
      }
      
      public function §implements for while§(param1:int) : void
      {
         this.§package function import§ = Math.round(getTimer() / 1000 + param1);
         value = param1;
         if(§in set each§ > 0)
         {
            this.§throw static§.stop();
            this.§throw static§.start();
         }
         else
         {
            §521423101492310162123423632234§();
         }
      }
      
      override protected function §dynamic switch final§(param1:Event) : void
      {
         super.§dynamic switch final§(param1);
         this.§throw static§.stop();
      }
      
      public function §521423102922310305123423632234§() : void
      {
         this.§throw static§.stop();
      }
      
      private function §override const package§(param1:TimerEvent) : void
      {
         var _loc2_:int = 0;
         if(§in set each§ > 0)
         {
            _loc2_ = Math.round(this.§package function import§ - getTimer() / 1000);
            value = _loc2_ < 0 ? 0 : _loc2_;
         }
         else
         {
            this.§throw static§.stop();
         }
      }
      
      override protected function §5214239672239685123423632234§() : void
      {
         if(this.§use for use§)
         {
            label.text = §in set each§ < 10 ? "0" + §in set each§.toString() : §in set each§.toString();
         }
         else
         {
            label.text = §dynamic function package§(§in set each§) + " : " + §5214236294236307123423632234§(§in set each§);
         }
      }
   }
}

