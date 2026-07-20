package §false super class§
{
   import flash.errors.IllegalOperationError;
   import flash.utils.Dictionary;
   
   public class Signal implements §5214233528233541123423632234§, §catch set else§
   {
      
      protected var §package set implements§:Dictionary;
      
      protected var §super set final§:Array;
      
      protected var listeners:Array;
      
      public function Signal(... rest)
      {
         super();
         this.listeners = [];
         this.§package set implements§ = new Dictionary();
         if(rest.length == 1 && rest[0] is Array)
         {
            rest = rest[0];
         }
         this.§521423140002314013123423632234§(rest);
      }
      
      public function get §521423179782317991123423632234§() : uint
      {
         return this.listeners.length;
      }
      
      public function add(param1:Function) : void
      {
         if(this.§package set implements§[param1])
         {
            throw new IllegalOperationError("You cannot addOnce() then add() the same listener without removing the relationship first.");
         }
         this.§5214239201239214123423632234§(param1);
      }
      
      public function §false function override§(param1:Function) : void
      {
         if(this.§package set implements§[param1])
         {
            return;
         }
         if(this.listeners.indexOf(param1) >= 0 && !this.§package set implements§[param1])
         {
            throw new IllegalOperationError("You cannot add() then addOnce() the same listener without removing the relationship first.");
         }
         this.§5214239201239214123423632234§(param1);
         this.§package set implements§[param1] = true;
      }
      
      public function get §do function function§() : Array
      {
         return this.§super set final§;
      }
      
      public function remove(param1:Function) : void
      {
         if(this.listeners.indexOf(param1) == -1)
         {
            return;
         }
         this.listeners.splice(this.listeners.indexOf(param1),1);
         delete this.§package set implements§[param1];
      }
      
      protected function §5214239201239214123423632234§(param1:Function) : void
      {
         var _loc2_:String = null;
         if(param1.length < this.§super set final§.length)
         {
            _loc2_ = param1.length == 1 ? "argument" : "arguments";
            throw new ArgumentError("Listener has " + param1.length + " " + _loc2_ + " but it needs at least " + this.§super set final§.length + " to match the given value classes.");
         }
         if(!this.listeners.length)
         {
            this.listeners[0] = param1;
            return;
         }
         if(this.listeners.indexOf(param1) >= 0)
         {
            return;
         }
         this.listeners[this.listeners.length] = param1;
      }
      
      protected function §521423140002314013123423632234§(param1:Array) : void
      {
         this.§super set final§ = param1 || [];
         var _loc2_:* = int(this.§super set final§.length);
         while(_loc2_--)
         {
            if(!(this.§super set final§[_loc2_] is Class))
            {
               throw new ArgumentError("Invalid valueClasses argument: item at index " + _loc2_ + " should be a Class but was:<" + this.§super set final§[_loc2_] + ">.");
            }
         }
      }
      
      public function §override use import§(... rest) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Class = null;
         var _loc6_:Function = null;
         var _loc4_:int = int(this.§super set final§.length);
         var _loc5_:* = 0;
         while(_loc5_ < _loc4_)
         {
            _loc2_ = rest[_loc5_];
            if(!(_loc2_ === null || _loc2_ is (_loc3_ = this.§super set final§[_loc5_])))
            {
               throw new ArgumentError("Value object <" + _loc2_ + "> is not an instance of <" + _loc3_ + ">.");
            }
            _loc5_++;
         }
         if(!this.listeners.length)
         {
            return;
         }
         switch(rest.length)
         {
            case 0:
               for each(_loc6_ in this.listeners.slice())
               {
                  if(this.§package set implements§[_loc6_])
                  {
                     this.remove(_loc6_);
                  }
                  _loc6_();
               }
               break;
            case 1:
               for each(_loc6_ in this.listeners.slice())
               {
                  if(this.§package set implements§[_loc6_])
                  {
                     this.remove(_loc6_);
                  }
                  _loc6_(rest[0]);
               }
               break;
            default:
               for each(_loc6_ in this.listeners.slice())
               {
                  if(this.§package set implements§[_loc6_])
                  {
                     this.remove(_loc6_);
                  }
                  _loc6_.apply(null,rest);
               }
         }
      }
      
      public function removeAll() : void
      {
         this.listeners.length = 0;
         this.§package set implements§ = new Dictionary();
      }
   }
}

