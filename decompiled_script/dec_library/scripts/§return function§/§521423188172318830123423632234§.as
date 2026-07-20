package §return function§
{
   import §521423160112316024123423632234§.§521423119502311963123423632234§;
   import §521423160112316024123423632234§.§521423155772315590123423632234§;
   import §521423160112316024123423632234§.§5214239074239087123423632234§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class §521423188172318830123423632234§ extends §5214239074239087123423632234§
   {
      
      public static var §default for case§:Function;
      
      public static var §try super throw§:Object;
      
      public static var §in switch case§:Number;
      
      public static var §5214231463231476123423632234§:§521423119502311963123423632234§;
      
      public static var §each const var§:§521423119502311963123423632234§;
      
      public static var §case catch throw§:Object = {};
      
      public static var §return catch native§:Function = §521423188172318830123423632234§.§5214239402239415123423632234§;
      
      public static var §521423148102314823123423632234§:Dictionary = new Dictionary(false);
      
      private static var §switch use§:Shape = new Shape();
      
      protected static var §null super super§:Object = {
         "ease":1,
         "delay":1,
         "overwrite":1,
         "onComplete":1,
         "onCompleteParams":1,
         "useFrames":1,
         "runBackwards":1,
         "startAt":1,
         "onUpdate":1,
         "onUpdateParams":1,
         "onStart":1,
         "onStartParams":1,
         "onInit":1,
         "onInitParams":1,
         "onReverseComplete":1,
         "onReverseCompleteParams":1,
         "onRepeat":1,
         "onRepeatParams":1,
         "proxiedEase":1,
         "easeParams":1,
         "yoyo":1,
         "onCompleteListener":1,
         "onUpdateListener":1,
         "onStartListener":1,
         "onReverseCompleteListener":1,
         "onRepeatListener":1,
         "orientToBezier":1,
         "timeScale":1,
         "immediateRender":1,
         "repeat":1,
         "repeatDelay":1,
         "timeline":1,
         "data":1,
         "paused":1,
         "reversed":1
      };
      
      public var §521423167982316811123423632234§:Object;
      
      public var §5214239859239872123423632234§:Object;
      
      public var §521423192632319276123423632234§:Number = 0;
      
      private var §case set final§:§521423155772315590123423632234§;
      
      protected var §521423168132316826123423632234§:Function;
      
      protected var §5214231059231072123423632234§:int;
      
      protected var §else class§:Object;
      
      protected var §52142334823361123423632234§:Boolean;
      
      protected var §include const set§:Boolean;
      
      public function §521423188172318830123423632234§(param1:Object, param2:Number, param3:Object)
      {
         super(param2,param3);
         if(param1 == null)
         {
            throw new Error("Cannot tween a null object.");
         }
         this.§521423167982316811123423632234§ = param1;
         if(this.§521423167982316811123423632234§ is §5214239074239087123423632234§ && Boolean(this.§for var const§.timeScale))
         {
            this.§521423141392314152123423632234§ = 1;
         }
         this.§5214239859239872123423632234§ = {};
         this.§521423168132316826123423632234§ = §return catch native§;
         this.§5214231059231072123423632234§ = Number(param3.overwrite) <= -1 || !§try super throw§.enabled && param3.overwrite > 1 ? int(§try super throw§.mode) : int(param3.overwrite);
         var _loc4_:Array = §521423148102314823123423632234§[param1];
         if(_loc4_ == null)
         {
            §521423148102314823123423632234§[param1] = [this];
         }
         else if(this.§5214231059231072123423632234§ == 1)
         {
            for each(var _loc5_ in _loc4_)
            {
               if(!_loc5_.§default package var§)
               {
                  _loc5_.§5214237740237753123423632234§(false,false);
               }
            }
            §521423148102314823123423632234§[param1] = [this];
         }
         else
         {
            _loc4_[_loc4_.length] = this;
         }
         if(this.§5214236490236503123423632234§ || Boolean(this.§for var const§.immediateRender))
         {
            this.§extends while override§(0,false,true);
         }
      }
      
      public static function §function package return§(param1:Object, param2:Number, param3:Object) : §521423188172318830123423632234§
      {
         if(param3.isGSVars)
         {
            param3 = param3.vars;
         }
         param3.runBackwards = true;
         if(!("immediateRender" in param3))
         {
            param3.immediateRender = true;
         }
         return new §521423188172318830123423632234§(param1,param2,param3);
      }
      
      private static function §5214239402239415123423632234§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return 1 - (param1 = 1 - param1 / param4) * param1;
      }
      
      public static function §5214236119236132123423632234§(param1:Object, param2:Boolean = false, param3:Object = null) : void
      {
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         var _loc4_:§521423188172318830123423632234§ = null;
         if(param1 in §521423148102314823123423632234§)
         {
            _loc5_ = §521423148102314823123423632234§[param1];
            _loc6_ = int(_loc5_.length);
            while(--_loc6_ > -1)
            {
               _loc4_ = _loc5_[_loc6_];
               if(!_loc4_.§default package var§)
               {
                  if(param2)
                  {
                     _loc4_.§catch catch get§(false,false);
                  }
                  if(param3 != null)
                  {
                     _loc4_.§throw catch else§(param3);
                  }
                  if(param3 == null || _loc4_.§case set final§ == null && _loc4_.§521423194042319417123423632234§)
                  {
                     _loc4_.§5214237740237753123423632234§(false,false);
                  }
               }
            }
            if(param3 == null)
            {
               delete §521423148102314823123423632234§[param1];
            }
         }
      }
      
      public static function §5214239070239083123423632234§() : void
      {
         §in switch case§ = 0;
         §5214231463231476123423632234§ = new §521423119502311963123423632234§(null);
         §each const var§ = new §521423119502311963123423632234§(null);
         §5214231463231476123423632234§.§false var while§ = getTimer() * 0.001;
         §each const var§.§false var while§ = §in switch case§;
         §5214231463231476123423632234§.§521423103872310400123423632234§ = true;
         §each const var§.§521423103872310400123423632234§ = true;
         §switch use§.addEventListener("enterFrame",§default while each§,false,0,true);
         if(§try super throw§ == null)
         {
            §try super throw§ = {
               "mode":1,
               "enabled":false
            };
         }
      }
      
      private static function §default while each§(param1:Event = null) : void
      {
         var _loc6_:Dictionary = null;
         var _loc3_:Array = null;
         var _loc5_:int = 0;
         var _loc4_:§521423188172318830123423632234§ = null;
         §5214231463231476123423632234§.§extends while override§((getTimer() * 0.001 - §5214231463231476123423632234§.§false var while§) * §5214231463231476123423632234§.§521423141392314152123423632234§,false,false);
         §in switch case§ += 1;
         §each const var§.§extends while override§((§in switch case§ - §each const var§.§false var while§) * §each const var§.§521423141392314152123423632234§,false,false);
         if(!(§in switch case§ % 60))
         {
            _loc6_ = §521423148102314823123423632234§;
            for(var _loc2_ in _loc6_)
            {
               _loc3_ = _loc6_[_loc2_];
               _loc5_ = int(_loc3_.length);
               while(--_loc5_ > -1)
               {
                  _loc4_ = §521423188172318830123423632234§(_loc3_[_loc5_]);
                  if(_loc4_.§default package var§)
                  {
                     _loc3_.splice(_loc5_,1);
                  }
               }
               if(_loc3_.length == 0)
               {
                  delete _loc6_[_loc2_];
               }
            }
         }
      }
      
      public static function §get switch package§(param1:Object, param2:Number, param3:Object) : §521423188172318830123423632234§
      {
         return new §521423188172318830123423632234§(param1,param2,param3);
      }
      
      override public function §continue set try§() : void
      {
         if(this.§include const set§ && Boolean(this.§case set final§))
         {
            §default for case§("onDisable",this);
         }
         this.§case set final§ = null;
         this.§else class§ = null;
         §native function native§ = this.§521423194042319417123423632234§ = this.§5214236490236503123423632234§ = this.§include const set§ = false;
         this.§5214239859239872123423632234§ = {};
      }
      
      private function §final const implements§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return this.§for var const§.proxiedEase.apply(null,arguments.concat(this.§for var const§.easeParams));
      }
      
      public function §throw catch else§(param1:Object, param2:Boolean = true) : Boolean
      {
         var _loc4_:§521423155772315590123423632234§ = null;
         var _loc5_:Boolean = false;
         if(this.§else class§ == null)
         {
            this.§else class§ = {};
         }
         for(var _loc3_ in param1)
         {
            if(_loc3_ in this.§5214239859239872123423632234§)
            {
               _loc4_ = this.§5214239859239872123423632234§[_loc3_];
               if(_loc4_.name != "_MULTIPLE_")
               {
                  if(_loc4_.§try finally super§)
                  {
                     _loc4_.§try finally super§.§extends super§ = _loc4_.§extends super§;
                  }
                  if(_loc4_.§extends super§)
                  {
                     _loc4_.§extends super§.§try finally super§ = _loc4_.§try finally super§;
                  }
                  else if(this.§case set final§ == _loc4_)
                  {
                     this.§case set final§ = _loc4_.§try finally super§;
                  }
                  if(_loc4_.§5214232321232334123423632234§ && Boolean(_loc4_.§521423167982316811123423632234§.onDisable))
                  {
                     _loc4_.§521423167982316811123423632234§.onDisable();
                     if(_loc4_.§521423167982316811123423632234§.activeDisable)
                     {
                        _loc5_ = true;
                     }
                  }
                  delete this.§5214239859239872123423632234§[_loc3_];
               }
            }
            if(param2 && param1 != this.§else class§)
            {
               this.§else class§[_loc3_] = 1;
            }
         }
         return _loc5_;
      }
      
      override public function §extends while override§(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc5_:Number = this.§5214231210231223123423632234§;
         if(param1 >= this.§5214235387235400123423632234§)
         {
            this.§set package import§ = this.§5214231210231223123423632234§ = this.§5214235387235400123423632234§;
            this.§521423192632319276123423632234§ = 1;
            _loc6_ = !this.§521423113002311313123423632234§;
            if(this.§5214235387235400123423632234§ == 0)
            {
               if((param1 == 0 || §class function in§ < 0) && §class function in§ != param1)
               {
                  param3 = true;
               }
               §class function in§ = param1;
            }
         }
         else if(param1 <= 0)
         {
            this.§set package import§ = this.§5214231210231223123423632234§ = this.§521423192632319276123423632234§ = 0;
            if(param1 < 0)
            {
               this.§5214236490236503123423632234§ = false;
               if(this.§5214235387235400123423632234§ == 0)
               {
                  if(§class function in§ >= 0)
                  {
                     param3 = true;
                     _loc6_ = §class function in§ > 0;
                  }
                  §class function in§ = param1;
               }
            }
            if(this.§521423113002311313123423632234§ && _loc5_ != 0)
            {
               _loc6_ = true;
            }
         }
         else
         {
            this.§set package import§ = this.§5214231210231223123423632234§ = param1;
            this.§521423192632319276123423632234§ = this.§521423168132316826123423632234§(param1,0,1,this.§5214235387235400123423632234§);
         }
         if(this.§5214231210231223123423632234§ == _loc5_ && !param3)
         {
            return;
         }
         if(!this.§521423194042319417123423632234§)
         {
            this.§5214239350239363123423632234§();
            if(!_loc6_ && Boolean(this.§5214231210231223123423632234§))
            {
               this.§521423192632319276123423632234§ = this.§521423168132316826123423632234§(this.§5214231210231223123423632234§,0,1,this.§5214235387235400123423632234§);
            }
         }
         if(!this.§5214236490236503123423632234§ && !this.§521423124222312435123423632234§)
         {
            this.§5214236490236503123423632234§ = true;
         }
         if(_loc5_ == 0 && this.§for var const§.onStart && (this.§5214231210231223123423632234§ != 0 || this.§5214235387235400123423632234§ == 0) && !param2)
         {
            this.§for var const§.onStart.apply(null,this.§for var const§.onStartParams);
         }
         var _loc4_:§521423155772315590123423632234§ = this.§case set final§;
         while(_loc4_)
         {
            _loc4_.§521423167982316811123423632234§[_loc4_.§var for const§] = _loc4_.§else finally continue§ + this.§521423192632319276123423632234§ * _loc4_.§native finally final§;
            _loc4_ = _loc4_.§try finally super§;
         }
         if(§native function native§ && !param2)
         {
            this.§for var const§.onUpdate.apply(null,this.§for var const§.onUpdateParams);
         }
         if(_loc6_ && !this.§default package var§)
         {
            if(this.§52142334823361123423632234§ && Boolean(this.§case set final§))
            {
               §default for case§("onComplete",this);
            }
            §catch catch get§(true,param2);
         }
      }
      
      override public function §5214237740237753123423632234§(param1:Boolean, param2:Boolean = false) : Boolean
      {
         var _loc3_:Array = null;
         if(param1)
         {
            _loc3_ = §521423188172318830123423632234§.§521423148102314823123423632234§[this.§521423167982316811123423632234§];
            if(!_loc3_)
            {
               §521423188172318830123423632234§.§521423148102314823123423632234§[this.§521423167982316811123423632234§] = [this];
            }
            else if(_loc3_.indexOf(this) == -1)
            {
               _loc3_[_loc3_.length] = this;
            }
         }
         super.§5214237740237753123423632234§(param1,param2);
         if(this.§include const set§ && Boolean(this.§case set final§))
         {
            return §default for case§(param1 ? "onEnable" : "onDisable",this);
         }
         return false;
      }
      
      private function §5214239350239363123423632234§() : void
      {
         var _loc3_:* = null;
         var _loc5_:Number = NaN;
         var _loc4_:§521423155772315590123423632234§ = null;
         var _loc2_:Array = null;
         var _loc6_:Boolean = false;
         if(this.§for var const§.onInit)
         {
            this.§for var const§.onInit.apply(null,this.§for var const§.onInitParams);
         }
         if(typeof this.§for var const§.ease == "function")
         {
            this.§521423168132316826123423632234§ = this.§for var const§.ease;
         }
         if(this.§for var const§.easeParams)
         {
            this.§for var const§.proxiedEase = this.§521423168132316826123423632234§;
            this.§521423168132316826123423632234§ = this.§final const implements§;
         }
         this.§case set final§ = null;
         this.§5214239859239872123423632234§ = {};
         for(var _loc1_ in this.§for var const§)
         {
            if(!(_loc1_ in §null super super§ && !(_loc1_ == "timeScale" && this.§521423167982316811123423632234§ is §5214239074239087123423632234§)))
            {
               _loc5_ = Number(this.§521423167982316811123423632234§[_loc1_]);
               this.§case set final§ = new §521423155772315590123423632234§(this.§521423167982316811123423632234§,_loc1_,_loc5_,typeof this.§for var const§[_loc1_] == "number" ? Number(this.§for var const§[_loc1_]) - _loc5_ : Number(this.§for var const§[_loc1_]),_loc1_,false,this.§case set final§);
               this.§5214239859239872123423632234§[_loc1_] = this.§case set final§;
            }
         }
         if(_loc6_)
         {
            §default for case§("onInitAllProps",this);
         }
         if(this.§for var const§.runBackwards)
         {
            _loc4_ = this.§case set final§;
            while(_loc4_)
            {
               _loc4_.§else finally continue§ += _loc4_.§native finally final§;
               _loc4_.§native finally final§ = -_loc4_.§native finally final§;
               _loc4_ = _loc4_.§try finally super§;
            }
         }
         §native function native§ = this.§for var const§.onUpdate != null;
         if(this.§else class§)
         {
            this.§throw catch else§(this.§else class§);
            if(this.§case set final§ == null)
            {
               this.§5214237740237753123423632234§(false,false);
            }
         }
         if(this.§5214231059231072123423632234§ > 1 && this.§case set final§ && (Boolean(_loc2_ = §521423148102314823123423632234§[this.§521423167982316811123423632234§])) && _loc2_.length > 1)
         {
            if(§try super throw§.manageOverwrites(this,this.§5214239859239872123423632234§,_loc2_,this.§5214231059231072123423632234§))
            {
               this.§5214239350239363123423632234§();
            }
         }
         this.§521423194042319417123423632234§ = true;
      }
   }
}

