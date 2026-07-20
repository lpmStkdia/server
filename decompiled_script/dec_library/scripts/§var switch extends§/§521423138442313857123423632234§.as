package §var switch extends§
{
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.geom.Matrix;
   
   public class §521423138442313857123423632234§
   {
      
      private var §in catch continue§:Graphics;
      
      private var §try set switch§:Boolean;
      
      public function §521423138442313857123423632234§(param1:Graphics)
      {
         super();
         this.§in catch continue§ = param1;
      }
      
      public function get §521423167982316811123423632234§() : Graphics
      {
         return this.§in catch continue§;
      }
      
      public function §do switch include§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(!this.§try set switch§)
         {
            this.§5214239362239375123423632234§();
         }
         this.§in catch continue§.curveTo(param1,param2,param3,param4);
      }
      
      public function §true const import§(param1:Number, param2:Number) : void
      {
         this.§in catch continue§.moveTo(param1,param2);
      }
      
      public function §import use final§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         this.§521423106452310658123423632234§(param4,param5,param2,param1,param3,true);
      }
      
      public function §function switch class§(param1:String, param2:Array, param3:Array, param4:Array, param5:Matrix = null, param6:String = "pad", param7:String = "rgb", param8:Number = 0) : void
      {
         this.§in catch continue§.beginGradientFill(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function §override switch for§(param1:BitmapData, param2:Matrix = null, param3:Boolean = true, param4:Boolean = false) : void
      {
         this.§in catch continue§.beginBitmapFill(param1,param2,param3,param4);
      }
      
      public function §52142383723850123423632234§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number = 0) : void
      {
         param6 = param6 * 3.141592653589793 / 180;
         param5 = param5 * 3.141592653589793 / 180;
         var _loc11_:Number = Math.cos(param5 - param6) * param3;
         var _loc10_:Number = Math.sin(param5 - param6) * param3;
         var _loc7_:Number = Math.cos(-param6) * param4;
         var _loc12_:Number = Math.sin(-param6) * param4;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         this.§class function default§(-_loc8_ + param1,-_loc9_ + param2,_loc7_ - _loc8_ + param1,_loc12_ - _loc9_ + param2);
         this.§5214231142231155123423632234§(_loc11_ - _loc8_ + param1,_loc10_ - _loc9_ + param2);
         this.§5214231142231155123423632234§(-_loc8_ + param1,-_loc9_ + param2);
      }
      
      public function §5214235159235172123423632234§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc5_:Number = 0.7853981633974483;
         var _loc10_:Number = 0;
         var _loc8_:Number = param3 / Math.cos(_loc5_ / 2);
         var _loc13_:Number = param4 / Math.cos(_loc5_ / 2);
         this.§true const import§(param1 + param3,param2);
         _loc7_ = 0;
         while(_loc7_ < 8)
         {
            _loc10_ += _loc5_;
            _loc6_ = param1 + Math.cos(_loc10_ - _loc5_ / 2) * _loc8_;
            _loc12_ = param2 + Math.sin(_loc10_ - _loc5_ / 2) * _loc13_;
            _loc11_ = param1 + Math.cos(_loc10_) * param3;
            _loc9_ = param2 + Math.sin(_loc10_) * param4;
            this.§do switch include§(_loc6_,_loc12_,_loc11_,_loc9_);
            _loc7_++;
         }
      }
      
      public function §52142367423687123423632234§() : void
      {
         this.§in catch continue§.clear();
         this.§try set switch§ = false;
      }
      
      public function §521423106452310658123423632234§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false) : void
      {
         var _loc8_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc9_:Number = NaN;
         if(param4 > 360)
         {
            param4 = 360;
         }
         param4 = 3.141592653589793 / 180 * param4;
         var _loc7_:Number = param4 / 8;
         var _loc16_:Number = param3 / Math.cos(_loc7_ / 2);
         var _loc13_:Number = param5 *= 3.141592653589793 / 180;
         var _loc11_:Number = param1 + Math.cos(param5) * param3;
         var _loc10_:Number = param2 + Math.sin(param5) * param3;
         if(param6)
         {
            this.§true const import§(param1,param2);
            this.§5214231142231155123423632234§(_loc11_,_loc10_);
         }
         else
         {
            this.§true const import§(_loc11_,_loc10_);
         }
         _loc9_ = 0;
         while(_loc9_ < 8)
         {
            _loc13_ += _loc7_;
            _loc8_ = param1 + Math.cos(_loc13_ - _loc7_ / 2) * _loc16_;
            _loc15_ = param2 + Math.sin(_loc13_ - _loc7_ / 2) * _loc16_;
            _loc14_ = param1 + Math.cos(_loc13_) * param3;
            _loc12_ = param2 + Math.sin(_loc13_) * param3;
            this.§do switch include§(_loc8_,_loc15_,_loc14_,_loc12_);
            _loc9_++;
         }
         if(param6)
         {
            this.§5214231142231155123423632234§(param1,param2);
         }
      }
      
      public function §5214231608231621123423632234§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(!this.§try set switch§)
         {
            this.§5214239362239375123423632234§();
         }
         this.§in catch continue§.drawRect(param1,param2,param3,param4);
      }
      
      public function §5214238390238403123423632234§(param1:Number, param2:Number, param3:Number) : void
      {
         if(!this.§try set switch§)
         {
            this.§5214239362239375123423632234§();
         }
         this.§in catch continue§.drawCircle(param1,param2,param3);
      }
      
      public function set §521423167982316811123423632234§(param1:Graphics) : void
      {
         this.§in catch continue§ = param1;
      }
      
      public function §5214239362239375123423632234§(param1:Number = 1, param2:Number = 0, param3:Number = 1, param4:Boolean = false, param5:String = "normal", param6:String = null, param7:String = null, param8:Number = 3) : void
      {
         this.§in catch continue§.lineStyle(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§try set switch§ = true;
      }
      
      public function §package for override§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number = 0) : void
      {
         var _loc9_:Number = NaN;
         if(param3 < 3)
         {
            return;
         }
         var _loc7_:Number = 3.141592653589793 * 2 / param3;
         var _loc8_:Number = param6 = 3.141592653589793 * (param6 - 90) / 180;
         var _loc11_:Number = param1 + Math.cos(_loc8_ + _loc7_ / 2) * param4;
         var _loc10_:Number = param2 + Math.sin(_loc8_ + _loc7_ / 2) * param4;
         this.§true const import§(_loc11_,_loc10_);
         _loc8_ += _loc7_;
         _loc9_ = 0;
         while(_loc9_ < param3)
         {
            _loc11_ = param1 + Math.cos(_loc8_) * param5;
            _loc10_ = param2 + Math.sin(_loc8_) * param5;
            this.§5214231142231155123423632234§(_loc11_,_loc10_);
            _loc11_ = param1 + Math.cos(_loc8_ + _loc7_ / 2) * param4;
            _loc10_ = param2 + Math.sin(_loc8_ + _loc7_ / 2) * param4;
            this.§5214231142231155123423632234§(_loc11_,_loc10_);
            _loc8_ += _loc7_;
            _loc9_++;
         }
      }
      
      public function §for catch dynamic§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         if(!this.§try set switch§)
         {
            this.§5214239362239375123423632234§();
         }
         this.§in catch continue§.moveTo(param1,param2);
         this.§in catch continue§.curveTo(param3,param4,param5,param6);
      }
      
      public function §5214231142231155123423632234§(param1:Number, param2:Number) : void
      {
         if(!this.§try set switch§)
         {
            this.§5214239362239375123423632234§();
         }
         this.§in catch continue§.lineTo(param1,param2);
      }
      
      public function §class function default§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(!this.§try set switch§)
         {
            this.§5214239362239375123423632234§();
         }
         this.§in catch continue§.moveTo(param1,param2);
         this.§in catch continue§.lineTo(param3,param4);
      }
      
      public function §class use for§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         if(!this.§try set switch§)
         {
            this.§5214239362239375123423632234§();
         }
         this.§in catch continue§.drawRoundRectComplex(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function §52142373623749123423632234§() : void
      {
         this.§in catch continue§.endFill();
      }
      
      public function §521423177522317765123423632234§(param1:Number, param2:Number = 1) : void
      {
         this.§in catch continue§.beginFill(param1,param2);
      }
      
      public function §52142377623789123423632234§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 0) : void
      {
         var _loc10_:Number = NaN;
         param5 = param5 * 3.141592653589793 / 180;
         var _loc9_:Number = 2 * 3.141592653589793 / param3;
         var _loc6_:Number = param4 / 2 / Math.sin(_loc9_ / 2);
         var _loc8_:Number = Math.cos(param5) * _loc6_ + param1;
         var _loc7_:Number = Math.sin(param5) * _loc6_ + param2;
         this.§true const import§(_loc8_,_loc7_);
         _loc10_ = 1;
         while(_loc10_ <= param3)
         {
            _loc8_ = Math.cos(_loc9_ * _loc10_ + param5) * _loc6_ + param1;
            _loc7_ = Math.sin(_loc9_ * _loc10_ + param5) * _loc6_ + param2;
            this.§5214231142231155123423632234§(_loc8_,_loc7_);
            _loc10_++;
         }
      }
      
      public function §override for else§(param1:String, param2:Array, param3:Array, param4:Array, param5:Matrix = null, param6:String = "pad", param7:String = "rgb", param8:Number = 0) : void
      {
         if(!this.§try set switch§)
         {
            this.§5214239362239375123423632234§();
         }
         this.§in catch continue§.lineGradientStyle(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function §521423148752314888123423632234§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§try set switch§)
         {
            this.§5214239362239375123423632234§();
         }
         this.§in catch continue§.drawRoundRect(param1,param2,param3,param4,param5);
      }
   }
}

