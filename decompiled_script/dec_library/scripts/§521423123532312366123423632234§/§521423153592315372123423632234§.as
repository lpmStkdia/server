package §521423123532312366123423632234§
{
   import §521423122282312241123423632234§.§catch const break§;
   import §521423122282312241123423632234§.§switch use in§;
   
   public class §521423153592315372123423632234§
   {
      
      private const §with finally continue§:Vector.<§switch use in§> = new Vector.<§switch use in§>();
      
      public function §521423153592315372123423632234§()
      {
         super();
      }
      
      private function §521423121832312196123423632234§(param1:int) : void
      {
         var _loc2_:int = this.§with finally continue§.length - 1;
         this.§with finally continue§[param1] = this.§with finally continue§[_loc2_];
         this.§with finally continue§.length = _loc2_;
      }
      
      public function §52142367423687123423632234§() : void
      {
         this.§with finally continue§.length = 0;
      }
      
      private function §521423147282314741123423632234§(param1:Vector.<§catch const break§>, param2:§switch use in§) : Boolean
      {
         return param1.indexOf(param2.§override set false§) >= 0 || param1.indexOf(param2.§static set finally§) >= 0;
      }
      
      private function §dynamic catch continue§(param1:§switch use in§) : Boolean
      {
         return !(param1.§override set false§.§521423131872313200123423632234§ && param1.§static set finally§.§521423131872313200123423632234§);
      }
      
      public function §const while implements§(param1:Vector.<§catch const break§>, param2:Vector.<§switch use in§>, param3:Vector.<§catch const break§>) : void
      {
         var _loc5_:int = 0;
         var _loc4_:§switch use in§ = null;
         _loc5_ = 0;
         while(_loc5_ < this.§with finally continue§.length)
         {
            _loc4_ = this.§with finally continue§[_loc5_];
            if(this.§521423147282314741123423632234§(param1,_loc4_))
            {
               param2[param2.length] = _loc4_;
               param3[param3.length] = this.§get catch§(_loc4_,param1);
               this.§521423121832312196123423632234§(_loc5_);
               _loc5_--;
            }
            _loc5_++;
         }
         _loc5_ = 0;
         while(_loc5_ < this.§with finally continue§.length)
         {
            _loc4_ = this.§with finally continue§[_loc5_];
            if(param3.indexOf(_loc4_.§override set false§) >= 0 && param3.indexOf(_loc4_.§static set finally§) >= 0)
            {
               param2[param2.length] = _loc4_;
               this.§521423121832312196123423632234§(_loc5_);
               _loc5_--;
            }
            _loc5_++;
         }
      }
      
      public function §for while use§() : Boolean
      {
         return this.§with finally continue§.length > 0;
      }
      
      public function §try switch dynamic§(param1:Vector.<§switch use in§>, param2:Vector.<§catch const break§>) : void
      {
         var _loc4_:int = 0;
         var _loc3_:§switch use in§ = null;
         _loc4_ = 0;
         while(_loc4_ < this.§with finally continue§.length)
         {
            _loc3_ = this.§with finally continue§[_loc4_];
            if(this.§dynamic catch continue§(_loc3_))
            {
               param1[param1.length] = _loc3_;
               param2[param2.length] = this.§false const try§(_loc3_);
               this.§521423121832312196123423632234§(_loc4_);
               _loc4_--;
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§with finally continue§.length)
         {
            _loc3_ = this.§with finally continue§[_loc4_];
            if(param2.indexOf(_loc3_.§override set false§) >= 0 && param2.indexOf(_loc3_.§static set finally§) >= 0)
            {
               param1[param1.length] = _loc3_;
               this.§521423121832312196123423632234§(_loc4_);
               _loc4_--;
            }
            _loc4_++;
         }
      }
      
      private function §get catch§(param1:§switch use in§, param2:Vector.<§catch const break§>) : §catch const break§
      {
         if(param2.indexOf(param1.§override set false§) < 0)
         {
            return param1.§override set false§;
         }
         return param1.§static set finally§;
      }
      
      public function §5214239350239363123423632234§(param1:Vector.<§switch use in§>) : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = int(param1.length);
         this.§with finally continue§.length = _loc2_;
         while(_loc3_ < _loc2_)
         {
            this.§with finally continue§[_loc3_] = param1[_loc3_];
            _loc3_++;
         }
      }
      
      private function §false const try§(param1:§switch use in§) : §catch const break§
      {
         if(param1.§override set false§.§521423131872313200123423632234§)
         {
            return param1.§override set false§;
         }
         return param1.§static set finally§;
      }
   }
}

