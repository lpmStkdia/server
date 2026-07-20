package §finally implements§
{
   import flash.globalization.DateTimeFormatter;
   import §static catch do§.§static set in§;
   
   public class §5214236559236572123423632234§
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      private static var §finally function final§:DateTimeFormatter;
      
      private static var §5214239317239330123423632234§:DateTimeFormatter;
      
      private static var §catch catch with§:DateTimeFormatter;
      
      public function §5214236559236572123423632234§()
      {
         super();
      }
      
      public static function §521423118132311826123423632234§(param1:Date) : String
      {
         if(§finally function final§ == null)
         {
            §finally function final§ = new DateTimeFormatter("");
            §finally function final§.setDateTimePattern(§521423164582316471123423632234§.§521423157602315773123423632234§("DATE_FORMAT"));
         }
         return §finally function final§.format(param1);
      }
      
      public static function §521423142722314285123423632234§(param1:Date) : String
      {
         if(§5214239317239330123423632234§ == null)
         {
            §5214239317239330123423632234§ = new DateTimeFormatter("");
            §5214239317239330123423632234§.setDateTimePattern("HH:mm");
         }
         return §5214239317239330123423632234§.format(param1);
      }
      
      public static function §var function final§(param1:Date) : String
      {
         if(§catch catch with§ == null)
         {
            §catch catch with§ = new DateTimeFormatter("");
            §catch catch with§.setDateTimePattern("HH:mm");
         }
         return §catch catch with§.format(param1);
      }
   }
}

