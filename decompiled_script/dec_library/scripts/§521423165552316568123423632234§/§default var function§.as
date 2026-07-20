package §521423165552316568123423632234§
{
   import §521423130892313102123423632234§.§521423146422314655123423632234§;
   import §521423130892313102123423632234§.§null function var§;
   import §5214235058235071123423632234§.§const for final§;
   import flash.utils.Dictionary;
   import §include set case§.§5214237538237551123423632234§;
   import §switch catch catch§.§521423120882312101123423632234§;
   import §switch catch catch§.§5214234524234537123423632234§;
   
   public class §default var function§
   {
      
      public static var §5214236700236713123423632234§:§const for final§;
      
      private static var §do finally var§:§default var function§;
      
      private var §implements do§:Object;
      
      private var §5214233307233320123423632234§:§521423120882312101123423632234§;
      
      private var §5214237713237726123423632234§:Dictionary;
      
      private var §5214236013236026123423632234§:§521423146422314655123423632234§;
      
      public function §default var function§()
      {
         super();
         this.§implements do§ = {};
         this.§5214233307233320123423632234§ = new §521423120882312101123423632234§();
         this.§5214237713237726123423632234§ = new Dictionary();
         if(§do finally var§ == null)
         {
            §do finally var§ = this;
            this.§521423129712312984123423632234§();
            return;
         }
         throw new Error("Only one instance of OSGi class is allowed");
      }
      
      public static function §import use include§() : §default var function§
      {
         if(§do finally var§ == null)
         {
            §do finally var§ = new §default var function§();
         }
         return §do finally var§;
      }
      
      public static function §5214238431238444123423632234§(param1:Dictionary) : String
      {
         var _loc2_:String = "";
         for(var _loc3_ in param1)
         {
            _loc2_ += " (" + _loc3_ + " = " + param1[_loc3_] + ")";
         }
         return _loc2_;
      }
      
      public function get §5214239818239831123423632234§() : Vector.<Object>
      {
         return this.§5214233307233320123423632234§.§5214239818239831123423632234§;
      }
      
      public function §521423141462314159123423632234§(param1:Class, param2:Function, param3:Function) : void
      {
         var _loc4_:* = undefined;
         if(!this.§5214237713237726123423632234§[param1])
         {
            this.§5214237713237726123423632234§[param1] = new <InjectPoint>[new InjectPoint(param2,param3)];
         }
         else
         {
            _loc4_ = this.§5214237713237726123423632234§[param1];
            _loc4_[_loc4_.length] = new InjectPoint(param2,param3);
         }
         var _loc5_:Object = this.§5214233307233320123423632234§.§5214231532231545123423632234§(param1);
         param2(_loc5_);
      }
      
      public function §include while extends§(param1:Class, param2:Object) : void
      {
         this.§5214233307233320123423632234§.§else const const§(param1,param2);
         this.§5214235792235805123423632234§(param1);
      }
      
      private function §5214235792235805123423632234§(param1:Class) : void
      {
         var _loc2_:* = undefined;
         if(this.§5214237713237726123423632234§[param1] != null)
         {
            _loc2_ = this.§5214237713237726123423632234§[param1];
            for each(var _loc3_ in _loc2_)
            {
               _loc3_.injectFunction(this.§5214233307233320123423632234§.§5214231532231545123423632234§(param1));
            }
         }
      }
      
      public function §finally catch switch§(param1:Class) : void
      {
         var _loc5_:int = 0;
         var _loc2_:InjectPoint = null;
         var _loc4_:Object = this.§5214233307233320123423632234§.§throw switch each§(param1);
         if(_loc4_ == null)
         {
            return;
         }
         var _loc3_:Vector.<InjectPoint> = this.§5214237713237726123423632234§[param1];
         if(_loc3_ != null)
         {
            _loc5_ = _loc3_.length - 1;
            while(_loc5_ >= 0)
            {
               _loc2_ = _loc3_[_loc5_];
               if(_loc2_.valueReturnInjectFunction() == _loc4_)
               {
                  _loc2_.injectFunction(null);
               }
               _loc5_--;
            }
         }
      }
      
      public function §521423111802311193123423632234§() : Vector.<§5214234524234537123423632234§>
      {
         return this.§5214233307233320123423632234§.§521423111802311193123423632234§();
      }
      
      private function §521423129712312984123423632234§() : void
      {
         var _loc1_:§5214237538237551123423632234§ = new §5214237538237551123423632234§();
         this.§5214236013236026123423632234§ = _loc1_.§continue set in§("osgi");
         this.§include while extends§(§null function var§,_loc1_);
      }
      
      public function §5214231532231545123423632234§(param1:Class) : Object
      {
         return this.§5214233307233320123423632234§.§5214231532231545123423632234§(param1);
      }
      
      public function §5214234267234280123423632234§(param1:Array, param2:Object) : void
      {
         for each(var _loc3_ in param1)
         {
            this.§include while extends§(_loc3_,param2);
         }
      }
   }
}

class InjectPoint
{
   
   public var injectFunction:Function;
   
   public var valueReturnInjectFunction:Function;
   
   public function InjectPoint(param1:Function, param2:Function)
   {
      super();
      this.injectFunction = param1;
      this.valueReturnInjectFunction = param2;
   }
}
