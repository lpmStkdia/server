package §5214238500238513123423632234§
{
   import flash.utils.getTimer;
   
   public class §521423159002315913123423632234§
   {
      
      private var §521423242337123423632234§:int;
      
      private var §if while import§:int;
      
      private var §521423151862315199123423632234§:int;
      
      private var §521423100092310022123423632234§:Number = 0;
      
      public function §521423159002315913123423632234§(param1:int)
      {
         super();
         this.§521423242337123423632234§ = param1;
         this.§if while import§ = getTimer();
      }
      
      public function §521423161102316123123423632234§() : Number
      {
         return this.§521423100092310022123423632234§;
      }
      
      public function §function const package§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         if(++this.§521423151862315199123423632234§ >= this.§521423242337123423632234§)
         {
            _loc2_ = getTimer();
            _loc1_ = _loc2_ - this.§if while import§;
            this.§if while import§ = _loc2_;
            this.§521423100092310022123423632234§ = 1000 * this.§521423151862315199123423632234§ / _loc1_;
            this.§521423151862315199123423632234§ = 0;
         }
      }
   }
}

