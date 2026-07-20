package §521423133282313341123423632234§
{
   import flash.utils.ByteArray;
   import §native package final§.§521423106362310649123423632234§;
   import §native package final§.§521423167552316768123423632234§;
   
   public class §import var false§ extends §521423106362310649123423632234§ implements §521423167552316768123423632234§
   {
      
      public function §import var false§()
      {
         super();
      }
      
      public function §5214239183239196123423632234§(param1:ByteArray) : Object
      {
         var _loc4_:int = 0;
         if(§521423190902319103123423632234§(param1))
         {
            return null;
         }
         var _loc2_:int = param1.readInt();
         var _loc3_:Vector.<int> = new Vector.<int>(_loc2_,true);
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_] = param1.readShort();
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function §null const break§(param1:ByteArray, param2:Object) : void
      {
         var _loc5_:int = 0;
         if(§5214231950231963123423632234§(param1,param2))
         {
            return;
         }
         var _loc3_:Vector.<int> = param2 as Vector.<int>;
         var _loc4_:int = int(_loc3_.length);
         param1.writeInt(_loc4_);
         _loc5_ = 0;
         while(_loc5_ < _loc4_)
         {
            param1.writeShort(_loc3_[_loc5_]);
            _loc5_++;
         }
      }
   }
}

