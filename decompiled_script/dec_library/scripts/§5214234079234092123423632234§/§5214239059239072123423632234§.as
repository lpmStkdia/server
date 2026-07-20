package §5214234079234092123423632234§
{
   public class §5214239059239072123423632234§
   {
      
      private var data:Object;
      
      public function §5214239059239072123423632234§(param1:Object = null)
      {
         super();
         this.data = param1 || {};
      }
      
      public function §break set with§(param1:String) : String
      {
         return this.data[param1];
      }
      
      public function §each const function§(param1:String, param2:String) : void
      {
         if(!param2)
         {
            throw new ArgumentError();
         }
         this.data[param1] = param2;
      }
      
      public function §final set break§(param1:String, param2:String) : String
      {
         return String(this.data[param1]) || param2;
      }
      
      public function get §5214239295239308123423632234§() : Vector.<String>
      {
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(var _loc2_ in this.data)
         {
            _loc1_[_loc1_.length] = _loc2_;
         }
         return _loc1_;
      }
      
      public function §5214235078235091123423632234§(param1:String) : void
      {
         delete this.data[param1];
      }
   }
}

