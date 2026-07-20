package §5214239588239601123423632234§
{
   import §521423158432315856123423632234§.§do use with§;
   
   public class §521423159232315936123423632234§
   {
      
      private var §5214239166239179123423632234§:int;
      
      private var §521423188262318839123423632234§:Vector.<Object>;
      
      public function §521423159232315936123423632234§()
      {
         super();
         this.§521423188262318839123423632234§ = new Vector.<Object>();
      }
      
      public function §52142367423687123423632234§() : void
      {
         var _loc1_:§do use with§ = null;
         for each(var _loc2_ in this.§521423188262318839123423632234§)
         {
            _loc1_ = _loc2_ as §do use with§;
            if(_loc1_ != null)
            {
               _loc1_.§override catch get§();
            }
         }
         this.§521423188262318839123423632234§.length = 0;
         this.§5214239166239179123423632234§ = 0;
      }
      
      public function §521423114532311466123423632234§(param1:Object) : void
      {
         this.§521423188262318839123423632234§[this.§5214239166239179123423632234§++] = param1;
      }
      
      public function §continue finally static§() : Boolean
      {
         return this.§5214239166239179123423632234§ == 0;
      }
      
      public function §function finally null§() : Object
      {
         if(this.§continue finally static§())
         {
            throw new Error();
         }
         --this.§5214239166239179123423632234§;
         var _loc1_:Object = this.§521423188262318839123423632234§[this.§5214239166239179123423632234§];
         this.§521423188262318839123423632234§[this.§5214239166239179123423632234§] = null;
         return _loc1_;
      }
   }
}

