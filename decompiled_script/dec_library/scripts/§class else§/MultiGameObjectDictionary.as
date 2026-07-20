package §class else§
{
   import §521423158432315856123423632234§.§5214231885231898123423632234§;
   import flash.utils.Dictionary;
   
   public class MultiGameObjectDictionary
   {
      
      private var §if catch throw§:Dictionary;
      
      public function MultiGameObjectDictionary()
      {
         super();
         this.§if catch throw§ = new Dictionary(true);
      }
      
      public function put(param1:§5214231885231898123423632234§, param2:§5214231885231898123423632234§) : void
      {
         var _loc3_:Vector.<§5214231885231898123423632234§> = null;
         if(param1 in this.§if catch throw§)
         {
            this.§if catch throw§[param1].push(param2);
         }
         else
         {
            _loc3_ = new Vector.<§5214231885231898123423632234§>();
            _loc3_.push(param2);
            this.§if catch throw§[param1] = _loc3_;
         }
      }
      
      public function getValues(param1:§5214231885231898123423632234§) : Vector.<§5214231885231898123423632234§>
      {
         if(param1 in this.§if catch throw§)
         {
            return this.§if catch throw§[param1];
         }
         return new Vector.<§5214231885231898123423632234§>();
      }
      
      public function clear() : void
      {
         this.§if catch throw§ = new Dictionary();
      }
      
      public function remove(param1:§5214231885231898123423632234§, param2:§5214231885231898123423632234§) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Vector.<§5214231885231898123423632234§> = null;
         if(param1 in this.§if catch throw§)
         {
            _loc3_ = this.§if catch throw§[param1];
            _loc4_ = _loc3_.indexOf(param2);
            if(_loc4_ != -1)
            {
               _loc3_.removeAt(_loc4_);
            }
         }
      }
   }
}

