package §521423105672310580123423632234§
{
   import flash.events.Event;
   
   public class §5214231718231731123423632234§ extends Event
   {
      
      public static const §extends package default§:String = "itemRollOut";
      
      public static const §521423129452312958123423632234§:String = "itemRollOver";
      
      public static const §static switch set§:String = "itemClick";
      
      public static const §catch function super§:String = "itemDoubleClick";
      
      protected var §521423133472313360123423632234§:Object;
      
      protected var §521423124302312443123423632234§:int;
      
      protected var §521423166942316707123423632234§:int;
      
      protected var §include set function§:int;
      
      public function §5214231718231731123423632234§(param1:String, param2:Boolean = false, param3:Boolean = false, param4:int = -1, param5:int = -1, param6:int = -1, param7:Object = null)
      {
         super(param1,param2,param3);
         §521423166942316707123423632234§ = param5;
         §include set function§ = param4;
         §521423124302312443123423632234§ = param6;
         §521423133472313360123423632234§ = param7;
      }
      
      public function get §521423145732314586123423632234§() : int
      {
         return §521423124302312443123423632234§;
      }
      
      override public function clone() : Event
      {
         return new §5214231718231731123423632234§(type,bubbles,cancelable,§include set function§,§521423166942316707123423632234§);
      }
      
      override public function toString() : String
      {
         return formatToString("ListEvent","type","bubbles","cancelable","columnIndex","rowIndex","index","item");
      }
      
      public function get §false true§() : int
      {
         return §include set function§;
      }
      
      public function get §catch super function§() : Object
      {
         return §521423166942316707123423632234§;
      }
      
      public function get §override finally false§() : Object
      {
         return §521423133472313360123423632234§;
      }
   }
}

