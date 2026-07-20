package §5214234413234426123423632234§
{
   import alternativa.engine3d.core.Object3D;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class §5214236733236746123423632234§ implements §with const break§
   {
      
      private static const §5214238117238130123423632234§:Number = 0.08726646259971647;
      
      private static const §case function if§:Number = 0.08726646259971647;
      
      private var §false set final§:§while package extends§;
      
      private var §521423168882316901123423632234§:IEventDispatcher;
      
      private var §5214234762234775123423632234§:Number = 0;
      
      private var §if while import§:int;
      
      private var §for catch native§:Object3D;
      
      public function §5214236733236746123423632234§(param1:§while package extends§, param2:IEventDispatcher, param3:Object3D)
      {
         super();
         this.§false set final§ = param1;
         this.§521423168882316901123423632234§ = param2;
         this.§for catch native§ = param3;
      }
      
      private function §finally catch package§(param1:MouseEvent) : void
      {
         this.§false set final§.§521423131642313177123423632234§(this,§false const throw§.§with super dynamic§);
      }
      
      public function §while for null§() : void
      {
         this.§521423168882316901123423632234§.removeEventListener("mouseDown",this.§finally catch package§);
      }
      
      public function §521423109442310957123423632234§() : void
      {
         this.§521423168882316901123423632234§.addEventListener("mouseDown",this.§finally catch package§);
         this.§if while import§ = getTimer();
         this.§5214234762234775123423632234§ = 0;
      }
      
      public function §function const package§() : void
      {
         var _loc1_:Number = this.§else finally package§();
         this.§use super static§(_loc1_);
         this.§for catch native§.rotationZ += this.§5214234762234775123423632234§ * _loc1_;
      }
      
      private function §else finally package§() : Number
      {
         var _loc1_:int = getTimer();
         var _loc2_:Number = (_loc1_ - this.§if while import§) / 1000;
         this.§if while import§ = _loc1_;
         if(_loc2_ == 0)
         {
            _loc2_ = 0.1;
         }
         return _loc2_;
      }
      
      private function §use super static§(param1:Number) : void
      {
         if(this.§5214234762234775123423632234§ < 0.08726646259971647)
         {
            this.§5214234762234775123423632234§ += 0.08726646259971647 * param1;
            if(this.§5214234762234775123423632234§ > 0.08726646259971647)
            {
               this.§5214234762234775123423632234§ = 0.08726646259971647;
            }
         }
      }
   }
}

