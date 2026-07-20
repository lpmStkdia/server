package §with import§
{
   import §5214232264232277123423632234§.§5214237893237906123423632234§;
   import §5214234814234827123423632234§.§5214236775236788123423632234§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §var with§
   {
      
      private static var count:int;
      
      private static var §521423103842310397123423632234§:Vector.<§5214236775236788123423632234§> = new Vector.<§5214236775236788123423632234§>();
      
      private static var §in function final§:Dictionary = new Dictionary();
      
      public static var §case finally dynamic§:EventDispatcher = new EventDispatcher();
      
      public function §var with§()
      {
         super();
      }
      
      public static function §521423185722318585123423632234§(param1:§5214237893237906123423632234§) : Boolean
      {
         return param1 in §in function final§;
      }
      
      public static function §set var dynamic§(param1:§5214236775236788123423632234§) : void
      {
         §521423103842310397123423632234§[§521423103842310397123423632234§.length] = param1;
         param1.§5214233325233338123423632234§();
      }
      
      public static function §set const case§(param1:§5214237893237906123423632234§) : void
      {
         if(§521423185722318585123423632234§(param1))
         {
            §case finally dynamic§.dispatchEvent(new §function package import§("ClanNotificationEvent.REMOVE_INCOMING_NOTIFICATION",param1));
         }
      }
      
      public static function §try for null§() : void
      {
         §521423103842310397123423632234§ = new Vector.<§5214236775236788123423632234§>();
         §in function final§ = new Dictionary();
         count = 0;
      }
      
      private static function §true const native§(param1:Vector.<§5214236775236788123423632234§>) : void
      {
         for each(var _loc2_ in param1)
         {
            _loc2_.§5214233325233338123423632234§();
         }
      }
      
      public static function §521423115592311572123423632234§() : int
      {
         return count;
      }
      
      public static function §import finally function§(param1:§5214237893237906123423632234§) : void
      {
         if(!(param1 in §in function final§))
         {
            count = count + 1;
            §in function final§[param1] = true;
            §true const native§(§521423103842310397123423632234§);
         }
      }
      
      public static function §521423122632312276123423632234§(param1:Vector.<§5214237893237906123423632234§>) : void
      {
         count = 0;
         for each(var _loc2_ in param1)
         {
            count = count + 1;
            §in function final§[_loc2_] = true;
         }
         §true const native§(§521423103842310397123423632234§);
      }
      
      public static function §52142320123214123423632234§(param1:§5214236775236788123423632234§) : void
      {
         var _loc2_:Number = §521423103842310397123423632234§.indexOf(param1);
         if(_loc2_ > 0)
         {
            §521423103842310397123423632234§.removeAt(_loc2_);
         }
      }
      
      public static function §5214235829235842123423632234§(param1:§5214237893237906123423632234§) : void
      {
         if(param1 in §in function final§)
         {
            count = count - 1;
            delete §in function final§[param1];
            §true const native§(§521423103842310397123423632234§);
         }
      }
   }
}

