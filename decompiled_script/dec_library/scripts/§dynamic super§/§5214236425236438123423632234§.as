package §dynamic super§
{
   import §521423165552316568123423632234§.§default var function§;
   import §5214239533239546123423632234§.§else var§;
   import §continue switch case§.§dynamic const break§;
   import §continue switch case§.§each var else§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import §with finally return§.§521423149192314932123423632234§;
   
   public class §5214236425236438123423632234§ implements §5214239230239243123423632234§
   {
      
      private var §implements switch in§:SharedObject;
      
      private var stage:Stage;
      
      private var §5214231333231346123423632234§:DisplayObjectContainer;
      
      private var §521423124372312450123423632234§:Sprite;
      
      private var §default package with§:Dictionary;
      
      private var §import set static§:Vector.<§native package else§>;
      
      private var §5214235546235559123423632234§:Boolean;
      
      private var §for package function§:Vector.<Timer>;
      
      private var §continue return§:Boolean;
      
      private var §521423124612312474123423632234§:Dictionary;
      
      private var §while finally else§:Dictionary = new Dictionary();
      
      private var §521423116492311662123423632234§:Vector.<ShowedHelperInfo> = new Vector.<ShowedHelperInfo>();
      
      private var §super const import§:Array;
      
      private var §if while static§:Boolean;
      
      private const §true for case§:int = 86400000;
      
      private const §static set set§:int = 5;
      
      public function §5214236425236438123423632234§()
      {
         super();
         var _loc1_:§default var function§ = §default var function§.§import use include§();
         var _loc3_:§each var else§ = §each var else§(_loc1_.§5214231532231545123423632234§(§each var else§));
         this.stage = _loc3_.stage;
         this.§5214231333231346123423632234§ = _loc3_.§false const each§;
         this.§521423124372312450123423632234§ = new Sprite();
         this.§default package with§ = new Dictionary();
         this.§import set static§ = new Vector.<§native package else§>();
         this.§for package function§ = new Vector.<Timer>();
         var _loc2_:§521423149192314932123423632234§ = §521423149192314932123423632234§(_loc1_.§5214231532231545123423632234§(§521423149192314932123423632234§));
         this.§implements switch in§ = _loc2_.§try var while§();
         if(this.§implements switch in§.data.helperShowNum as Array == null)
         {
            this.§implements switch in§.data.helperShowNum = [];
         }
         if(this.§implements switch in§.data.hidedHelpers as Array == null)
         {
            this.§implements switch in§.data.hidedHelpers = [];
         }
         this.§super const import§ = this.§implements switch in§.data.hidedHelpers as Array;
         this.§5214235546235559123423632234§ = int(this.§implements switch in§.data.userRank) >= 6;
         this.§521423124612312474123423632234§ = new Dictionary();
         this.stage.addEventListener("resize",this.§521423174032317416123423632234§);
      }
      
      private function §5214233256233269123423632234§(param1:String, param2:int) : §native package else§
      {
         var _loc3_:Dictionary = this.§default package with§[param1];
         if(_loc3_ == null)
         {
            return null;
         }
         return _loc3_[param2];
      }
      
      private function §5214237442237455123423632234§(param1:String, param2:int) : Boolean
      {
         var _loc3_:Date = new Date();
         for each(var _loc4_ in this.§super const import§)
         {
            if(_loc4_.groupKey == param1 && _loc4_.helperId == param2)
            {
               return _loc3_.time - Number(_loc4_.date.time) < 86400000 || int(_loc4_.count) >= 5;
            }
         }
         return false;
      }
      
      public function §521423132502313263123423632234§(param1:String, param2:int, param3:Boolean = false) : void
      {
         var _loc8_:Array = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc5_:Object = null;
         if(this.§5214235546235559123423632234§ || this.§5214237442237455123423632234§(param1,param2))
         {
            return;
         }
         var _loc4_:§native package else§ = this.§5214233256233269123423632234§(param1,param2);
         if(_loc4_ == null)
         {
            return;
         }
         if(!this.§5214231333231346123423632234§.contains(this.§521423124372312450123423632234§))
         {
            this.§5214231333231346123423632234§.addChild(this.§521423124372312450123423632234§);
         }
         if(param3 || _loc4_.§5214235389235402123423632234§ == -1 || _loc4_.§5214234070234083123423632234§ < _loc4_.§5214235389235402123423632234§)
         {
            if(!this.§521423124372312450123423632234§.contains(_loc4_))
            {
               ++_loc4_.§5214234070234083123423632234§;
               this.§521423124612312474123423632234§[_loc4_] = new ShowedHelperInfo(param1,param2,param3);
               _loc8_ = this.§implements switch in§.data.helperShowNum as Array;
               if(_loc8_ == null)
               {
                  _loc8_ = [];
               }
               _loc6_ = -1;
               while(_loc7_ < _loc8_.length)
               {
                  if(_loc8_[_loc7_].hasOwnProperty("groupKey") && _loc8_[_loc7_].groupKey == param1)
                  {
                     _loc6_ = _loc7_;
                  }
                  _loc7_++;
               }
               if(_loc6_ == -1)
               {
                  _loc5_ = {};
                  _loc5_.groupKey = param1;
                  _loc5_.helper = [];
                  _loc5_.helper[param2] = _loc4_.§5214234070234083123423632234§;
                  _loc8_[_loc8_.length] = _loc5_;
               }
               else
               {
                  _loc8_[_loc6_].helper[param2] = _loc4_.§5214234070234083123423632234§;
               }
               this.§implements switch in§.data.helperShowNum = _loc8_;
               this.§521423124372312450123423632234§.addChild(_loc4_);
               _loc4_.§continue use const§(_loc4_.§5214239166239179123423632234§);
               _loc4_.align(this.stage.stageWidth / §dynamic const break§.§5214231303231316123423632234§,this.stage.stageHeight / §dynamic const break§.§5214231303231316123423632234§);
               _loc4_.addEventListener("mouseDown",this.§include const finally§);
               if(!param3)
               {
                  this.§5214234481234494123423632234§(_loc4_);
               }
            }
         }
      }
      
      public function §5214239698239711123423632234§() : void
      {
         var _loc1_:§native package else§ = null;
         if(this.§521423124372312450123423632234§ != null)
         {
            while(this.§521423124372312450123423632234§.numChildren != 0)
            {
               _loc1_ = this.§521423124372312450123423632234§.getChildAt(0) as §native package else§;
               this.§5214239324239337123423632234§(_loc1_.§521423144622314475123423632234§,_loc1_.id);
            }
            if(this.§521423124372312450123423632234§.numChildren == 0 && this.§5214231333231346123423632234§.contains(this.§521423124372312450123423632234§))
            {
               this.§5214231333231346123423632234§.removeChild(this.§521423124372312450123423632234§);
            }
         }
      }
      
      private function §521423125062312519123423632234§(param1:§native package else§) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Date = new Date();
         var _loc3_:Boolean = false;
         for each(var _loc6_ in this.§super const import§)
         {
            if(_loc6_.groupKey == param1.§521423144622314475123423632234§ && _loc6_.helperId == param1.id)
            {
               _loc6_.date = _loc5_;
               _loc6_.count = int(_loc6_.count) + 1;
               _loc3_ = true;
            }
         }
         if(!_loc3_)
         {
            _loc4_ = {};
            _loc4_.groupKey = param1.§521423144622314475123423632234§;
            _loc4_.helperId = param1.id;
            _loc4_.date = _loc5_;
            _loc4_.count = 0;
            this.§super const import§[§super const import§.length] = _loc4_;
         }
         for each(var _loc2_ in this.§super const import§)
         {
         }
      }
      
      private function §5214234481234494123423632234§(param1:§native package else§) : void
      {
         var _loc2_:§5214235801235814123423632234§ = new §5214235801235814123423632234§(param1.§5214236704236717123423632234§,1);
         _loc2_.§false const var§ = param1;
         param1.§throw static§ = _loc2_;
         _loc2_.addEventListener("timerComplete",this.§get use break§);
         this.§for package function§[this.§for package function§.length] = _loc2_;
         _loc2_.start();
      }
      
      public function §each package super§(param1:String, param2:int, param3:Boolean = false) : void
      {
         if(this.§if while static§)
         {
            this.§521423116492311662123423632234§[§521423116492311662123423632234§.length] = new ShowedHelperInfo(param1,param2,param3);
         }
         else
         {
            this.§521423132502313263123423632234§(param1,param2,param3);
         }
      }
      
      public function §true package default§() : void
      {
         this.§while finally else§ = new Dictionary();
         for(var _loc1_ in this.§521423124612312474123423632234§)
         {
            this.§while finally else§[_loc1_] = this.§521423124612312474123423632234§[_loc1_];
         }
      }
      
      private function §try function set§(param1:§native package else§) : void
      {
         var _loc3_:int = 0;
         if(param1 == null)
         {
            return;
         }
         if(this.§521423124372312450123423632234§.contains(param1))
         {
            this.§521423124372312450123423632234§.removeChild(param1);
         }
         param1.removeEventListener("mouseDown",this.§include const finally§);
         var _loc2_:§5214235801235814123423632234§ = param1.§throw static§;
         if(_loc2_ != null)
         {
            _loc2_.stop();
            _loc3_ = this.§for package function§.indexOf(_loc2_);
            if(_loc3_ != -1)
            {
               this.§for package function§.removeAt(_loc3_);
            }
         }
      }
      
      public function §each while final§(param1:§native package else§) : void
      {
         this.§5214239324239337123423632234§(param1.§521423144622314475123423632234§,param1.id);
         this.§521423125062312519123423632234§(param1);
      }
      
      private function §class var else§(param1:MouseEvent) : void
      {
         this.§5214233570233583123423632234§();
         param1.stopPropagation();
      }
      
      public function §5214235683235696123423632234§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:§native package else§ = null;
         var _loc3_:int = 0;
         if(!this.§5214231333231346123423632234§.contains(this.§521423124372312450123423632234§))
         {
            this.§5214231333231346123423632234§.addChild(this.§521423124372312450123423632234§);
         }
         while(_loc2_ < this.§import set static§.length)
         {
            _loc1_ = this.§import set static§[_loc2_];
            if(!this.§521423124372312450123423632234§.contains(_loc1_))
            {
               this.§521423124372312450123423632234§.addChild(_loc1_);
               _loc1_.§continue use const§(_loc1_.§5214239166239179123423632234§);
               _loc1_.align(this.stage.stageWidth / §dynamic const break§.§5214231303231316123423632234§,this.stage.stageHeight / §dynamic const break§.§5214231303231316123423632234§);
            }
            else
            {
               _loc3_ = this.§for package function§.indexOf(_loc1_.§throw static§);
               if(_loc3_ != -1)
               {
                  this.§for package function§[_loc3_].stop();
                  this.§for package function§.removeAt(_loc3_);
               }
            }
            this.§521423124612312474123423632234§[_loc1_] = new ShowedHelperInfo(_loc1_.§521423144622314475123423632234§,_loc1_.id,true);
            _loc2_++;
         }
         if(!this.§continue return§)
         {
            this.§continue return§ = true;
            this.stage.addEventListener("click",this.§class var else§,true);
            this.stage.addEventListener("keyUp",this.§dynamic finally§,false,-1);
         }
      }
      
      public function §5214233570233583123423632234§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:§native package else§ = null;
         var _loc3_:int = 0;
         while(_loc2_ < this.§import set static§.length)
         {
            _loc1_ = this.§import set static§[_loc2_];
            _loc3_ = this.§for package function§.indexOf(_loc1_.§throw static§);
            if(_loc3_ != -1)
            {
               this.§for package function§[_loc3_].stop();
               this.§for package function§.removeAt(_loc3_);
            }
            if(this.§521423124372312450123423632234§.contains(_loc1_))
            {
               this.§521423124372312450123423632234§.removeChild(_loc1_);
            }
            if(this.§521423124612312474123423632234§[_loc1_] != null)
            {
               delete this.§521423124612312474123423632234§[_loc1_];
            }
            _loc2_++;
         }
         this.§521423115782311591123423632234§();
         if(this.§continue return§)
         {
            this.§continue return§ = false;
            this.stage.removeEventListener("click",this.§class var else§,true);
            this.stage.removeEventListener("keyUp",this.§dynamic finally§);
         }
      }
      
      private function §521423115782311591123423632234§() : void
      {
         if(this.§521423124372312450123423632234§.numChildren == 0 && this.§5214231333231346123423632234§.contains(this.§521423124372312450123423632234§))
         {
            this.§5214231333231346123423632234§.removeChild(this.§521423124372312450123423632234§);
         }
      }
      
      public function §false finally with§() : void
      {
         this.§if while static§ = false;
         for each(var _loc1_ in this.§521423116492311662123423632234§)
         {
            this.§521423132502313263123423632234§(_loc1_.groupKey,_loc1_.helperId,_loc1_.force);
         }
         this.§521423116492311662123423632234§ = new Vector.<ShowedHelperInfo>();
      }
      
      private function §dynamic finally§(param1:KeyboardEvent) : void
      {
         if(§else var§.§case super in§(param1.keyCode))
         {
            param1.stopImmediatePropagation();
            this.§5214233570233583123423632234§();
         }
      }
      
      private function §include const finally§(param1:MouseEvent) : void
      {
         var _loc2_:§native package else§ = null;
         if(param1.target is §native package else§)
         {
            _loc2_ = param1.target as §native package else§;
            this.§5214239324239337123423632234§(_loc2_.§521423144622314475123423632234§,_loc2_.id);
            this.§521423125062312519123423632234§(_loc2_);
            param1.stopPropagation();
         }
      }
      
      public function §5214237423237436123423632234§() : void
      {
         this.§if while static§ = true;
      }
      
      private function §get use break§(param1:TimerEvent) : void
      {
         var _loc2_:§5214235801235814123423632234§ = param1.target as §5214235801235814123423632234§;
         var _loc3_:§native package else§ = _loc2_.§false const var§;
         this.§5214239324239337123423632234§(_loc3_.§521423144622314475123423632234§,_loc3_.id);
      }
      
      public function §default var final§(param1:String, param2:int, param3:§native package else§, param4:Boolean) : void
      {
         var _loc8_:int = 0;
         var _loc6_:Object = null;
         var _loc5_:Dictionary = this.§default package with§[param1];
         if(_loc5_ == null)
         {
            _loc5_ = new Dictionary();
            this.§default package with§[param1] = _loc5_;
         }
         _loc5_[param2] = param3;
         if(param4)
         {
            this.§import set static§[§import set static§.length] = param3;
         }
         var _loc10_:Array = this.§implements switch in§.data.helperShowNum as Array;
         if(_loc10_ == null)
         {
            _loc10_ = [];
         }
         var _loc7_:int = -1;
         _loc8_ = 0;
         while(_loc8_ < _loc10_.length)
         {
            if(_loc10_[_loc8_].hasOwnProperty("groupKey") && _loc10_[_loc8_].groupKey == param1)
            {
               _loc7_ = _loc8_;
            }
            _loc8_++;
         }
         if(_loc7_ == -1)
         {
            _loc6_ = {};
            _loc6_.groupKey = param1;
            _loc6_.helper = [];
            _loc10_[_loc10_.length] = _loc6_;
            _loc7_ = _loc10_.length - 1;
         }
         var _loc9_:Object = _loc10_[_loc7_];
         if(_loc9_.helper == null)
         {
            _loc9_.helper = [];
         }
         if(_loc9_.helper[param2] == null)
         {
            _loc9_.helper[param2] = param3.§5214234070234083123423632234§;
         }
         else
         {
            param3.§5214234070234083123423632234§ = _loc9_.helper[param2];
         }
         this.§implements switch in§.data.helperShowNum = _loc10_;
         param3.id = param2;
         param3.§521423144622314475123423632234§ = param1;
      }
      
      public function §521423131892313202123423632234§(param1:String, param2:int) : void
      {
         var _loc3_:Dictionary = this.§default package with§[param1];
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:§native package else§ = _loc3_[param2];
         if(_loc4_ == null)
         {
            return;
         }
         this.§try function set§(_loc4_);
         delete _loc3_[param2];
         var _loc5_:int = this.§import set static§.indexOf(_loc4_);
         if(_loc5_ >= 0)
         {
            this.§import set static§.removeAt(_loc5_);
         }
      }
      
      public function §const continue§() : void
      {
         for(var _loc1_ in this.§while finally else§)
         {
            this.§521423132502313263123423632234§(this.§while finally else§[_loc1_].groupKey,this.§while finally else§[_loc1_].helperId,this.§while finally else§[_loc1_].force);
         }
         this.§while finally else§ = new Dictionary();
      }
      
      private function §521423174032317416123423632234§(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc2_:§native package else§ = null;
         if(this.§5214231333231346123423632234§.contains(this.§521423124372312450123423632234§))
         {
            while(_loc3_ < this.§521423124372312450123423632234§.numChildren)
            {
               _loc2_ = this.§521423124372312450123423632234§.getChildAt(_loc3_) as §native package else§;
               if(_loc2_ != null)
               {
                  _loc2_.align(this.stage.stageWidth / §dynamic const break§.§5214231303231316123423632234§,this.stage.stageHeight / §dynamic const break§.§5214231303231316123423632234§);
               }
               _loc3_++;
            }
         }
      }
      
      public function §5214239324239337123423632234§(param1:String, param2:int) : void
      {
         if(this.§521423124612312474123423632234§[this.§5214233256233269123423632234§(param1,param2)] != null)
         {
            delete this.§521423124612312474123423632234§[this.§5214233256233269123423632234§(param1,param2)];
         }
         this.§try function set§(this.§5214233256233269123423632234§(param1,param2));
         this.§521423115782311591123423632234§();
      }
   }
}

class ShowedHelperInfo
{
   
   public var groupKey:String;
   
   public var helperId:int;
   
   public var force:Boolean = false;
   
   public function ShowedHelperInfo(param1:String, param2:int, param3:Boolean)
   {
      super();
      this.groupKey = param1;
      this.helperId = param2;
      this.force = param3;
   }
}
