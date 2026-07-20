package §521423105672310580123423632234§
{
   import flash.events.Event;
   
   public class §5214235688235701123423632234§ extends Event
   {
      
      public static const §521423142912314304123423632234§:String = "dataChange";
      
      public static const §5214231492231505123423632234§:String = "preDataChange";
      
      protected var §521423153942315407123423632234§:Array;
      
      protected var §5214232093232106123423632234§:String;
      
      protected var §catch var var§:uint;
      
      protected var §521423144032314416123423632234§:uint;
      
      public function §5214235688235701123423632234§(param1:String, param2:String, param3:Array, param4:int = -1, param5:int = -1)
      {
         super(param1);
         §5214232093232106123423632234§ = param2;
         §catch var var§ = param4;
         §521423153942315407123423632234§ = param3;
         §521423144032314416123423632234§ = param5 == -1 ? §catch var var§ : uint(param5);
      }
      
      public function get §switch while extends§() : uint
      {
         return §521423144032314416123423632234§;
      }
      
      public function get §5214231649231662123423632234§() : Array
      {
         return §521423153942315407123423632234§;
      }
      
      override public function toString() : String
      {
         return formatToString("DataChangeEvent","type","changeType","startIndex","endIndex","bubbles","cancelable");
      }
      
      public function get §implements finally finally§() : uint
      {
         return §catch var var§;
      }
      
      public function get §null catch each§() : String
      {
         return §5214232093232106123423632234§;
      }
      
      override public function clone() : Event
      {
         return new §5214235688235701123423632234§(type,§5214232093232106123423632234§,§521423153942315407123423632234§,§catch var var§,§521423144032314416123423632234§);
      }
   }
}

