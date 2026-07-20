package §521423171202317133123423632234§
{
   import §else for implements§.§function finally finally§;
   import flash.events.EventDispatcher;
   import §override while finally§.§521423138702313883123423632234§;
   import §with finally return§.§521423149192314932123423632234§;
   
   public class §521423186342318647123423632234§ extends EventDispatcher implements §class function case§
   {
      
      public static var §521423106022310615123423632234§:§521423149192314932123423632234§;
      
      private static const §52142336623379123423632234§:String = "NEW_ITEM_NOTIFICATION_IN_CATEGORY";
      
      public function §521423186342318647123423632234§()
      {
         super();
      }
      
      private function §const while override§(param1:§521423138702313883123423632234§) : String
      {
         return "NEW_ITEM_NOTIFICATION_IN_CATEGORY" + param1.value;
      }
      
      private function §in var do§(param1:§521423138702313883123423632234§) : void
      {
         §521423106022310615123423632234§.§try var while§().setProperty(this.§const while override§(param1),true);
      }
      
      public function §do while in§(param1:§521423138702313883123423632234§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:String = this.§const while override§(param1);
         if(Reflect.hasField(§521423106022310615123423632234§.§try var while§().data,_loc3_))
         {
            _loc2_ = Reflect.field(§521423106022310615123423632234§.§try var while§().data,_loc3_);
         }
         return _loc2_;
      }
      
      public function §5214236380236393123423632234§(param1:§521423138702313883123423632234§) : void
      {
         this.§in var do§(param1);
      }
      
      public function §521423186282318641123423632234§(param1:Vector.<§function finally finally§>) : void
      {
         var _loc3_:int = 0;
         var _loc4_:§521423138702313883123423632234§ = null;
         var _loc2_:int = int(param1.length);
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1[_loc3_].§5214233912233925123423632234§;
            if(!this.§do while in§(_loc4_))
            {
               this.§in var do§(_loc4_);
            }
            _loc3_++;
         }
         dispatchEvent(new §521423126112312624123423632234§("NotificationGarageCategoriesEvent.NOTIFICATION_CHANGE"));
      }
      
      public function §521423104742310487123423632234§(param1:§521423138702313883123423632234§) : void
      {
         §521423106022310615123423632234§.§try var while§().setProperty(this.§const while override§(param1),false);
      }
   }
}

