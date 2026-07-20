package §var switch extends§
{
   import flash.display.Shape;
   
   public class §5214232358232371123423632234§ extends Shape
   {
      
      private static const §switch super final§:Number = 0;
      
      private static const §5214237490237503123423632234§:Number = 1;
      
      private var §521423184812318494123423632234§:§521423138442313857123423632234§;
      
      private var §use const case§:int;
      
      private var §5214233246233259123423632234§:int;
      
      private var §521423161132316126123423632234§:Number;
      
      private var §521423157922315805123423632234§:Number;
      
      private var §5214235909235922123423632234§:Boolean;
      
      private var §5214235079235092123423632234§:Boolean;
      
      public function §5214232358232371123423632234§(param1:Number, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§5214233246233259123423632234§ = param1;
         this.§5214235909235922123423632234§ = param2;
         this.§5214235079235092123423632234§ = param3;
         this.§5214239350239363123423632234§();
      }
      
      private static function §if catch get§(param1:Number) : Number
      {
         return Math.max(0,Math.min(1,param1));
      }
      
      private function §5214239350239363123423632234§() : void
      {
         this.§use const case§ = Math.ceil(Math.sqrt(this.§5214233246233259123423632234§ * this.§5214233246233259123423632234§ + this.§5214233246233259123423632234§ * this.§5214233246233259123423632234§) / 2);
         this.§521423184812318494123423632234§ = new §521423138442313857123423632234§(this.graphics);
      }
      
      public function §521423174852317498123423632234§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§521423161132316126123423632234§ == param1 && this.§521423157922315805123423632234§ == param2)
         {
            return;
         }
         this.§521423161132316126123423632234§ = param1;
         this.§521423157922315805123423632234§ = param2;
         this.§521423184812318494123423632234§.§52142367423687123423632234§();
         this.§521423184812318494123423632234§.§521423177522317765123423632234§(16711680);
         if(§5214235079235092123423632234§)
         {
            this.§521423184812318494123423632234§.§5214231608231621123423632234§(0,this.§5214233246233259123423632234§,this.§5214233246233259123423632234§,(param1 - 1) * this.§5214233246233259123423632234§);
         }
         else
         {
            _loc4_ = 360 * §if catch get§(param1);
            _loc6_ = 360 * §if catch get§(param2);
            _loc5_ = _loc6_ - _loc4_;
            _loc3_ = this.§5214235909235922123423632234§ ? -90 : _loc4_ - 90;
            this.§521423184812318494123423632234§.§521423106452310658123423632234§(this.§5214233246233259123423632234§ / 2,this.§5214233246233259123423632234§ / 2,this.§use const case§,_loc5_,_loc3_,true);
         }
         this.§521423184812318494123423632234§.§52142373623749123423632234§();
      }
   }
}

