package
{
   public class Reflect
   {
      
      public function Reflect()
      {
         super();
      }
      
      public static function field(param1:*, param2:String) : *
      {
         if(param1 != null && param2 in param1)
         {
            return param1[param2];
         }
         return null;
      }
      
      public static function hasField(param1:*, param2:String) : Boolean
      {
         return param1.hasOwnProperty(param2);
      }
   }
}

