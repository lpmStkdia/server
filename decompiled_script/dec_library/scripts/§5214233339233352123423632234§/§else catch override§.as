package §5214233339233352123423632234§
{
   import flash.utils.Dictionary;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   
   public class §else catch override§
   {
      
      private static const §521423111912311204123423632234§:int = 300000;
      
      private var §5214238099238112123423632234§:uint;
      
      private var §get var extends§:Dictionary;
      
      private var §521423187232318736123423632234§:Dictionary;
      
      private var §const catch false§:Function;
      
      public function §else catch override§()
      {
         super();
         this.§get var extends§ = new Dictionary();
         this.§5214238099238112123423632234§ = setInterval(this.§521423130992313112123423632234§,300000);
      }
      
      private function §521423130992313112123423632234§() : void
      {
         var _loc4_:§521423165442316557123423632234§ = null;
         if(this.§const catch false§ == null || this.§521423187232318736123423632234§ == null)
         {
            return;
         }
         var _loc1_:Vector.<String> = new Vector.<String>();
         var _loc2_:Number = new Date().time - 300000;
         for(var _loc3_ in this.§521423187232318736123423632234§)
         {
            _loc4_ = this.§521423187232318736123423632234§[_loc3_];
            if(_loc4_.§class use super§ < _loc2_ && _loc4_.§521423189652318978123423632234§ == 0)
            {
               _loc1_[_loc1_.length] = _loc3_;
            }
         }
         if(_loc1_.length > 0)
         {
            this.§const catch false§(_loc1_);
         }
      }
      
      public function §function for var§() : void
      {
         clearInterval(this.§5214238099238112123423632234§);
      }
      
      public function §521423164042316417123423632234§(param1:String) : void
      {
         this.§get var extends§[param1] = new Date().time;
      }
      
      public function set §return for native§(param1:Dictionary) : void
      {
         this.§521423187232318736123423632234§ = param1;
      }
      
      public function set §default package include§(param1:Function) : void
      {
         this.§const catch false§ = param1;
      }
      
      public function get §default package include§() : Function
      {
         return this.§const catch false§;
      }
   }
}

