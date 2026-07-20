package §5214238429238442123423632234§
{
   import flash.display.BitmapData;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import §implements use var§.§5214232504232517123423632234§;
   
   public class §5214233110233123123423632234§
   {
      
      private static const §implements catch while§:int = 210;
      
      private static const §521423127432312756123423632234§:int = 29;
      
      private const §5214231081231094123423632234§:Object = {};
      
      public function §5214233110233123123423632234§()
      {
         super();
      }
      
      private static function §5214239871239884123423632234§(param1:§5214232504232517123423632234§, param2:§5214232504232517123423632234§, param3:§5214232504232517123423632234§) : String
      {
         var _loc4_:§5214232504232517123423632234§ = param1;
         var _loc5_:§5214232504232517123423632234§;
         var _loc6_:§5214232504232517123423632234§;
         return _loc4_.§false catch override§.id.toString() + "_" + (_loc5_ = param2).§false catch override§.id.toString() + "_" + (_loc6_ = param3).§false catch override§.id.toString();
      }
      
      private static function §native const const§(param1:BitmapData, param2:BitmapData, param3:int, param4:int, param5:String) : void
      {
         var _loc7_:ColorTransform = new ColorTransform();
         if(param3 < 5)
         {
            _loc7_.alphaMultiplier = param3 / 5;
         }
         else if(param3 < 25)
         {
            _loc7_.alphaMultiplier = 1;
         }
         else
         {
            _loc7_.alphaMultiplier = 1 - (param3 - 24) / 5;
         }
         var _loc6_:Matrix = new Matrix();
         _loc6_.translate(-0.5 * param1.width,-0.5 * param1.height);
         _loc6_.rotate(2 * param3 * 3.141592653589793 / 180);
         _loc6_.translate((param3 - 1) * param4 + 0.5 * param4,0.5 * param4);
         param2.draw(param1,_loc6_,_loc7_,param5,null,true);
      }
      
      private static function §5214236531236544123423632234§(param1:BitmapData, param2:BitmapData, param3:int, param4:int, param5:String) : void
      {
         var _loc7_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc9_:ColorTransform = new ColorTransform();
         if(param3 < 24)
         {
            _loc7_ = param3 / 24;
            _loc9_.alphaMultiplier = _loc7_;
            _loc6_ = 0.4 + 0.6 * _loc7_;
         }
         else if(param3 < 25)
         {
            _loc9_.alphaMultiplier = 1;
            _loc6_ = 1;
         }
         else
         {
            _loc7_ = 1 - (param3 - 24) / 5;
            _loc9_.alphaMultiplier = _loc7_;
            _loc6_ = 0.2 + 0.8 * _loc7_;
         }
         var _loc8_:Matrix = new Matrix();
         _loc8_.translate(-0.5 * param1.width,-0.5 * param1.height);
         _loc8_.scale(_loc6_,_loc6_);
         _loc8_.rotate(2 * -param3 * 3.141592653589793 / 180);
         _loc8_.translate((param3 - 1) * param4 + 0.5 * param4,0.5 * param4);
         param2.draw(param1,_loc8_,_loc9_,param5,null,true);
      }
      
      private static function §each use with§(param1:BitmapData, param2:BitmapData, param3:int, param4:int, param5:String) : void
      {
         var _loc7_:ColorTransform = new ColorTransform();
         if(param3 < 14)
         {
            _loc7_.alphaMultiplier = param3 / 14;
         }
         else if(param3 < 25)
         {
            _loc7_.alphaMultiplier = 1;
         }
         else
         {
            _loc7_.alphaMultiplier = 1 - (param3 - 24) / 5;
         }
         var _loc6_:Matrix = new Matrix();
         _loc6_.tx = (param3 - 1) * param4 + 0.5 * (param4 - param1.width);
         _loc6_.ty = 0.5 * (param4 - param1.height);
         param2.draw(param1,_loc6_,_loc7_,param5,null,true);
      }
      
      private static function §5214235203235216123423632234§(param1:§5214232504232517123423632234§, param2:§5214232504232517123423632234§, param3:§5214232504232517123423632234§) : BitmapData
      {
         var _loc9_:int = 0;
         var _loc4_:BitmapData = param1.data;
         var _loc5_:BitmapData = param2.data;
         var _loc6_:BitmapData = param3.data;
         var _loc8_:BitmapData = new BitmapData(210 * 29,210,true,0);
         var _loc7_:String = "normal";
         _loc9_ = 1;
         while(_loc9_ < 29)
         {
            §each use with§(_loc4_,_loc8_,_loc9_,210,_loc7_);
            §native const const§(_loc5_,_loc8_,_loc9_,210,_loc7_);
            §5214236531236544123423632234§(_loc6_,_loc8_,_loc9_,210,_loc7_);
            _loc9_++;
         }
         return _loc8_;
      }
      
      public function §521423135432313556123423632234§(param1:§5214232504232517123423632234§, param2:§5214232504232517123423632234§, param3:§5214232504232517123423632234§) : BitmapData
      {
         var _loc4_:§521423144492314462123423632234§ = this.§5214235852235865123423632234§(param1,param2,param3);
         ++_loc4_.§var var final§;
         return _loc4_.§function var function§;
      }
      
      private function §5214235852235865123423632234§(param1:§5214232504232517123423632234§, param2:§5214232504232517123423632234§, param3:§5214232504232517123423632234§) : §521423144492314462123423632234§
      {
         var _loc5_:String = §5214239871239884123423632234§(param1,param2,param3);
         var _loc4_:§521423144492314462123423632234§ = this.§5214231081231094123423632234§[_loc5_];
         if(_loc4_ == null)
         {
            _loc4_ = new §521423144492314462123423632234§();
            _loc4_.§function var function§ = §5214235203235216123423632234§(param1,param2,param3);
            this.§5214231081231094123423632234§[_loc5_] = _loc4_;
         }
         return _loc4_;
      }
      
      public function §5214231393231406123423632234§(param1:§5214232504232517123423632234§, param2:§5214232504232517123423632234§, param3:§5214232504232517123423632234§) : void
      {
         var _loc5_:String = §5214239871239884123423632234§(param1,param2,param3);
         var _loc4_:§521423144492314462123423632234§ = this.§5214231081231094123423632234§[_loc5_];
         if(_loc4_ != null)
         {
            --_loc4_.§var var final§;
            if(_loc4_.§var var final§ == 0)
            {
               _loc4_.§function var function§.dispose();
               delete this.§5214231081231094123423632234§[_loc5_];
            }
         }
      }
   }
}

