package §implements package with§
{
   import §throw for each§.§521423136102313623123423632234§;
   
   public class §if for continue§ extends §521423136102313623123423632234§
   {
      
      private var §521423106792310692123423632234§:Function;
      
      public function §if for continue§()
      {
         super();
      }
      
      public function set §521423129642312977123423632234§(param1:Function) : void
      {
         this.§521423106792310692123423632234§ = param1;
      }
      
      public function §52142339823411123423632234§(param1:String, param2:Boolean, param3:Boolean) : void
      {
         var _loc4_:uint = 0;
         if(param2)
         {
            _loc4_ |= 16;
         }
         if(param3)
         {
            _loc4_ |= 2;
         }
         this.sortOn([param1,"date"],[_loc4_,0x10 | 2]);
      }
      
      public function get §521423129642312977123423632234§() : Function
      {
         return this.§521423106792310692123423632234§;
      }
      
      public function §class false§(param1:String) : int
      {
         var _loc4_:int = 0;
         var _loc2_:Object = null;
         var _loc3_:int = int(data.length);
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = this.getItemAt(_loc4_);
            if(_loc2_ && _loc2_.hasOwnProperty("id") && _loc2_["id"] == param1)
            {
               return _loc4_;
            }
            _loc4_++;
         }
         return -1;
      }
      
      override public function getItemAt(param1:uint) : Object
      {
         var _loc2_:Object = super.getItemAt(param1);
         if(this.§521423106792310692123423632234§ != null)
         {
            this.§521423106792310692123423632234§(_loc2_);
         }
         return _loc2_;
      }
   }
}

