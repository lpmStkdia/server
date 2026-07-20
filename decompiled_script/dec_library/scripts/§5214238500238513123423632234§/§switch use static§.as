package §5214238500238513123423632234§
{
   public class §switch use static§
   {
      
      public var §5214234274234287123423632234§:int;
      
      public var §5214234087234100123423632234§:int;
      
      public var §do var catch§:int;
      
      public function §switch use static§(param1:int)
      {
         super();
         this.§with while switch§(param1);
      }
      
      private static function §if catch get§(param1:int) : int
      {
         return param1 < 0 ? 0 : param1;
      }
      
      private static function §get package return§(param1:int) : int
      {
         return param1 & 0xFF;
      }
      
      public function §with while switch§(param1:int) : void
      {
         this.§5214234274234287123423632234§ = §get package return§(param1 >> 16);
         this.§5214234087234100123423632234§ = §get package return§(param1 >> 8);
         this.§do var catch§ = §get package return§(param1);
      }
      
      public function §521423115122311525123423632234§() : int
      {
         return this.§5214234274234287123423632234§ << 16 | this.§5214234087234100123423632234§ << 8 | this.§do var catch§;
      }
      
      public function §5214231855231868123423632234§(param1:§switch use static§) : void
      {
         this.§5214234274234287123423632234§ = §if catch get§(this.§5214234274234287123423632234§ - param1.§5214234274234287123423632234§);
         this.§5214234087234100123423632234§ = §if catch get§(this.§5214234087234100123423632234§ - param1.§5214234087234100123423632234§);
         this.§do var catch§ = §if catch get§(this.§do var catch§ - param1.§do var catch§);
      }
   }
}

