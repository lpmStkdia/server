package §521423130892313102123423632234§
{
   public class §continue function in§
   {
      
      public static const §521423111742311187123423632234§:§continue function in§ = new §continue function in§(1,"TRACE");
      
      public static const §521423194212319434123423632234§:§continue function in§ = new §continue function in§(2,"DEBUG");
      
      public static const §in package each§:§continue function in§ = new §continue function in§(3,"INFO");
      
      public static const §521423104672310480123423632234§:§continue function in§ = new §continue function in§(4,"WARNING");
      
      public static const §5214234663234676123423632234§:§continue function in§ = new §continue function in§(5,"ERROR");
      
      private var value:int;
      
      private var name:String;
      
      public function §continue function in§(param1:int, param2:String)
      {
         super();
         this.value = param1;
         this.name = param2;
      }
      
      public static function §5214238338238351123423632234§(param1:int) : §continue function in§
      {
         switch(param1 - 1)
         {
            case 0:
               return §521423111742311187123423632234§;
            case 1:
               return §521423194212319434123423632234§;
            case 2:
               return §in package each§;
            case 3:
               return §521423104672310480123423632234§;
            case 4:
               return §5214234663234676123423632234§;
            default:
               return §521423111742311187123423632234§;
         }
      }
      
      public static function §function in§(param1:String) : §continue function in§
      {
         switch(param1)
         {
            case "TRACE":
               return §continue function in§.§521423111742311187123423632234§;
            case "DEBUG":
               return §continue function in§.§521423194212319434123423632234§;
            case "INFO":
               return §continue function in§.§in package each§;
            case "WARNING":
               return §continue function in§.§521423104672310480123423632234§;
            case "ERROR":
               return §continue function in§.§5214234663234676123423632234§;
            default:
               return §continue function in§.§521423111742311187123423632234§;
         }
      }
      
      public function toString() : String
      {
         return "[LogLevel " + this.name + " " + this.value + "]";
      }
      
      public function §5214238075238088123423632234§() : String
      {
         return this.name;
      }
      
      public function §throw function catch§() : int
      {
         return this.value;
      }
   }
}

