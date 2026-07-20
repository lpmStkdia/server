package §5214234079234092123423632234§
{
   internal class §5214232865232878123423632234§ implements §extends for each§
   {
      
      private var §5214236934236947123423632234§:§521423121532312166123423632234§;
      
      private var §521423145732314586123423632234§:int;
      
      public function §5214232865232878123423632234§(param1:§521423121532312166123423632234§, param2:int)
      {
         super();
         if(param2 < 0 || param2 > param1.§5214239166239179123423632234§)
         {
            throw new Error("Index " + param2 + " is out of range [0, " + param1.§5214239166239179123423632234§ + "]");
         }
         this.§5214236934236947123423632234§ = param1;
         var _loc3_:uint = param1.§521423109662310979123423632234§.length;
         this.§521423145732314586123423632234§ = param1.§continue var implements§ + param2 - 1;
         if(this.§521423145732314586123423632234§ < 0)
         {
            this.§521423145732314586123423632234§ = _loc3_ - 1;
         }
         if(this.§521423145732314586123423632234§ >= _loc3_)
         {
            this.§521423145732314586123423632234§ -= _loc3_;
         }
      }
      
      public function §get set static§() : String
      {
         this.§521423145732314586123423632234§ = this.§if var get§(this.§521423145732314586123423632234§);
         if(this.§521423145732314586123423632234§ == this.§5214236934236947123423632234§.§if while null§)
         {
            throw new Error("End of buffer");
         }
         return this.§5214236934236947123423632234§.§521423109662310979123423632234§[this.§521423145732314586123423632234§];
      }
      
      private function §if var get§(param1:int) : int
      {
         return ++param1 >= this.§5214236934236947123423632234§.§521423109662310979123423632234§.length ? 0 : param1;
      }
      
      public function §5214236034236047123423632234§() : Boolean
      {
         return this.§if var get§(this.§521423145732314586123423632234§) != this.§5214236934236947123423632234§.§if while null§;
      }
   }
}

