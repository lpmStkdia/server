package §return catch override§
{
   public class §5214233518233531123423632234§
   {
      
      private var §52142315923172123423632234§:Number;
      
      private var §521423179622317975123423632234§:Number;
      
      private var §521423183292318342123423632234§:Number;
      
      private var §5214238048238061123423632234§:Number;
      
      public function §5214233518233531123423632234§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§52142315923172123423632234§ = param1;
         this.§521423179622317975123423632234§ = param2;
         this.§521423183292318342123423632234§ = param3;
         this.§5214238048238061123423632234§ = param2 - param1;
      }
      
      public function §5214236832236845123423632234§() : Number
      {
         return this.§52142315923172123423632234§;
      }
      
      public function §each switch while§(param1:Number) : Number
      {
         if(this.§5214238048238061123423632234§ <= 0)
         {
            return 1;
         }
         if(param1 <= this.§52142315923172123423632234§)
         {
            return 1;
         }
         if(param1 >= this.§521423179622317975123423632234§)
         {
            return 0.01 * this.§521423183292318342123423632234§;
         }
         return 0.01 * (this.§521423183292318342123423632234§ + (this.§521423179622317975123423632234§ - param1) * (100 - this.§521423183292318342123423632234§) / this.§5214238048238061123423632234§);
      }
      
      public function §catch null§() : Number
      {
         return this.§521423179622317975123423632234§;
      }
   }
}

