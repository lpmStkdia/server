package §52142371523728123423632234§
{
   import flash.utils.ByteArray;
   import §native package final§.§521423106362310649123423632234§;
   import §native package final§.§521423167552316768123423632234§;
   
   public class §521423105752310588123423632234§ extends §521423106362310649123423632234§ implements §521423167552316768123423632234§
   {
      
      public function §521423105752310588123423632234§()
      {
         super();
      }
      
      public function §5214239183239196123423632234§(param1:ByteArray) : Object
      {
         if(§521423190902319103123423632234§(param1))
         {
            return null;
         }
         return param1.readUTFBytes(param1.readInt());
      }
      
      public function §null const break§(param1:ByteArray, param2:Object) : void
      {
         if(§5214231950231963123423632234§(param1,param2))
         {
            return;
         }
         var _loc4_:ByteArray = new ByteArray();
         _loc4_.writeUTFBytes(String(param2));
         var _loc3_:int = int(_loc4_.length);
         param1.writeInt(_loc3_);
         param1.writeUTFBytes(String(param2));
      }
   }
}

