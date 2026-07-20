package §5214238875238888123423632234§
{
   import §521423122282312241123423632234§.§5214238026238039123423632234§;
   import §5214231886231899123423632234§.§5214231214231227123423632234§;
   import §521423188792318892123423632234§.§521423166662316679123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import §5214238762238775123423632234§.§5214233993234006123423632234§;
   import §default package continue§.§package finally case§;
   import §super return§.§dynamic function continue§;
   
   public class §5214234964234977123423632234§
   {
      
      private static const §521423133202313333123423632234§:§5214238026238039123423632234§ = new §5214238026238039123423632234§(0,1);
      
      private static const §5214237867237880123423632234§:§5214238026238039123423632234§ = new §5214238026238039123423632234§(0,0.2);
      
      public function §5214234964234977123423632234§()
      {
         super();
      }
      
      public static function §521423126532312666123423632234§(param1:§do function else§, param2:Number, param3:§5214233993234006123423632234§) : void
      {
         var _loc4_:§do function else§ = new §do function else§(param1.x,param1.y,param2 / 2);
         var _loc5_:§dynamic function continue§ = new §dynamic function continue§(_loc4_,0,§5214237867237880123423632234§);
         var _loc6_:§521423166662316679123423632234§ = new §521423166662316679123423632234§();
         _loc6_.§dynamic finally false§ = param2 / 2 - param1.§521423155722315585123423632234§;
         param3.§final true§.§521423101082310121123423632234§(_loc5_,_loc6_);
         param3.§each set if§ = _loc5_;
      }
      
      public static function §521423126182312631123423632234§(param1:§do function else§, param2:Number, param3:§5214233993234006123423632234§) : void
      {
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc32_:Number = param2 - 10;
         var _loc19_:Number = param1.y;
         var _loc21_:Number = _loc32_ / 2;
         var _loc14_:Number = 0.82;
         var _loc15_:Number = 1 - (1 - _loc14_) * (1 - _loc14_) * _loc19_ * _loc19_ / (_loc21_ * _loc21_);
         if(_loc15_ > 0)
         {
            _loc15_ = Math.sqrt(_loc15_);
         }
         else
         {
            _loc15_ = 1 - (1 - _loc14_) * _loc19_ / _loc21_;
         }
         var _loc24_:Number = (_loc14_ - 1) * _loc19_ / ((1 + _loc15_) * _loc21_);
         var _loc18_:Number = _loc15_ * _loc21_ - _loc24_ * _loc19_;
         var _loc31_:Number = (1 - _loc14_) * _loc19_ / ((1 + _loc15_) * _loc21_);
         var _loc27_:Number = (1 - _loc15_) * _loc21_ / ((1 - _loc14_) * _loc19_);
         var _temp_4:* = §package finally case§;
         var _temp_3:* = _loc31_;
         var _temp_2:* = _loc27_;
         var _loc37_:Number = 0.00001;
         var _loc35_:Number = _temp_2;
         var _loc34_:Number = _temp_3;
         var _loc33_:§package finally case§ = _temp_4;
         var _loc36_:Number = _loc34_ - _loc35_;
         if((_loc36_ < 0 ? _loc36_ > -_loc37_ : _loc36_ < _loc37_) || _loc31_ < _loc27_)
         {
            _loc28_ = _loc14_ * _loc19_;
            _loc29_ = _loc24_ * _loc28_ + _loc18_;
         }
         else
         {
            _loc28_ = (1 - _loc15_) * _loc21_ / _loc24_ + _loc19_;
            _loc29_ = _loc21_;
         }
         var _loc20_:Number = _loc29_ - _loc15_ * _loc21_;
         var _loc22_:Number = _loc19_ - _loc28_;
         var _loc8_:Number = Math.sqrt(_loc20_ * _loc20_ + _loc22_ * _loc22_) / 2;
         _loc20_ = (1 + _loc15_) * _loc21_;
         _loc22_ = (1 - _loc14_) * _loc19_;
         var _loc5_:Number = Math.sqrt(_loc20_ * _loc20_ + _loc22_ * _loc22_) / 2;
         var _loc11_:§dynamic function continue§ = new §dynamic function continue§(new §do function else§(param1.x,_loc8_,_loc5_),16,§5214237867237880123423632234§);
         var _loc6_:§521423166662316679123423632234§ = new §521423166662316679123423632234§();
         var _loc10_:Number = Math.atan(_loc31_);
         _loc6_.§set const get§(-_loc10_,0,0);
         var _loc12_:Number = _loc14_ * _loc19_ + _loc5_ * Math.sin(_loc10_) - _loc8_ * Math.cos(_loc10_);
         var _loc4_:Number = -_loc21_ + _loc5_ * Math.cos(_loc10_) + _loc8_ * Math.sin(_loc10_) - (param1.§521423155722315585123423632234§ - _loc32_ / 2);
         var _loc9_:§do function else§ = new §do function else§(0,_loc12_,_loc4_);
         _loc6_.§5214239538239551123423632234§(_loc9_);
         var _loc25_:Vector.<§5214231214231227123423632234§> = param3.§521423100482310061123423632234§;
         param3.§final true§.§521423101082310121123423632234§(_loc11_,_loc6_);
         _loc25_[_loc25_.length] = _loc11_;
         _loc11_ = new §dynamic function continue§(new §do function else§(param1.x,_loc8_,_loc5_),16,§5214237867237880123423632234§);
         _loc6_.§set const get§(_loc10_,0,0);
         _loc9_.y = -_loc9_.y;
         _loc6_.§5214239538239551123423632234§(_loc9_);
         param3.§final true§.§521423101082310121123423632234§(_loc11_,_loc6_);
         _loc25_[_loc25_.length] = _loc11_;
         var _loc16_:Number = param2 * 3 / 4;
         var _loc30_:§do function else§ = new §do function else§(param1.x,param1.y * _loc14_,_loc16_ / 2);
         var _loc17_:§521423166662316679123423632234§ = new §521423166662316679123423632234§();
         _loc17_.§dynamic finally false§ = _loc30_.§521423155722315585123423632234§ - param1.§521423155722315585123423632234§;
         var _loc7_:§dynamic function continue§ = new §dynamic function continue§(_loc30_,16,§5214237867237880123423632234§);
         param3.§final true§.§521423101082310121123423632234§(_loc7_,_loc17_);
         _loc25_[_loc25_.length] = _loc7_;
         var _loc23_:Number = param2 * 3 / 4;
         var _loc13_:§do function else§ = new §do function else§(param1.x,param1.y * _loc14_,_loc23_ / 2);
         _loc17_.§dynamic finally false§ = param2 - _loc13_.§521423155722315585123423632234§ - param1.§521423155722315585123423632234§;
         var _loc26_:§dynamic function continue§ = new §dynamic function continue§(_loc13_,16,§521423133202313333123423632234§);
         param3.§final true§.§521423101082310121123423632234§(_loc26_,_loc17_);
         _loc25_[_loc25_.length] = _loc26_;
      }
   }
}

