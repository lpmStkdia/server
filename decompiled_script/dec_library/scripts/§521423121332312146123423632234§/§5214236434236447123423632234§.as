package §521423121332312146123423632234§
{
   import flash.utils.Dictionary;
   
   public class §5214236434236447123423632234§
   {
      
      private var §5214236934236947123423632234§:Dictionary;
      
      public function §5214236434236447123423632234§()
      {
         super();
         this.§5214236934236947123423632234§ = new Dictionary();
      }
      
      public function §5214231576231589123423632234§(param1:String, param2:int) : void
      {
         this.§5214236934236947123423632234§[param1] = param2;
      }
      
      public function §52142366623679123423632234§(param1:String) : void
      {
         delete this.§5214236934236947123423632234§[param1];
      }
      
      public function §521423178422317855123423632234§(param1:String) : int
      {
         var _loc2_:int = 0;
         if(this.§5214236934236947123423632234§[param1] != undefined)
         {
            _loc2_ = int(this.§5214236934236947123423632234§[param1]);
            delete this.§5214236934236947123423632234§[param1];
            return _loc2_;
         }
         return -1;
      }
   }
}

