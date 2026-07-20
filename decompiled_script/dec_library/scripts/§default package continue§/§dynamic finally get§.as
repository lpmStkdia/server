package §default package continue§
{
   import §521423101572310170123423632234§.§521423124172312430123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import §5214234079234092123423632234§.§for package with§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.materials.TextureMaterial;
   import §each set default§.§521423144672314480123423632234§;
   import §each set default§.§5214234448234461123423632234§;
   import flash.display.BitmapData;
   import flash.filters.BitmapFilter;
   import flash.utils.Dictionary;
   import §implements use var§.§finally for implements§;
   
   public class §dynamic finally get§
   {
      
      private static var §native var static§:Dictionary = new Dictionary(true);
      
      public function §dynamic finally get§()
      {
         super();
      }
      
      public static function §521423131662313179123423632234§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Number, param7:Number, param8:Number) : Vector.<§521423144672314480123423632234§>
      {
         var _loc19_:int = 0;
         var _loc16_:int = 0;
         var _loc14_:int = 0;
         var _loc18_:int = 0;
         var _loc15_:int = 0;
         var _loc20_:int = 0;
         var _loc9_:int = Math.min(param3,param1);
         var _loc21_:int = param1 / _loc9_;
         var _loc10_:int = Math.min(param4,param2);
         var _loc12_:int = param2 / _loc10_;
         var _loc17_:int = _loc21_ * _loc12_;
         if(param5 > 0 && _loc17_ > param5)
         {
            _loc17_ = param5;
         }
         var _loc13_:Vector.<§521423144672314480123423632234§> = new Vector.<§521423144672314480123423632234§>(_loc17_,true);
         var _loc11_:int = 0;
         while(_loc19_ < _loc12_)
         {
            _loc16_ = _loc19_ * _loc10_;
            _loc14_ = _loc16_ + _loc10_;
            _loc18_ = 0;
            while(_loc18_ < _loc21_)
            {
               _loc15_ = _loc18_ * _loc9_;
               _loc20_ = _loc15_ + _loc9_;
               _loc13_[_loc11_++] = new §521423144672314480123423632234§(_loc15_ / param1,param8 + _loc16_ / param2 * param7,_loc20_ / param1 * param6,param8 + _loc14_ / param2 * param7);
               if(_loc11_ == _loc17_)
               {
                  return _loc13_;
               }
               _loc18_++;
            }
            _loc19_++;
         }
         return _loc13_;
      }
      
      public static function §finally const do§(param1:§for package with§, param2:§finally for implements§, param3:Boolean = true) : §5214234448234461123423632234§
      {
         var _loc4_:§5214234448234461123423632234§ = §5214237658237671123423632234§(param1,param2.data,param2.§5214233613233626123423632234§,param2.§521423115002311513123423632234§,param2.§521423140712314084123423632234§,true,param3);
         _loc4_.§521423100092310022123423632234§ = param2.§521423100092310022123423632234§;
         return _loc4_;
      }
      
      public static function §5214237658237671123423632234§(param1:§for package with§, param2:BitmapData, param3:int, param4:int, param5:int = 0, param6:Boolean = true, param7:Boolean = true) : §5214234448234461123423632234§
      {
         var _loc8_:TextureMaterial = param1.§return var var§(param2,param6,param7);
         var _loc9_:Vector.<§521423144672314480123423632234§> = §native use in§(param2,param3,param4,param5);
         return new §5214234448234461123423632234§(_loc8_,_loc9_);
      }
      
      public static function §native use in§(param1:BitmapData, param2:int, param3:int, param4:int = 0) : Vector.<§521423144672314480123423632234§>
      {
         var _loc17_:int = 0;
         var _loc14_:int = 0;
         var _loc11_:int = 0;
         var _loc16_:int = 0;
         var _loc13_:int = 0;
         var _loc18_:int = 0;
         var _loc10_:int = param1.width;
         var _loc5_:int = Math.min(param2,_loc10_);
         var _loc19_:int = _loc10_ / _loc5_;
         var _loc12_:int = param1.height;
         var _loc6_:int = Math.min(param3,_loc12_);
         var _loc8_:int = _loc12_ / _loc6_;
         var _loc15_:int = _loc19_ * _loc8_;
         if(param4 > 0 && _loc15_ > param4)
         {
            _loc15_ = param4;
         }
         var _loc9_:Vector.<§521423144672314480123423632234§> = new Vector.<§521423144672314480123423632234§>(_loc15_,true);
         var _loc7_:int = 0;
         while(_loc17_ < _loc8_)
         {
            _loc14_ = _loc17_ * _loc6_;
            _loc11_ = _loc14_ + _loc6_;
            _loc16_ = 0;
            while(_loc16_ < _loc19_)
            {
               _loc13_ = _loc16_ * _loc5_;
               _loc18_ = _loc13_ + _loc5_;
               _loc9_[_loc7_++] = new §521423144672314480123423632234§(_loc13_ / _loc10_,_loc14_ / _loc12_,_loc18_ / _loc10_,_loc11_ / _loc12_);
               if(_loc7_ == _loc15_)
               {
                  return _loc9_;
               }
               _loc16_++;
            }
            _loc17_++;
         }
         return _loc9_;
      }
      
      public static function §521423179712317984123423632234§(param1:BitmapData, param2:BitmapFilter) : BitmapData
      {
         var _loc4_:Object = null;
         for(var _loc5_ in §native var static§)
         {
            _loc4_ = §native var static§[_loc5_];
            if(_loc4_.s == param1 && _loc4_.f == param2)
            {
               return _loc5_;
            }
         }
         var _loc3_:BitmapData = param1.clone();
         _loc3_.applyFilter(param1,param1.rect,§521423124172312430123423632234§.§var catch default§,param2);
         §native var static§[_loc3_] = {
            "s":param1,
            "f":param2
         };
         return _loc3_;
      }
      
      public static function §with for throw§(param1:§for package with§, param2:§finally for implements§, param3:BitmapFilter, param4:Boolean = true) : §5214234448234461123423632234§
      {
         var _loc6_:BitmapData = §521423179712317984123423632234§(param2.data,param3);
         var _loc5_:§5214234448234461123423632234§ = §5214237658237671123423632234§(param1,_loc6_,param2.§5214233613233626123423632234§,param2.§521423115002311513123423632234§,param2.§521423140712314084123423632234§,true,param4);
         _loc5_.§521423100092310022123423632234§ = param2.§521423100092310022123423632234§;
         return _loc5_;
      }
      
      private static function §with finally if§(param1:int, param2:int, param3:int, param4:int, param5:int = 0) : Vector.<§521423144672314480123423632234§>
      {
         var _loc16_:int = 0;
         var _loc13_:int = 0;
         var _loc11_:int = 0;
         var _loc15_:int = 0;
         var _loc12_:int = 0;
         var _loc17_:int = 0;
         var _loc6_:int = Math.min(param3,param1);
         var _loc18_:int = param1 / _loc6_;
         var _loc7_:int = Math.min(param4,param2);
         var _loc9_:int = param2 / _loc7_;
         var _loc14_:int = _loc18_ * _loc9_;
         if(param5 > 0 && _loc14_ > param5)
         {
            _loc14_ = param5;
         }
         var _loc10_:Vector.<§521423144672314480123423632234§> = new Vector.<§521423144672314480123423632234§>(_loc14_);
         var _loc8_:int = 0;
         while(_loc16_ < _loc9_)
         {
            _loc13_ = _loc16_ * _loc7_;
            _loc11_ = _loc13_ + _loc7_;
            _loc15_ = 0;
            while(_loc15_ < _loc18_)
            {
               _loc12_ = _loc15_ * _loc6_;
               _loc17_ = _loc12_ + _loc6_;
               _loc10_[_loc8_++] = new §521423144672314480123423632234§(_loc12_ / param1,_loc13_ / param2,_loc17_ / param1,_loc11_ / param2);
               if(_loc8_ == _loc14_)
               {
                  return _loc10_;
               }
               _loc15_++;
            }
            _loc16_++;
         }
         return _loc10_;
      }
      
      public static function §super switch finally§(param1:Object3D, param2:§do function else§, param3:§do function else§) : void
      {
         param1.x = param2.x;
         param1.y = param2.y;
         param1.z = param2.§521423155722315585123423632234§;
         param1.rotationX = param3.x;
         param1.rotationY = param3.y;
         param1.rotationZ = param3.§521423155722315585123423632234§;
      }
   }
}

