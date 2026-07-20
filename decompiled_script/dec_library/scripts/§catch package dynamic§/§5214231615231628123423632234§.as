package §catch package dynamic§
{
   import §5214239456239469123423632234§.§521423102312310244123423632234§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class §5214231615231628123423632234§
   {
      
      public static var §try while package§:§521423102312310244123423632234§;
      
      private var §implements package in§:int;
      
      private var §continue super import§:DisplayObject;
      
      private var §5214232527232540123423632234§:Number = 0.15;
      
      private var §521423101512310164123423632234§:Number = 0.3;
      
      public function §5214231615231628123423632234§(param1:Number = 0.15, param2:Number = 0.3)
      {
         super();
         this.§5214232527232540123423632234§ = param1;
         this.§521423101512310164123423632234§ = param2;
      }
      
      public function §else finally continue§(param1:DisplayObject) : void
      {
         this.§function for var§();
         this.§continue super import§ = param1;
         this.§implements package in§ = 0;
         param1.alpha = 1;
         param1.addEventListener("enterFrame",this.§521423101942310207123423632234§);
      }
      
      public function §function for var§() : void
      {
         if(this.§continue super import§ != null)
         {
            this.§continue super import§.removeEventListener("enterFrame",this.§521423101942310207123423632234§);
            this.§continue super import§.alpha = 1;
            this.§continue super import§ = null;
         }
      }
      
      private function §521423101942310207123423632234§(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         _loc2_ = Math.ceil(this.§5214232527232540123423632234§ * §try while package§.§finally var false§());
         _loc3_ = Math.ceil(this.§521423101512310164123423632234§ * §try while package§.§finally var false§());
         ++this.§implements package in§;
         if(this.§implements package in§ < _loc2_)
         {
            this.§continue super import§.alpha = 1;
         }
         else if(this.§implements package in§ < _loc2_ + _loc3_)
         {
            this.§continue super import§.alpha = 1 - (this.§implements package in§ - _loc2_) / _loc3_;
         }
         else if(this.§implements package in§ < _loc2_ + _loc3_ + _loc2_)
         {
            this.§continue super import§.alpha = 0;
         }
         else if(this.§implements package in§ < _loc2_ + _loc3_ + _loc2_ + _loc3_)
         {
            this.§continue super import§.alpha = (this.§implements package in§ - _loc2_ - _loc3_ - _loc2_) / _loc3_;
         }
         else
         {
            this.§continue super import§.alpha = 1;
            this.§implements package in§ = 0;
         }
      }
   }
}

