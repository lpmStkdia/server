package §521423122282312241123423632234§
{
   public class §5214234612234625123423632234§
   {
      
      private var §5214231649231662123423632234§:Vector.<int>;
      
      private var §5214239166239179123423632234§:Vector.<int>;
      
      public function §5214234612234625123423632234§()
      {
         super();
         this.§5214231649231662123423632234§ = new Vector.<int>(1);
         this.§5214239166239179123423632234§ = new Vector.<int>(1);
      }
      
      public function §var finally null§(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc6_:int = 0;
         var _loc5_:int = 0;
         var _temp_2:* = this;
         var _temp_1:* = param1;
         var _loc9_:int = param2;
         var _loc8_:int = _temp_1;
         var _loc7_:§5214234612234625123423632234§ = _temp_2;
         if(§§pop().§switch set set§(_loc8_) != _loc7_.§switch set set§(_loc9_))
         {
            _loc3_ = this.§switch set set§(param1);
            _loc4_ = this.§switch set set§(param2);
            _loc6_ = this.§5214239166239179123423632234§[_loc3_];
            _loc5_ = this.§5214239166239179123423632234§[_loc4_];
            if(_loc6_ > _loc5_)
            {
               this.§5214231649231662123423632234§[_loc4_] = _loc3_;
               this.§5214239166239179123423632234§[_loc3_] += _loc5_;
            }
            else
            {
               this.§5214231649231662123423632234§[_loc3_] = _loc4_;
               this.§5214239166239179123423632234§[_loc4_] += _loc6_;
            }
         }
      }
      
      final private function §false const function§(param1:int, param2:int) : Boolean
      {
         return this.§switch set set§(param1) == this.§switch set set§(param2);
      }
      
      public function §5214239350239363123423632234§(param1:int) : void
      {
         var _loc2_:int = 0;
         this.§5214231649231662123423632234§.length = param1;
         this.§5214239166239179123423632234§.length = param1;
         while(_loc2_ < param1)
         {
            this.§5214231649231662123423632234§[_loc2_] = _loc2_;
            this.§5214239166239179123423632234§[_loc2_] = 1;
            _loc2_++;
         }
      }
      
      public function §switch set set§(param1:int) : int
      {
         var _loc2_:int = param1;
         while(this.§5214231649231662123423632234§[_loc2_] != _loc2_)
         {
            _loc2_ = this.§5214231649231662123423632234§[_loc2_];
         }
         return _loc2_;
      }
   }
}

