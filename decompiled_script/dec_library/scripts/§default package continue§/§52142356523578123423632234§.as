package §default package continue§
{
   import flash.utils.ByteArray;
   
   public class §52142356523578123423632234§ implements §521423165262316539123423632234§
   {
      
      private var §if package return§:int;
      
      private var §521423167262316739123423632234§:int;
      
      private var §521423183572318370123423632234§:int;
      
      public function §52142356523578123423632234§(param1:Number)
      {
         super();
         this.§if package return§ = Math.random() * 4294967295;
         var _loc2_:ByteArray = §while catch final§.§implements return§;
         _loc2_.position = 0;
         _loc2_.writeDouble(param1);
         _loc2_.position = 0;
         this.§521423167262316739123423632234§ = _loc2_.readInt() ^ this.§if package return§;
         this.§521423183572318370123423632234§ = _loc2_.readInt() ^ this.§if package return§;
      }
      
      public function §extends function var§(param1:Number) : void
      {
      }
      
      public function §5214232584232597123423632234§() : Number
      {
         var _loc1_:ByteArray = §while catch final§.§implements return§;
         _loc1_.position = 0;
         _loc1_.writeInt(this.§521423167262316739123423632234§ ^ this.§if package return§);
         _loc1_.writeInt(this.§521423183572318370123423632234§ ^ this.§if package return§);
         _loc1_.position = 0;
         return _loc1_.readDouble();
      }
   }
}

