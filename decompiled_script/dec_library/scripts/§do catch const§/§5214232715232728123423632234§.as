package §do catch const§
{
   public class §5214232715232728123423632234§
   {
      
      public var §521423178812317894123423632234§:uint;
      
      private var §get function include§:Number;
      
      private var §5214231660231673123423632234§:Number;
      
      private var §521423462359123423632234§:Number;
      
      public function §5214232715232728123423632234§(param1:uint, param2:uint)
      {
         super();
         this.§521423178812317894123423632234§ = param1;
         this.§get function include§ = (param2 >> 16 & 0xFF) - (param1 >> 16 & 0xFF);
         this.§5214231660231673123423632234§ = (param2 >> 8 & 0xFF) - (param1 >> 8 & 0xFF);
         this.§521423462359123423632234§ = (param2 & 0xFF) - (param1 & 0xFF);
      }
      
      public function §5214237067237080123423632234§(param1:Number) : uint
      {
         var _loc2_:int = (this.§521423178812317894123423632234§ >> 16 & 0xFF) + param1 * this.§get function include§;
         var _loc3_:int = (this.§521423178812317894123423632234§ >> 8 & 0xFF) + param1 * this.§5214231660231673123423632234§;
         var _loc4_:int = (this.§521423178812317894123423632234§ & 0xFF) + param1 * this.§521423462359123423632234§;
         return _loc2_ << 16 | _loc3_ << 8 | _loc4_;
      }
   }
}

