package §521423124962312509123423632234§
{
   import §static catch do§.§static set in§;
   
   public class §521423163792316392123423632234§
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      private static const §for while break§:int = 60;
      
      private static const §5214236337236350123423632234§:int = 3600;
      
      private static const §set function native§:int = 86400;
      
      public function §521423163792316392123423632234§()
      {
         super();
      }
      
      public static function §while while break§(param1:int, param2:int, param3:int, param4:int) : String
      {
         var _loc5_:String = "";
         var _loc6_:Boolean = §521423164582316471123423632234§.§5214235381235394123423632234§ == "cn";
         if(param1 > 0)
         {
            _loc5_ = §5214231576231589123423632234§(param1,"TIME_LABEL_DAY",_loc5_);
            if(!_loc6_)
            {
               _loc5_ = §5214231576231589123423632234§(param2,"TIME_LABEL_HOUR",_loc5_);
            }
         }
         else if(param2 > 0)
         {
            _loc5_ = §5214231576231589123423632234§(param2,"TIME_LABEL_HOUR",_loc5_);
            if(!_loc6_)
            {
               _loc5_ = §5214231576231589123423632234§(param3,"TIME_LABEL_MINUTE",_loc5_);
            }
         }
         else if(param3 > 0)
         {
            _loc5_ = §5214231576231589123423632234§(param3,"TIME_LABEL_MINUTE",_loc5_);
            if(!_loc6_)
            {
               _loc5_ = §5214231576231589123423632234§(param4,"TIME_LABEL_SECOND",_loc5_);
            }
         }
         else
         {
            _loc5_ = §5214231576231589123423632234§(param4,"TIME_LABEL_SECOND",_loc5_);
         }
         return _loc5_;
      }
      
      private static function §5214231576231589123423632234§(param1:int, param2:String, param3:String) : String
      {
         if(param1 > 0)
         {
            if(param3.length > 0)
            {
               param3 += " ";
            }
            param3 += param1 + §521423164582316471123423632234§.§521423157602315773123423632234§(param2);
         }
         return param3;
      }
      
      public static function §if function case§(param1:int) : String
      {
         var _loc4_:int = param1 / §set function native§;
         param1 %= §set function native§;
         var _loc2_:int = param1 / 3600;
         param1 %= 3600;
         var _loc3_:int = param1 / 60;
         param1 %= 60;
         return §while while break§(_loc4_,_loc2_,_loc3_,param1);
      }
   }
}

