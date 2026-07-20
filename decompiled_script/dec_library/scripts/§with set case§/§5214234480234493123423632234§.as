package §with set case§
{
   import §521423131682313181123423632234§.§521423123012312314123423632234§;
   import §521423131682313181123423632234§.§521423162962316309123423632234§;
   import §521423131682313181123423632234§.§52142365023663123423632234§;
   import §521423175742317587123423632234§.§521423121382312151123423632234§;
   import §521423178502317863123423632234§.§5214235498235511123423632234§;
   import §5214232595232608123423632234§.§true set function§;
   import flash.utils.Dictionary;
   import §include set false§.§5214234177234190123423632234§;
   import §throw for each§.§521423136102313623123423632234§;
   
   public class §5214234480234493123423632234§ extends §521423136102313623123423632234§
   {
      
      public static const §final use native§:String = "isNew";
      
      public static const §521423171352317148123423632234§:String = "id";
      
      public static const §5214234961234974123423632234§:String = "online";
      
      public static const §each for continue§:String = "isBattle";
      
      public static const §extends function§:String = "uid";
      
      public static const §override catch throw§:String = "availableInvite";
      
      public static const §function catch include§:String = "availableBattle";
      
      public static const §521423990231003123423632234§:String = "rank";
      
      public static var §5214231471231484123423632234§:§true set function§;
      
      public static var §5214238684238697123423632234§:§521423162962316309123423632234§;
      
      public static var §switch while in§:§521423121382312151123423632234§;
      
      private static var §521423134362313449123423632234§:RegExp = /\-|\./;
      
      private static var §super function in§:RegExp = /\*/g;
      
      private var §521423106792310692123423632234§:Function;
      
      private var §const finally override§:Dictionary = new Dictionary();
      
      private var §dynamic package continue§:String;
      
      private var §dynamic for each§:String = "";
      
      private var §get use do§:RegExp;
      
      private var §521423150702315083123423632234§:Object;
      
      private var §521423149482314961123423632234§:Object;
      
      public function §5214234480234493123423632234§()
      {
         super();
      }
      
      private static function §include set final§(param1:String) : RegExp
      {
         param1 = param1.replace(§521423134362313449123423632234§,"\\$&").replace(§super function in§,".*");
         param1 = "^" + param1;
         return new RegExp(param1,"i");
      }
      
      public function §implements function use§(param1:String, param2:Boolean = true) : int
      {
         var _loc3_:int = this.§super while switch§(param1,"isNew",true);
         if(param2 && _loc3_ != -1)
         {
            this.§521423129612312974123423632234§();
         }
         return _loc3_;
      }
      
      public function §521423146272314640123423632234§(param1:String) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = this.§super while switch§(param1,"availableInvite",false);
         if(_loc3_ != -1)
         {
            _loc2_ = super.getItemAt(_loc3_);
            _loc2_.availableInvite = §switch while in§.§static while const§(_loc2_.rank);
            super.§each function in§(_loc2_,_loc3_);
            super.§521423148832314896123423632234§(_loc3_);
         }
      }
      
      private function §5214236792236805123423632234§(param1:Object) : Boolean
      {
         return param1.hasOwnProperty(this.§dynamic package continue§) && param1[this.§dynamic package continue§].search(this.§get use do§) != -1;
      }
      
      public function §default switch function§(param1:String, param2:*, param3:Boolean = false) : int
      {
         var _loc7_:Object = null;
         var _loc5_:* = undefined;
         var _loc6_:int = int(this.§521423135952313608123423632234§);
         var _loc4_:int = 0;
         while(_loc4_ < _loc6_)
         {
            _loc7_ = super.getItemAt(_loc4_);
            if(_loc7_ && _loc7_.hasOwnProperty(param1) && _loc7_[param1] == param2)
            {
               return _loc4_;
            }
            _loc4_++;
         }
         if(param3)
         {
            for(_loc5_ in this.§const finally override§)
            {
               _loc7_ = this.§const finally override§[_loc5_];
               if(_loc7_.hasOwnProperty(param1) && _loc7_[param1] == param2)
               {
                  return _loc4_;
               }
            }
         }
         return -1;
      }
      
      public function §throw while import§() : void
      {
         var _loc1_:Object = null;
         if(this.§dynamic for each§ != "")
         {
            super.removeAll();
            for each(_loc1_ in this.§const finally override§)
            {
               if(this.§5214236792236805123423632234§(_loc1_))
               {
                  super.§52142341723430123423632234§(_loc1_);
               }
            }
         }
         this.§521423129612312974123423632234§();
      }
      
      public function §static use final§(param1:§5214235498235511123423632234§, param2:Boolean = true) : int
      {
         var _loc3_:int = this.§super while switch§(param1.§5214231844231857123423632234§,"isBattle",param1.§5214235919235932123423632234§());
         if(_loc3_ != -1)
         {
            this.§super while switch§(param1.§5214231844231857123423632234§,"availableBattle",param1.§static while const§());
         }
         if(param2 && _loc3_ != -1)
         {
            this.§521423129612312974123423632234§();
         }
         return _loc3_;
      }
      
      override public function getItemAt(param1:uint) : Object
      {
         var _loc2_:Object = super.getItemAt(param1);
         if(this.§521423106792310692123423632234§ != null)
         {
            this.§521423106792310692123423632234§(_loc2_);
         }
         return _loc2_;
      }
      
      public function §521423180262318039123423632234§(param1:Boolean = true) : void
      {
         var _loc2_:Object = null;
         this.§dynamic for each§ = "";
         if(!param1)
         {
            return;
         }
         super.removeAll();
         for each(_loc2_ in this.§const finally override§)
         {
            super.§52142341723430123423632234§(_loc2_);
         }
         this.§521423129612312974123423632234§();
      }
      
      override public function removeAll() : void
      {
         this.§const finally override§ = new Dictionary();
         super.removeAll();
      }
      
      private function §dynamic while var§(param1:§52142365023663123423632234§) : void
      {
         var _loc2_:§521423123012312314123423632234§ = param1.target as §521423123012312314123423632234§;
         this.§super while switch§(_loc2_.uid,"rank",_loc2_.rank);
         this.§521423146272314640123423632234§(_loc2_.uid);
         _loc2_.removeEventListener("UserLabelUpdaterEvent.CHANGE_RANK",§dynamic while var§);
      }
      
      public function §set while true§(param1:§5214234177234190123423632234§, param2:Boolean = true) : int
      {
         var _loc3_:int = this.§super while switch§(param1.§5214231844231857123423632234§,"online",param1.§in function override§);
         if(param2 && _loc3_ != -1)
         {
            this.§521423129612312974123423632234§();
         }
         return _loc3_;
      }
      
      public function §5214231643231656123423632234§() : void
      {
         this.§throw while import§();
         this.§521423129612312974123423632234§();
      }
      
      public function §521423177172317730123423632234§(param1:String, param2:Boolean = true) : int
      {
         var _loc3_:int = this.§super while switch§(param1,"isBattle",false);
         if(_loc3_ != -1)
         {
            this.§super while switch§(param1,"availableBattle",false);
         }
         if(param2 && _loc3_ != -1)
         {
            this.§521423129612312974123423632234§();
         }
         return _loc3_;
      }
      
      public function §521423129612312974123423632234§() : void
      {
         super.sortOn(this.§521423150702315083123423632234§,this.§521423149482314961123423632234§);
      }
      
      public function §521423103982310411123423632234§(param1:String, param2:Boolean = true) : void
      {
         var _loc5_:§5214235498235511123423632234§ = null;
         var _loc4_:§521423123012312314123423632234§ = §5214238684238697123423632234§.§in while in§(param1);
         var _loc3_:Object = {};
         _loc3_.id = param1;
         _loc3_.uid = param1;
         var _loc6_:int = _loc4_.rank;
         _loc3_.rank = _loc6_;
         _loc3_.online = _loc4_.§in function override§;
         _loc3_.isNew = §5214231471231484123423632234§.§521423141892314202123423632234§(param1);
         if(_loc6_ > 0)
         {
            _loc3_.availableInvite = §switch while in§.§static while const§(_loc6_);
         }
         else
         {
            _loc4_.addEventListener("UserLabelUpdaterEvent.CHANGE_RANK",§dynamic while var§);
         }
         _loc3_.isBattle = false;
         _loc3_.availableBattle = false;
         if(_loc4_.§5214232162232175123423632234§())
         {
            _loc5_ = _loc4_.§521423176692317682123423632234§;
            _loc3_.isBattle = _loc5_.§5214235919235932123423632234§();
            _loc3_.availableBattle = _loc5_.§static while const§();
         }
         super.§52142341723430123423632234§(_loc3_);
         this.§const finally override§[param1] = _loc3_;
         if(param2)
         {
            this.§5214231643231656123423632234§();
         }
      }
      
      public function §super while switch§(param1:String, param2:String, param3:Object) : int
      {
         var _loc5_:Object = null;
         var _loc4_:int = this.§default switch function§("id",param1);
         if(_loc4_ != -1)
         {
            _loc5_ = super.getItemAt(_loc4_);
            _loc5_[param2] = param3;
            super.§each function in§(_loc5_,_loc4_);
            super.§521423148832314896123423632234§(_loc4_);
         }
         if(param1 in this.§const finally override§)
         {
            this.§const finally override§[param1][param2] = param3;
         }
         return _loc4_;
      }
      
      override public function sortOn(param1:Object, param2:Object = null) : *
      {
         this.§521423150702315083123423632234§ = param1;
         this.§521423149482314961123423632234§ = param2;
         super.sortOn(this.§521423150702315083123423632234§,this.§521423149482314961123423632234§);
      }
      
      public function §52142387923892123423632234§() : void
      {
         var _loc1_:Object = null;
         var _loc2_:int = int(this.§521423135952313608123423632234§);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = super.getItemAt(_loc3_);
            _loc1_.availableInvite = §switch while in§.§static while const§(_loc1_.rank);
            super.§each function in§(_loc1_,_loc3_);
            super.§521423148832314896123423632234§(_loc3_);
            _loc3_++;
         }
      }
      
      public function get §521423129642312977123423632234§() : Function
      {
         return this.§521423106792310692123423632234§;
      }
      
      public function §package while class§(param1:String, param2:String) : void
      {
         if(param2 == "" && this.§dynamic for each§ != "")
         {
            this.§521423180262318039123423632234§();
            return;
         }
         this.§dynamic package continue§ = param1;
         this.§dynamic for each§ = param2;
         this.§get use do§ = §include set final§(this.§dynamic for each§);
         this.§throw while import§();
      }
      
      public function §switch while each§(param1:String) : void
      {
         var _loc2_:int = this.§default switch function§("id",param1);
         if(_loc2_ >= 0)
         {
            super.§finally super with§(_loc2_);
         }
         delete this.§const finally override§[param1];
      }
      
      public function set §521423129642312977123423632234§(param1:Function) : void
      {
         this.§521423106792310692123423632234§ = param1;
      }
   }
}

