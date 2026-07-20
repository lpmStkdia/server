package §5214231749231762123423632234§
{
   import §521423121232312136123423632234§.§get set try§;
   import alternativa.engine3d.core.Light3D;
   import alternativa.engine3d.lights.OmniLight;
   import alternativa.engine3d.lights.SpotLight;
   import alternativa.engine3d.lights.TubeLight;
   
   public final class §521423151942315207123423632234§
   {
      
      private var §521423130342313047123423632234§:int;
      
      private var §5214231249231262123423632234§:Vector.<uint>;
      
      private var §native while§:Vector.<Number>;
      
      private var color:Vector.<uint>;
      
      private var §dynamic switch catch§:Vector.<Number>;
      
      private var §finally try§:Vector.<Number>;
      
      public function §521423151942315207123423632234§(param1:Vector.<§get set try§>)
      {
         var _loc2_:int = 0;
         var _loc3_:§get set try§ = null;
         super();
         this.§521423130342313047123423632234§ = param1.length;
         this.§native while§ = new Vector.<Number>(this.§521423130342313047123423632234§,true);
         this.color = new Vector.<uint>(this.§521423130342313047123423632234§,true);
         this.§dynamic switch catch§ = new Vector.<Number>(this.§521423130342313047123423632234§,true);
         this.§finally try§ = new Vector.<Number>(this.§521423130342313047123423632234§,true);
         this.§5214231249231262123423632234§ = new Vector.<uint>(this.§521423130342313047123423632234§,true);
         while(_loc2_ < this.§521423130342313047123423632234§)
         {
            _loc3_ = param1[_loc2_];
            this.§native while§[_loc2_] = _loc3_.§native while§;
            this.color[_loc2_] = uint(_loc3_.color);
            this.§dynamic switch catch§[_loc2_] = _loc3_.§dynamic switch catch§;
            this.§finally try§[_loc2_] = _loc3_.§finally try§;
            this.§5214231249231262123423632234§[_loc2_] = uint(_loc3_.§5214231249231262123423632234§);
            _loc2_++;
         }
      }
      
      private static function §final catch each§(param1:uint, param2:uint, param3:Number) : uint
      {
         var _loc8_:Number = (param1 >> 16 & 0xFF) / 255;
         var _loc12_:Number = (param1 >> 8 & 0xFF) / 255;
         var _loc9_:Number = (param1 & 0xFF) / 255;
         var _loc4_:Number = (param2 >> 16 & 0xFF) / 255;
         var _loc10_:Number = (param2 >> 8 & 0xFF) / 255;
         var _loc5_:Number = (param2 & 0xFF) / 255;
         var _loc6_:int = (_loc8_ + (_loc4_ - _loc8_) * param3) * 255;
         var _loc11_:int = (_loc12_ + (_loc10_ - _loc12_) * param3) * 255;
         var _loc7_:int = (_loc9_ + (_loc5_ - _loc9_) * param3) * 255;
         return _loc6_ << 16 | _loc11_ << 8 | _loc7_;
      }
      
      private static function §set for throw§(param1:Number, param2:Number, param3:Number) : Number
      {
         return param1 + (param2 - param1) * param3;
      }
      
      private function §521423107982310811123423632234§(param1:Number, param2:OmniLight) : void
      {
         var _loc8_:int = this.§import function final§(int(param1));
         var _loc12_:int = this.§import function final§(Math.ceil(param1));
         var _loc3_:Number = param1 - _loc8_;
         var _loc13_:Number = this.§native while§[_loc8_];
         var _loc11_:Number = this.§native while§[_loc12_];
         var _loc10_:uint = this.color[_loc8_];
         var _loc4_:uint = this.color[_loc12_];
         var _loc7_:Number = this.§dynamic switch catch§[_loc8_];
         var _loc9_:Number = this.§dynamic switch catch§[_loc12_];
         var _loc5_:Number = this.§finally try§[_loc8_];
         var _loc6_:Number = this.§finally try§[_loc12_];
         param2.intensity = _loc13_ + (_loc11_ - _loc13_) * _loc3_;
         param2.color = §final catch each§(_loc10_,_loc4_,_loc3_);
         param2.attenuationBegin = _loc7_ + (_loc9_ - _loc7_) * _loc3_;
         param2.attenuationEnd = _loc5_ + (_loc6_ - _loc5_) * _loc3_;
      }
      
      private function §do set native§(param1:Number, param2:TubeLight) : void
      {
         var _loc8_:int = this.§import function final§(int(param1));
         var _loc12_:int = this.§import function final§(Math.ceil(param1));
         var _loc3_:Number = param1 - _loc8_;
         var _loc13_:Number = this.§native while§[_loc8_];
         var _loc11_:Number = this.§native while§[_loc12_];
         var _loc10_:uint = this.color[_loc8_];
         var _loc4_:uint = this.color[_loc12_];
         var _loc7_:Number = this.§dynamic switch catch§[_loc8_];
         var _loc9_:Number = this.§dynamic switch catch§[_loc12_];
         var _loc5_:Number = this.§finally try§[_loc8_];
         var _loc6_:Number = this.§finally try§[_loc12_];
         param2.intensity = §set for throw§(_loc13_,_loc11_,_loc3_);
         param2.color = §final catch each§(_loc10_,_loc4_,_loc3_);
         param2.attenuationBegin = §set for throw§(_loc7_,_loc9_,_loc3_);
         param2.attenuationEnd = §set for throw§(_loc5_,_loc6_,_loc3_);
      }
      
      private function §import function final§(param1:int) : int
      {
         return param1 < this.§521423130342313047123423632234§ ? param1 : this.§521423130342313047123423632234§ - 1;
      }
      
      public function §include var package§(param1:Light3D, param2:int, param3:int = -1) : void
      {
         var _loc4_:Number = 1;
         if(param3 > 0 && this.§521423130342313047123423632234§ > 0)
         {
            _loc4_ = this.§5214231249231262123423632234§[this.§521423130342313047123423632234§ - 1] / param3;
         }
         var _loc5_:Number = this.§function use package§(param2 * _loc4_);
         this.§throw finally false§(param1,_loc5_);
      }
      
      public function §super switch get§() : int
      {
         return this.§5214231249231262123423632234§[this.§521423130342313047123423632234§ - 1];
      }
      
      private function §for while include§(param1:Number, param2:SpotLight) : void
      {
         var _loc8_:int = this.§import function final§(int(param1));
         var _loc12_:int = this.§import function final§(Math.ceil(param1));
         var _loc3_:Number = param1 - _loc8_;
         var _loc13_:Number = this.§native while§[_loc8_];
         var _loc11_:Number = this.§native while§[_loc12_];
         var _loc10_:uint = this.color[_loc8_];
         var _loc4_:uint = this.color[_loc12_];
         var _loc7_:Number = this.§dynamic switch catch§[_loc8_];
         var _loc9_:Number = this.§dynamic switch catch§[_loc12_];
         var _loc5_:Number = this.§finally try§[_loc8_];
         var _loc6_:Number = this.§finally try§[_loc12_];
         param2.intensity = §set for throw§(_loc13_,_loc11_,_loc3_);
         param2.color = §final catch each§(_loc10_,_loc4_,_loc3_);
         param2.attenuationBegin = §set for throw§(_loc7_,_loc9_,_loc3_);
         param2.attenuationEnd = §set for throw§(_loc5_,_loc6_,_loc3_);
      }
      
      public function §5214237081237094123423632234§() : int
      {
         return this.§521423130342313047123423632234§;
      }
      
      private function §function use package§(param1:Number) : Number
      {
         var _loc4_:int = 0;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = 0;
         if(param1 < this.§5214231249231262123423632234§[this.§521423130342313047123423632234§ - 1])
         {
            while(_loc4_ < this.§521423130342313047123423632234§ - 1)
            {
               _loc2_ = this.§5214231249231262123423632234§[_loc4_];
               _loc3_ = this.§5214231249231262123423632234§[_loc4_ + 1];
               if(param1 >= _loc2_ && param1 < _loc3_)
               {
                  _loc5_ = (param1 - _loc2_) / (_loc3_ - _loc2_);
                  _loc6_ = _loc4_ + _loc5_;
                  break;
               }
               _loc4_++;
            }
         }
         else
         {
            _loc6_ = this.§521423130342313047123423632234§ - 1;
         }
         return _loc6_;
      }
      
      private function §throw finally false§(param1:Light3D, param2:Number) : void
      {
         if(param1 is OmniLight)
         {
            this.§521423107982310811123423632234§(param2,OmniLight(param1));
         }
         else if(param1 is TubeLight)
         {
            this.§do set native§(param2,TubeLight(param1));
         }
         else if(param1 is SpotLight)
         {
            this.§for while include§(param2,SpotLight(param1));
         }
         param1.calculateBounds();
      }
   }
}

