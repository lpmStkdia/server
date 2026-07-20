package §throw for each§
{
   import §521423105672310580123423632234§.§5214235688235701123423632234§;
   import flash.events.EventDispatcher;
   
   public class §521423136102313623123423632234§ extends EventDispatcher
   {
      
      protected var data:Array;
      
      public function §521423136102313623123423632234§()
      {
         super();
         data = [];
      }
      
      public function removeAll() : void
      {
         var _loc1_:Array = data.concat();
         data = [];
         §521423191142319127123423632234§("removeAll",_loc1_,0,_loc1_.length);
      }
      
      protected function §import const include§(param1:int, param2:int) : void
      {
         if(param1 > param2 || param1 < 0)
         {
            throw new RangeError("DataProvider index (" + param1 + ") is not in acceptable range (0 - " + param2 + ")");
         }
      }
      
      public function §each function in§(param1:Object, param2:uint) : Object
      {
         §import const include§(param2,data.length - 1);
         var _loc3_:Array = [data[param2]];
         data[param2] = param1;
         §521423191142319127123423632234§("replace",_loc3_,param2,param2);
         return _loc3_[0];
      }
      
      public function §5214232911232924123423632234§(param1:Object, param2:Object) : Object
      {
         var _loc3_:int = §5214234074234087123423632234§(param2);
         if(_loc3_ != -1)
         {
            return §each function in§(param1,_loc3_);
         }
         return null;
      }
      
      protected function §521423191142319127123423632234§(param1:String, param2:Array, param3:int, param4:int) : void
      {
         dispatchEvent(new §5214235688235701123423632234§("dataChange",param1,param2,param3,param4));
      }
      
      public function §5214239032239045123423632234§(param1:Object) : Object
      {
         var _loc2_:int = §5214234074234087123423632234§(param1);
         if(_loc2_ != -1)
         {
            return §finally super with§(_loc2_);
         }
         return null;
      }
      
      public function §finally super with§(param1:uint) : Object
      {
         §import const include§(param1,data.length - 1);
         var _loc2_:Array = data.splice(param1,1);
         §521423191142319127123423632234§("remove",_loc2_,param1,param1);
         return _loc2_[0];
      }
      
      public function sortOn(param1:Object, param2:Object = null) : *
      {
         §final set native§("sort",data.concat(),0,data.length - 1);
         var _loc3_:Array = data.sortOn(param1,param2);
         §521423191142319127123423632234§("sort",data.concat(),0,data.length - 1);
         return _loc3_;
      }
      
      public function §continue set try§() : void
      {
         dispatchEvent(new §5214235688235701123423632234§("dataChange","invalidateAll",data.concat(),0,data.length));
      }
      
      public function sort(... rest) : *
      {
         §final set native§("sort",data.concat(),0,data.length - 1);
         var _loc2_:Array = data.sort.apply(data,rest);
         §521423191142319127123423632234§("sort",data.concat(),0,data.length - 1);
         return _loc2_;
      }
      
      public function §52142341723430123423632234§(param1:Object) : void
      {
         data.push(param1);
         §521423191142319127123423632234§("add",[param1],data.length - 1,data.length - 1);
      }
      
      public function §5214234074234087123423632234§(param1:Object) : int
      {
         return data.indexOf(param1);
      }
      
      public function §521423179192317932123423632234§(param1:Object) : void
      {
         var _loc2_:int = §5214234074234087123423632234§(param1);
         if(_loc2_ == -1)
         {
            return;
         }
         §521423148832314896123423632234§(_loc2_);
      }
      
      public function get §521423135952313608123423632234§() : uint
      {
         return data.length;
      }
      
      public function getItemAt(param1:uint) : Object
      {
         §import const include§(param1,data.length - 1);
         return data[param1];
      }
      
      public function §521423148832314896123423632234§(param1:int) : void
      {
         §import const include§(param1,data.length - 1);
         §521423191142319127123423632234§("invalidate",[data[param1]],param1,param1);
      }
      
      protected function §final set native§(param1:String, param2:Array, param3:int, param4:int) : void
      {
         dispatchEvent(new §5214235688235701123423632234§("preDataChange",param1,param2,param3,param4));
      }
   }
}

