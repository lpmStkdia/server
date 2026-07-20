package §native function override§
{
   public class §521423159212315934123423632234§
   {
      
      public static const §native while throw§:int = 0;
      
      public static const §dynamic use set§:int = 1;
      
      private var §set const false§:int;
      
      private var §function super null§:int;
      
      protected var §in var static§:Vector.<Vector.<Number>>;
      
      public function §521423159212315934123423632234§(param1:int, param2:int)
      {
         super();
         this.§each while continue§(param1,param2);
      }
      
      public function §get const while§(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:Number = NaN;
         if(!this.§in var static§)
         {
            return false;
         }
         while(_loc3_ < this.§function super null§)
         {
            _loc4_ = 0;
            while(_loc4_ < this.§set const false§)
            {
               _loc2_ = 0;
               _loc2_ = this.§in var static§[_loc3_][_loc4_] * param1;
               this.§in var static§[_loc3_][_loc4_] = _loc2_;
               _loc4_++;
            }
            _loc3_++;
         }
         return true;
      }
      
      private function §each while continue§(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1 > 0 && param2 > 0)
         {
            this.§set const false§ = param1;
            this.§function super null§ = param2;
            this.§in var static§ = new Vector.<Vector.<Number>>(param2);
            while(_loc3_ < param2)
            {
               this.§in var static§[_loc3_] = new Vector.<Number>(param1);
               _loc4_ = 0;
               while(_loc4_ < param2)
               {
                  this.§in var static§[_loc3_][_loc4_] = 0;
                  _loc4_++;
               }
               _loc3_++;
            }
         }
      }
      
      private function §521423100412310054123423632234§() : void
      {
         this.§in var static§ = null;
      }
      
      public function §default super class§(param1:int, param2:int) : Number
      {
         var _loc3_:Number = 0;
         if(param1 >= 0 && param1 < this.§function super null§ && param2 >= 0 && param2 <= this.§set const false§)
         {
            _loc3_ = this.§in var static§[param1][param2];
         }
         return _loc3_;
      }
      
      public function §5214233489233502123423632234§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this.§in var static§)
         {
            while(_loc1_ < this.§function super null§)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§set const false§)
               {
                  if(_loc1_ == _loc2_)
                  {
                     this.§in var static§[_loc1_][_loc2_] = 1;
                  }
                  else
                  {
                     this.§in var static§[_loc1_][_loc2_] = 0;
                  }
                  _loc2_++;
               }
               _loc1_++;
            }
         }
      }
      
      public function §5214231658231671123423632234§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this.§in var static§)
         {
            while(_loc1_ < this.§function super null§)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§set const false§)
               {
                  this.§in var static§[_loc1_][_loc2_] = 0;
                  _loc2_++;
               }
               _loc1_++;
            }
         }
      }
      
      public function §each package class§() : Number
      {
         return this.§set const false§;
      }
      
      public function §5214232658232671123423632234§() : Number
      {
         return this.§function super null§;
      }
      
      public function §switch for extends§(param1:§521423159212315934123423632234§) : Boolean
      {
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:Number = NaN;
         if(!this.§in var static§ || !param1)
         {
            return false;
         }
         var _loc4_:int = param1.§5214232658232671123423632234§();
         var _loc6_:int = param1.§each package class§();
         if(this.§set const false§ != _loc6_ || this.§function super null§ != _loc4_)
         {
            return false;
         }
         while(_loc3_ < this.§function super null§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§set const false§)
            {
               _loc2_ = 0;
               _loc2_ = this.§in var static§[_loc3_][_loc5_] + param1.§default super class§(_loc3_,_loc5_);
               this.§in var static§[_loc3_][_loc5_] = _loc2_;
               _loc5_++;
            }
            _loc3_++;
         }
         return true;
      }
      
      public function §use for const§(param1:§521423159212315934123423632234§, param2:int = 0) : Boolean
      {
         var _loc3_:§521423159212315934123423632234§ = null;
         var _loc5_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc4_:Number = NaN;
         if(!this.§in var static§ || !param1)
         {
            return false;
         }
         var _loc6_:int = param1.§5214232658232671123423632234§();
         var _loc10_:int = param1.§each package class§();
         if(param2 == 1)
         {
            if(this.§set const false§ != _loc6_)
            {
               return false;
            }
            _loc3_ = new §521423159212315934123423632234§(_loc10_,this.§function super null§);
            _loc5_ = 0;
            while(_loc5_ < this.§function super null§)
            {
               _loc7_ = 0;
               while(_loc7_ < _loc10_)
               {
                  _loc4_ = 0;
                  _loc8_ = 0;
                  _loc9_ = 0;
                  while(_loc8_ < Math.max(this.§function super null§,_loc6_) && _loc9_ < Math.max(this.§set const false§,_loc10_))
                  {
                     _loc4_ += param1.§default super class§(_loc8_,_loc7_) * this.§in var static§[_loc5_][_loc9_];
                     _loc8_++;
                     _loc9_++;
                  }
                  _loc3_.§521423114832311496123423632234§(_loc5_,_loc7_,_loc4_);
                  _loc7_++;
               }
               _loc5_++;
            }
            this.§521423100412310054123423632234§();
            this.§each while continue§(_loc10_,this.§function super null§);
            _loc5_ = 0;
            while(_loc5_ < _loc6_)
            {
               _loc7_ = 0;
               while(_loc7_ < this.§set const false§)
               {
                  this.§in var static§[_loc5_][_loc7_] = _loc3_.§default super class§(_loc5_,_loc7_);
                  _loc7_++;
               }
               _loc5_++;
            }
         }
         else
         {
            if(this.§function super null§ != _loc10_)
            {
               return false;
            }
            _loc3_ = new §521423159212315934123423632234§(this.§set const false§,_loc6_);
            _loc5_ = 0;
            while(_loc5_ < _loc6_)
            {
               _loc7_ = 0;
               while(_loc7_ < this.§set const false§)
               {
                  _loc4_ = 0;
                  _loc8_ = 0;
                  _loc9_ = 0;
                  while(_loc8_ < Math.max(_loc6_,this.§function super null§) && _loc9_ < Math.max(_loc10_,this.§set const false§))
                  {
                     _loc4_ += this.§in var static§[_loc8_][_loc7_] * param1.§default super class§(_loc5_,_loc9_);
                     _loc8_++;
                     _loc9_++;
                  }
                  _loc3_.§521423114832311496123423632234§(_loc5_,_loc7_,_loc4_);
                  _loc7_++;
               }
               _loc5_++;
            }
            this.§521423100412310054123423632234§();
            this.§each while continue§(this.§set const false§,_loc6_);
            _loc5_ = 0;
            while(_loc5_ < _loc6_)
            {
               _loc7_ = 0;
               while(_loc7_ < this.§set const false§)
               {
                  this.§in var static§[_loc5_][_loc7_] = _loc3_.§default super class§(_loc5_,_loc7_);
                  _loc7_++;
               }
               _loc5_++;
            }
         }
         return true;
      }
      
      public function §521423114832311496123423632234§(param1:int, param2:int, param3:Number) : void
      {
         if(param1 >= 0 && param1 < this.§function super null§ && param2 >= 0 && param2 <= this.§set const false§)
         {
            this.§in var static§[param1][param2] = param3;
         }
      }
   }
}

