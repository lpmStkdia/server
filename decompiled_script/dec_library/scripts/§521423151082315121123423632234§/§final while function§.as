package §521423151082315121123423632234§
{
   import flash.utils.Dictionary;
   
   public class §final while function§ implements §finally use default§
   {
      
      private var §521423164592316472123423632234§:int;
      
      private var §super package return§:Dictionary;
      
      private var §521423176782317691123423632234§:Dictionary;
      
      private var §5214231568231581123423632234§:Dictionary;
      
      private var §in function default§:Dictionary;
      
      public function §final while function§()
      {
         super();
         this.§super package return§ = new Dictionary();
         this.§521423176782317691123423632234§ = new Dictionary();
         this.§5214231568231581123423632234§ = new Dictionary();
         this.§in function default§ = new Dictionary();
      }
      
      private static function §extends function null§(param1:Dictionary, param2:Class, param3:§throw switch switch§) : void
      {
         var _loc5_:int = 0;
         var _loc4_:Vector.<§throw switch switch§> = param1[param2];
         if(_loc4_ != null)
         {
            _loc5_ = _loc4_.indexOf(param3);
            if(_loc5_ >= 0)
            {
               if(_loc4_.length == 1)
               {
                  delete param1[param2];
               }
               else
               {
                  _loc4_.removeAt(_loc5_);
               }
            }
         }
      }
      
      private static function §package set default§(param1:Dictionary, param2:Class, param3:§throw switch switch§) : void
      {
         var _loc4_:Vector.<§throw switch switch§> = param1[param2];
         if(_loc4_ == null)
         {
            _loc4_ = new Vector.<§throw switch switch§>();
            param1[param2] = _loc4_;
         }
         if(_loc4_.indexOf(param3) < 0)
         {
            _loc4_.push(param3);
         }
      }
      
      public function §521423121592312172123423632234§(param1:Object) : void
      {
         var _loc3_:§throw switch switch§ = null;
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         ++this.§521423164592316472123423632234§;
         var _loc5_:Vector.<§throw switch switch§> = this.§super package return§[param1.constructor];
         if(_loc5_ != null)
         {
            _loc2_ = int(_loc5_.length);
            _loc4_ = 0;
            while(_loc4_ < _loc2_)
            {
               _loc3_ = §throw switch switch§(_loc5_[_loc4_]);
               _loc3_.§if function in§(param1);
               _loc4_++;
            }
         }
         --this.§521423164592316472123423632234§;
         this.§521423178682317881123423632234§();
      }
      
      public function §5214231667231680123423632234§(param1:Object) : void
      {
         if(!this.§in function default§[param1.constructor])
         {
            this.§in function default§[param1.constructor] = true;
            this.§521423121592312172123423632234§(param1);
         }
      }
      
      private function §521423178682317881123423632234§() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc3_:Vector.<§throw switch switch§> = null;
         if(this.§521423164592316472123423632234§ > 0)
         {
            return;
         }
         for(_loc5_ in this.§5214231568231581123423632234§)
         {
            _loc3_ = this.§5214231568231581123423632234§[_loc5_];
            delete this.§5214231568231581123423632234§[_loc5_];
            _loc4_ = int(_loc3_.length);
            _loc2_ = 0;
            while(_loc2_ < _loc4_)
            {
               §extends function null§(this.§super package return§,_loc5_,_loc3_[_loc2_]);
               _loc2_++;
            }
         }
         for(_loc5_ in this.§521423176782317691123423632234§)
         {
            _loc3_ = this.§521423176782317691123423632234§[_loc5_];
            delete this.§521423176782317691123423632234§[_loc5_];
            _loc4_ = int(_loc3_.length);
            _loc2_ = 0;
            while(_loc2_ < _loc4_)
            {
               §package set default§(this.§super package return§,_loc5_,_loc3_[_loc2_]);
               _loc2_++;
            }
         }
      }
      
      public function §521423153472315360123423632234§(param1:Class, param2:§throw switch switch§) : void
      {
         if(this.§521423164592316472123423632234§ > 0)
         {
            §extends function null§(this.§5214231568231581123423632234§,param1,param2);
            §package set default§(this.§521423176782317691123423632234§,param1,param2);
         }
         else
         {
            §package set default§(this.§super package return§,param1,param2);
         }
      }
      
      public function §521423168782316891123423632234§() : void
      {
         this.§in function default§ = new Dictionary();
      }
      
      public function §52142375423767123423632234§(param1:Class, param2:§throw switch switch§) : void
      {
         if(this.§521423164592316472123423632234§ > 0)
         {
            §extends function null§(this.§521423176782317691123423632234§,param1,param2);
            §package set default§(this.§5214231568231581123423632234§,param1,param2);
         }
         else
         {
            §extends function null§(this.§super package return§,param1,param2);
         }
      }
   }
}

