package §while function break§
{
   import flash.utils.Dictionary;
   
   public class §521423170642317077123423632234§
   {
      
      private var §super use case§:Dictionary = new Dictionary();
      
      public function §521423170642317077123423632234§()
      {
         super();
      }
      
      public function §include use do§(param1:Class) : Object
      {
         return this.§null var try§(param1).§include use do§();
      }
      
      public function §52142367423687123423632234§() : void
      {
         var _loc1_:§521423152702315283123423632234§ = null;
         for(var _loc2_ in this.§super use case§)
         {
            _loc1_ = §521423152702315283123423632234§(this.§super use case§[_loc2_]);
            _loc1_.§52142367423687123423632234§();
            delete this.§super use case§[_loc2_];
         }
      }
      
      private function §null var try§(param1:Class) : §521423152702315283123423632234§
      {
         var _loc2_:§521423152702315283123423632234§ = this.§super use case§[param1];
         if(_loc2_ == null)
         {
            _loc2_ = new §521423152702315283123423632234§(param1);
            this.§super use case§[param1] = _loc2_;
         }
         return _loc2_;
      }
      
      public function toString() : String
      {
         var _loc2_:§521423152702315283123423632234§ = null;
         var _loc1_:String = "";
         for(var _loc3_ in this.§super use case§)
         {
            _loc2_ = this.§super use case§[_loc3_];
            _loc1_ += _loc3_ + ": " + _loc2_.§521423106662310679123423632234§() + "\n";
         }
         return _loc1_;
      }
      
      public function §use set override§(param1:Class) : void
      {
         var _loc2_:§521423152702315283123423632234§ = this.§super use case§[param1];
         if(_loc2_ != null)
         {
            _loc2_.§52142367423687123423632234§();
         }
      }
   }
}

