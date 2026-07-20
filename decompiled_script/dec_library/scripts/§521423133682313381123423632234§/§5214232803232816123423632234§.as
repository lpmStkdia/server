package §521423133682313381123423632234§
{
   import flash.utils.getTimer;
   
   public class §5214232803232816123423632234§ implements §set set for§
   {
      
      private var §521423192932319306123423632234§:Vector.<§521423140512314064123423632234§>;
      
      public function §5214232803232816123423632234§()
      {
         super();
      }
      
      public function §5214231686231699123423632234§(param1:String) : Vector.<§521423140512314064123423632234§>
      {
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:§521423140512314064123423632234§ = null;
         var _loc2_:Vector.<§521423140512314064123423632234§> = null;
         if(this.§521423192932319306123423632234§ != null)
         {
            _loc3_ = int(this.§521423192932319306123423632234§.length);
            while(_loc5_ < _loc3_)
            {
               _loc4_ = this.§521423192932319306123423632234§[_loc5_];
               if(_loc4_.§5214231844231857123423632234§ == param1)
               {
                  if(_loc2_ == null)
                  {
                     _loc2_ = new Vector.<§521423140512314064123423632234§>();
                  }
                  _loc2_[_loc2_.length] = _loc4_;
                  this.§521423192932319306123423632234§[_loc5_--] = this.§521423192932319306123423632234§[--_loc3_];
                  this.§521423192932319306123423632234§.length = _loc3_;
               }
               _loc5_++;
            }
            if(_loc3_ == 0)
            {
               this.§521423192932319306123423632234§ = null;
            }
         }
         return _loc2_;
      }
      
      public function §case super§(param1:String, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = this.§while use extends§(param1,param2);
         if(_loc4_ >= 0)
         {
            _loc3_ = int(this.§521423192932319306123423632234§.length);
            this.§521423192932319306123423632234§[_loc4_] = this.§521423192932319306123423632234§[--_loc3_];
            this.§521423192932319306123423632234§.length = _loc3_;
         }
      }
      
      public function §switch false§(param1:String, param2:int, param3:int, param4:int) : void
      {
         if(this.§521423192932319306123423632234§ == null)
         {
            this.§521423192932319306123423632234§ = new Vector.<§521423140512314064123423632234§>();
         }
         this.§521423192932319306123423632234§[§521423192932319306123423632234§.length] = new §521423140512314064123423632234§(getTimer(),param1,param2,param3,param4);
      }
      
      private function §while use extends§(param1:String, param2:int) : int
      {
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:§521423140512314064123423632234§ = null;
         if(this.§521423192932319306123423632234§ != null)
         {
            _loc3_ = int(this.§521423192932319306123423632234§.length);
            while(_loc5_ < _loc3_)
            {
               _loc4_ = this.§521423192932319306123423632234§[_loc5_];
               if(_loc4_.§5214231844231857123423632234§ == param1 && _loc4_.§class package package§ == param2)
               {
                  return _loc5_;
               }
               _loc5_++;
            }
         }
         return -1;
      }
   }
}

