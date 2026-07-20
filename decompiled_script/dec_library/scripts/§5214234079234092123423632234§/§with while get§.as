package §5214234079234092123423632234§
{
   public class §with while get§
   {
      
      private static const §set use else§:String = "/";
      
      public function §with while get§()
      {
         super();
      }
      
      public static function §52142353723550123423632234§(param1:uint, param2:uint, param3:uint, param4:uint) : String
      {
         var _loc5_:String = §5214236849236862123423632234§(param3,param4);
         return "/" + param1.toString(8) + "/" + (param2 >> 16 & 0xFFFF).toString(8) + "/" + (param2 >> 8 & 0xFF).toString(8) + "/" + (param2 & 0xFF).toString(8) + "/" + _loc5_ + "/";
      }
      
      private static function §521423153552315368123423632234§(param1:uint) : String
      {
         return (param1 < 8 ? "0" : "") + param1.toString(8);
      }
      
      private static function §5214236849236862123423632234§(param1:uint, param2:uint) : String
      {
         var _loc8_:int = 0;
         var _loc3_:* = 0;
         var _loc5_:* = 0;
         var _loc4_:uint = 0;
         var _loc7_:String = "";
         var _loc6_:String = "";
         while(_loc8_ < 5)
         {
            _loc3_ = uint((param1 & 63 << 4 + _loc4_) >>> _loc4_ + 4);
            _loc5_ = uint((param2 & 63 << _loc4_) >>> _loc4_);
            var _loc10_:uint = _loc3_;
            _loc7_ = (_loc10_ < 8 ? "0" : "") + _loc10_.toString(8) + _loc7_;
            var _loc11_:uint = _loc5_;
            _loc6_ = (_loc11_ < 8 ? "0" : "") + _loc11_.toString(8) + _loc6_;
            _loc4_ += 6;
            _loc8_++;
         }
         var _loc12_:Number;
         var _loc9_:String = _loc7_ + (((_loc12_ = ((param1 & 0x0F) << 2) + (param2 >>> 30)) < 8 ? "0" : "") + _loc12_.toString(8)) + _loc6_;
         _loc8_ = 0;
         while(_loc8_ < _loc9_.length && _loc9_.charAt(_loc8_) == "0")
         {
            _loc8_++;
         }
         return _loc9_.substr(_loc8_);
      }
   }
}

