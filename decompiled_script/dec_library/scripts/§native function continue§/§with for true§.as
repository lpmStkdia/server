package §native function continue§
{
   import flash.utils.ByteArray;
   import §native package final§.§521423167552316768123423632234§;
   
   public class §with for true§ implements §521423167552316768123423632234§
   {
      
      public function §with for true§()
      {
         super();
      }
      
      public function §null const break§(param1:ByteArray, param2:Object) : void
      {
         var _loc3_:ByteArray = ByteArray(param2);
         param1.writeInt(_loc3_.length);
         param1.writeBytes(_loc3_);
      }
      
      public function §5214239183239196123423632234§(param1:ByteArray) : Object
      {
         var _loc3_:int = param1.readInt();
         var _loc2_:ByteArray = new ByteArray();
         if(_loc3_ > 0)
         {
            param1.readBytes(_loc2_,0,_loc3_);
         }
         return _loc2_;
      }
   }
}

