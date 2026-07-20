package §native function continue§
{
   import flash.utils.ByteArray;
   import §native package final§.§521423167552316768123423632234§;
   
   public class §var while else§ implements §521423167552316768123423632234§
   {
      
      public function §var while else§()
      {
         super();
      }
      
      public function §5214239183239196123423632234§(param1:ByteArray) : Object
      {
         var _loc4_:int = 0;
         var _loc2_:int = param1.readInt();
         var _loc3_:Vector.<int> = new Vector.<int>(_loc2_,true);
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_] = param1.readInt();
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function §null const break§(param1:ByteArray, param2:Object) : void
      {
         var _loc5_:int = 0;
         var _loc3_:Vector.<int> = param2 as Vector.<int>;
         var _loc4_:int = int(_loc3_.length);
         param1.writeInt(_loc4_);
         _loc5_ = 0;
         while(_loc5_ < _loc4_)
         {
            param1.writeInt(_loc3_[_loc5_]);
            _loc5_++;
         }
      }
   }
}

