package §521423101572310170123423632234§
{
   import flash.net.SharedObject;
   import flash.utils.ByteArray;
   
   public class §521423182331123423632234§
   {
      
      private var §catch super catch§:SharedObject;
      
      private var §var const override§:String;
      
      public function §521423182331123423632234§(param1:String, param2:String)
      {
         super();
         var _loc3_:String = param1 + "-" + param2;
         this.§catch super catch§ = SharedObject.getLocal(_loc3_,"/");
         this.§var const override§ = param1;
      }
      
      public function get §continue package implements§() : String
      {
         return this.§var const override§;
      }
      
      public function get §5214233126233139123423632234§() : int
      {
         return this.§catch super catch§.data.version;
      }
      
      public function §5214232834232847123423632234§() : void
      {
         this.§catch super catch§.flush();
      }
      
      public function set data(param1:ByteArray) : void
      {
         this.§catch super catch§.data.data = param1;
      }
      
      public function set §5214233126233139123423632234§(param1:int) : void
      {
         this.§catch super catch§.data.version = param1;
      }
      
      public function get data() : ByteArray
      {
         return this.§catch super catch§.data.data;
      }
      
      public function §52142367423687123423632234§() : void
      {
         this.§catch super catch§.clear();
      }
   }
}

