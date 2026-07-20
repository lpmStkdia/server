package §native package final§
{
   import avmplus.describeTypeObject;
   import flash.utils.ByteArray;
   
   public class §case use set§ implements §521423167552316768123423632234§
   {
      
      public var §52142323123244123423632234§:Class;
      
      private var §5214236142236155123423632234§:Array = [];
      
      public function §case use set§(param1:Class)
      {
         super();
         var _loc3_:Object = describeTypeObject(param1,264);
         for each(var _loc2_ in _loc3_.traits.variables)
         {
            this.§5214236142236155123423632234§[param1[_loc2_.name].value] = param1[_loc2_.name];
         }
         this.§52142323123244123423632234§ = param1;
      }
      
      public function §5214239183239196123423632234§(param1:ByteArray) : Object
      {
         return this.§5214236142236155123423632234§[param1.readInt()];
      }
      
      public function §null const break§(param1:ByteArray, param2:Object) : void
      {
         param1.writeInt(param2.value);
      }
   }
}

