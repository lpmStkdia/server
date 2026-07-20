package §switch catch catch§
{
   import flash.utils.Dictionary;
   
   public class §521423120882312101123423632234§
   {
      
      protected var §5214236529236542123423632234§:Dictionary;
      
      public function §521423120882312101123423632234§()
      {
         super();
         this.§5214236529236542123423632234§ = new Dictionary();
      }
      
      public function §521423111802311193123423632234§() : Vector.<§5214234524234537123423632234§>
      {
         var _loc1_:Vector.<§5214234524234537123423632234§> = new Vector.<§5214234524234537123423632234§>();
         for each(var _loc2_ in this.§5214236529236542123423632234§)
         {
            _loc1_[_loc1_.length] = new §5214234524234537123423632234§(_loc2_,null);
         }
         return _loc1_;
      }
      
      public function §else const const§(param1:Class, param2:Object) : void
      {
         if(this.§5214236529236542123423632234§[param1] != null)
         {
            throw new ArgumentError("Service " + param1 + " without parameters is already registered");
         }
         this.§5214236529236542123423632234§[param1] = param2;
      }
      
      public function §5214231532231545123423632234§(param1:Class) : Object
      {
         return this.§5214236529236542123423632234§[param1];
      }
      
      public function §throw switch each§(param1:Class) : Object
      {
         var _loc2_:Object = this.§5214236529236542123423632234§[param1];
         delete this.§5214236529236542123423632234§[param1];
         return _loc2_;
      }
      
      public function get §5214239818239831123423632234§() : Vector.<Object>
      {
         var _loc2_:Vector.<Object> = new Vector.<Object>();
         for each(var _loc1_ in this.§5214236529236542123423632234§)
         {
            _loc2_[_loc2_.length] = _loc1_;
         }
         return _loc2_;
      }
   }
}

