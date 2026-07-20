package §521423103002310313123423632234§
{
   import flash.utils.ByteArray;
   
   public class §521423112562311269123423632234§ implements §with use false§
   {
      
      private static const §5214232369232382123423632234§:int = 8;
      
      private var §5214239178239191123423632234§:Vector.<int> = new Vector.<int>(8,true);
      
      private var §override catch package§:Vector.<int> = new Vector.<int>(8,true);
      
      private var §extends for var§:int = 0;
      
      private var §static super else§:int = 0;
      
      private var §in while const§:int;
      
      public function §521423112562311269123423632234§(param1:Vector.<int>)
      {
         super();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            §in while const§ ^= param1[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < 8)
         {
            §override catch package§[_loc2_] = §in while const§ ^ _loc2_ << 3;
            §5214239178239191123423632234§[_loc2_] = §in while const§ ^ _loc2_ << 3 ^ 0x57;
            _loc2_++;
         }
      }
      
      public function §521423114622311475123423632234§(param1:ByteArray) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:int = int(param1.length);
         while(_loc3_ < _loc2_)
         {
            _loc4_ = int(param1[_loc3_]);
            param1[_loc3_] = _loc4_ ^ §5214239178239191123423632234§[§extends for var§];
            §5214239178239191123423632234§[§extends for var§] = _loc4_;
            §extends for var§ ^= _loc4_ & 7;
            _loc3_++;
         }
      }
      
      public function §5214235901235914123423632234§(param1:ByteArray, param2:int) : void
      {
         var _loc4_:int = 0;
         var _loc3_:int = int(param1.length);
         while(_loc4_ < param2)
         {
            §override catch package§[§static super else§] = param1[_loc4_] ^ §override catch package§[§static super else§];
            param1[_loc4_] = §override catch package§[§static super else§];
            §static super else§ ^= §override catch package§[§static super else§] & 7;
            _loc4_++;
         }
      }
   }
}

