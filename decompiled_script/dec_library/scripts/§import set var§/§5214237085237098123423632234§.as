package §import set var§
{
   public class §5214237085237098123423632234§ implements §native switch get§
   {
      
      private const §5214237280237293123423632234§:Number;
      
      private var §521423186222318635123423632234§:Number;
      
      private var §return catch function§:Number;
      
      private var §521423139062313919123423632234§:int;
      
      private var §switch set default§:int;
      
      private var §package function include§:Number;
      
      private var §do const false§:Number;
      
      public function §5214237085237098123423632234§(param1:Number, param2:Number, param3:int)
      {
         var _loc8_:Number = NaN;
         §5214237280237293123423632234§ = Math.log(2);
         super();
         var _loc6_:Boolean = false;
         var _loc7_:String = null;
         var _loc4_:int = 0;
         var _loc5_:Number = 0;
         this.§521423186222318635123423632234§ = param1;
         this.§return catch function§ = param2;
         this.§521423139062313919123423632234§ = param3;
         this.§switch set default§ = 0;
         this.§package function include§ = 1;
         if(param3 > 0)
         {
            this.§do const false§ = this.§5214239385239398123423632234§(param3);
            _loc8_ = Math.abs(this.§static null§(param3) - this.§static null§(param3 - 1));
            this.§switch set default§ = Math.ceil(-Math.log(_loc8_) / Math.log(10));
            if(this.§switch set default§ < 0)
            {
               this.§switch set default§ = 0;
            }
            this.§package function include§ = Math.pow(10,-this.§switch set default§);
            if(this.§switch set default§ > 0)
            {
               --this.§switch set default§;
               this.§package function include§ *= 10;
               _loc6_ = true;
               _loc7_ = "+" + param1.toFixed(this.§switch set default§);
               _loc4_ = 0;
               while(_loc4_ < param3)
               {
                  if(this.§use catch final§(_loc4_) == _loc7_)
                  {
                     _loc6_ = false;
                     break;
                  }
                  _loc4_++;
               }
               if(!_loc6_)
               {
                  ++this.§switch set default§;
                  this.§package function include§ *= 0.1;
               }
            }
         }
      }
      
      public function §null package do§(param1:int) : Number
      {
         return this.§static null§(param1);
      }
      
      private function §5214233759233772123423632234§(param1:int) : Number
      {
         return this.§static null§(param1);
      }
      
      public function §throw function catch§(param1:int) : String
      {
         var _loc2_:Number = this.§5214233759233772123423632234§(param1);
         return this.§each var dynamic§(_loc2_);
      }
      
      public function §use catch final§(param1:int) : String
      {
         var _loc2_:String = null;
         var _loc3_:Number = this.§get implements§(this.§5214233759233772123423632234§(param1 + 1) - this.§5214233759233772123423632234§(param1));
         if(_loc3_ < 0)
         {
            _loc2_ = "−";
            _loc3_ = -_loc3_;
         }
         else
         {
            _loc2_ = "+";
         }
         return _loc2_ + this.§each var dynamic§(_loc3_);
      }
      
      private function §each var dynamic§(param1:Number) : String
      {
         return String(param1);
      }
      
      private function §get implements§(param1:Number) : Number
      {
         return Math.round(param1 / this.§package function include§) * this.§package function include§;
      }
      
      public function §5214232009232022123423632234§(param1:int) : void
      {
         this.§switch set default§ = param1;
         this.§package function include§ = Math.pow(10,-this.§switch set default§);
      }
      
      private function §static null§(param1:int) : Number
      {
         if(param1 == 0)
         {
            return this.§521423186222318635123423632234§;
         }
         return this.§521423186222318635123423632234§ + this.§5214239385239398123423632234§(param1) * (this.§return catch function§ - this.§521423186222318635123423632234§) / this.§do const false§;
      }
      
      private function §5214239385239398123423632234§(param1:int) : Number
      {
         return Math.log(param1 + 1) / this.§5214237280237293123423632234§ + param1 * 5 / this.§521423139062313919123423632234§;
      }
      
      public function §true super import§() : int
      {
         return this.§switch set default§;
      }
   }
}

