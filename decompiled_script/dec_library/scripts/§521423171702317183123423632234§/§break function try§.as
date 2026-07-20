package §521423171702317183123423632234§
{
   import §5214235942235955123423632234§.§5214232114232127123423632234§;
   import §5214237746237759123423632234§.§case switch else§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   
   public class §break function try§ extends EventDispatcher implements §521423177412317754123423632234§
   {
      
      public static var §521423181972318210123423632234§:§case switch else§;
      
      private var §for switch dynamic§:Dictionary = new Dictionary();
      
      private var §5214238946238959123423632234§:Function;
      
      private var §5214234195234208123423632234§:Vector.<§5214232114232127123423632234§>;
      
      private var §import use import§:int;
      
      private var §5214235869235882123423632234§:Boolean;
      
      private var §521423172442317257123423632234§:Boolean;
      
      private var §null while implements§:String;
      
      private var §for function while§:int;
      
      private var §catch finally extends§:Boolean;
      
      public function §break function try§()
      {
         super();
      }
      
      public function set §5214231368231381123423632234§(param1:Boolean) : void
      {
         this.§521423172442317257123423632234§ = param1;
      }
      
      public function set §extends function false§(param1:String) : void
      {
         this.§null while implements§ = param1;
      }
      
      public function get §extends function false§() : String
      {
         return this.§null while implements§;
      }
      
      public function set §521423144372314450123423632234§(param1:Boolean) : void
      {
         this.§catch finally extends§ = param1;
         dispatchEvent(new §5214233630233643123423632234§("ClanUserInfoEvent.UPDATE_GIVE_BONUSES_CLAN"));
      }
      
      public function set §var switch include§(param1:int) : void
      {
         this.§import use import§ = param1;
         this.§for function while§ = getTimer();
         if(this.§import use import§ > 0)
         {
            setTimeout(this.§each case§,this.§import use import§ * 1000);
         }
      }
      
      public function get §521423144372314450123423632234§() : Boolean
      {
         return this.§catch finally extends§;
      }
      
      public function §5214232962232975123423632234§() : void
      {
         dispatchEvent(new §5214233630233643123423632234§("ClanUserInfoEvent.ON_JOIN_CLAN"));
      }
      
      public function §5214231834231847123423632234§(param1:§5214232114232127123423632234§) : Boolean
      {
         if(this.§521423155732315586123423632234§ == null)
         {
            return false;
         }
         for each(var _loc2_ in this.§521423155732315586123423632234§)
         {
            if(_loc2_.value == param1.value)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §use var extends§(param1:String) : Boolean
      {
         var _loc2_:§package while null§ = this.§5214231224231237123423632234§(param1);
         var _loc3_:§package while null§ = this.§5214231224231237123423632234§(§521423181972318210123423632234§.§5214231844231857123423632234§);
         if(!_loc3_.§null package var§)
         {
            return false;
         }
         if(_loc2_ != null && _loc3_ != null)
         {
            return _loc2_.§extends function false§ == _loc3_.§extends function false§;
         }
         return false;
      }
      
      public function get §521423155732315586123423632234§() : Vector.<§5214232114232127123423632234§>
      {
         return this.§5214234195234208123423632234§;
      }
      
      public function §with catch import§() : void
      {
         dispatchEvent(new §5214233630233643123423632234§("ClanUserInfoEvent.ON_LEAVE_CLAN"));
      }
      
      public function get §static for override§() : Function
      {
         return this.§5214238946238959123423632234§;
      }
      
      public function set §521423155732315586123423632234§(param1:Vector.<§5214232114232127123423632234§>) : void
      {
         this.§5214234195234208123423632234§ = param1;
      }
      
      public function §5214231224231237123423632234§(param1:String) : §package while null§
      {
         return param1 in this.§for switch dynamic§ ? this.§for switch dynamic§[param1] : null;
      }
      
      public function §5214232914232927123423632234§(param1:§package while null§) : void
      {
         this.§for switch dynamic§[param1.§5214231844231857123423632234§] = param1;
      }
      
      public function get §5214231368231381123423632234§() : Boolean
      {
         return this.§521423172442317257123423632234§;
      }
      
      public function set §521423472360123423632234§(param1:Boolean) : void
      {
         this.§5214235869235882123423632234§ = param1;
      }
      
      public function get §var switch include§() : int
      {
         return this.§import use import§ - (getTimer() - this.§for function while§) / 1000;
      }
      
      private function §each case§() : void
      {
         dispatchEvent(new §function super final§("RestrictionJoinClanEvent.UPDATE"));
      }
      
      public function get §521423472360123423632234§() : Boolean
      {
         return this.§5214235869235882123423632234§;
      }
      
      public function set §static for override§(param1:Function) : void
      {
         this.§5214238946238959123423632234§ = param1;
      }
   }
}

