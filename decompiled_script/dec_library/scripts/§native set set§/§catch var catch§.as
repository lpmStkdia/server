package §native set set§
{
   import flash.utils.getTimer;
   
   public class §catch var catch§
   {
      
      private static const §5214239084239097123423632234§:int = 1;
      
      private static const §true package var§:int = 2;
      
      private static const §default catch return§:int = 3;
      
      private var §5214239356239369123423632234§:uint;
      
      private var §5214234117234130123423632234§:int;
      
      private var §false switch include§:int;
      
      private var §implements package in§:int = 3;
      
      private var §case function package§:int;
      
      public function §catch var catch§(param1:uint, param2:int, param3:int)
      {
         super();
         this.§5214239356239369123423632234§ = param1;
         this.§5214234117234130123423632234§ = param2;
         this.§false switch include§ = param3;
      }
      
      public static function §521423130062313019123423632234§() : §catch var catch§
      {
         return new §catch var catch§(255,100,300);
      }
      
      public function §5214232036232049123423632234§() : Boolean
      {
         return this.§implements package in§ != 3;
      }
      
      public function §521423153752315388123423632234§(param1:int) : uint
      {
         var _loc2_:uint = 0;
         switch(this.§implements package in§ - 1)
         {
            case 0:
               if(param1 < this.§case function package§ + this.§5214234117234130123423632234§)
               {
                  _loc2_ = this.§5214239356239369123423632234§ * (param1 - this.§case function package§) / this.§5214234117234130123423632234§;
               }
               else
               {
                  _loc2_ = this.§5214239356239369123423632234§;
                  this.§case function package§ += this.§5214234117234130123423632234§ + this.§false switch include§;
                  this.§implements package in§ = 2;
               }
               break;
            case 1:
               if(param1 < this.§case function package§)
               {
                  _loc2_ = this.§5214239356239369123423632234§ * (this.§case function package§ - param1) / this.§false switch include§;
                  break;
               }
               this.§implements package in§ = 3;
               _loc2_ = 0;
         }
         return _loc2_;
      }
      
      public function §5214239350239363123423632234§() : void
      {
         this.§case function package§ = getTimer();
         this.§implements package in§ = 1;
      }
   }
}

