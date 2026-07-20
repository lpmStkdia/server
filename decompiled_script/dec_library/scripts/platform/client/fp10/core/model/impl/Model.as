package platform.client.fp10.core.model.impl
{
   import §521423158432315856123423632234§.§5214231885231898123423632234§;
   import §521423158432315856123423632234§.§5214233977233990123423632234§;
   import §5214232264232277123423632234§.§5214237893237906123423632234§;
   import §catch set implements§.§set super var§;
   import flash.utils.Dictionary;
   import §true use var§.§function use case§;
   
   public class Model implements §set super var§
   {
      
      private static var §5214238154238167123423632234§:§5214231885231898123423632234§;
      
      public static var §521423100662310079123423632234§:§function use case§;
      
      private static var objects:Vector.<§5214231885231898123423632234§> = new Vector.<§5214231885231898123423632234§>();
      
      protected var initParams:Dictionary = new Dictionary();
      
      public function Model()
      {
         super();
      }
      
      public static function popObject() : void
      {
         §5214238154238167123423632234§ = objects.pop();
      }
      
      public static function set object(param1:§5214231885231898123423632234§) : void
      {
         objects[objects.length] = §5214238154238167123423632234§;
         §5214238154238167123423632234§ = param1;
      }
      
      public static function get object() : §5214231885231898123423632234§
      {
         return §5214238154238167123423632234§;
      }
      
      public function get id() : §5214237893237906123423632234§
      {
         return null;
      }
      
      public function putInitParams(param1:Object) : void
      {
         this.initParams[§5214238154238167123423632234§] = param1;
      }
      
      public function getData(param1:Class) : Object
      {
         var _loc2_:§5214233977233990123423632234§ = §5214233977233990123423632234§(§5214238154238167123423632234§);
         return _loc2_.§catch catch for§(this,param1);
      }
      
      public function putData(param1:Class, param2:Object) : void
      {
         var _loc3_:§5214233977233990123423632234§ = §5214233977233990123423632234§(§5214238154238167123423632234§);
         _loc3_.§5214239682239695123423632234§(this,param1,param2);
      }
      
      protected function getFunctionWrapper(param1:Function) : Function
      {
         var wrapper:Function;
         var object:§5214231885231898123423632234§;
         var f:Function = param1;
         var wrappers:Dictionary = this.getData(Model) as Dictionary;
         if(wrappers == null)
         {
            wrappers = new Dictionary();
            this.putData(Model,wrappers);
         }
         wrapper = wrappers[f];
         if(wrapper == null)
         {
            var _loc3_:Model = Model;
            object = platform.client.fp10.core.model.impl.Model.§5214238154238167123423632234§;
            wrapper = function(... rest):void
            {
               var _temp_1:* = Model;
               var _loc3_:§5214231885231898123423632234§ = object;
               var _loc2_:Model = _temp_1;
               platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214238154238167123423632234§;
               platform.client.fp10.core.model.impl.Model.§5214238154238167123423632234§ = _loc3_;
               f.apply(null,rest);
               Model.popObject();
            };
            wrappers[f] = wrapper;
         }
         return wrapper;
      }
      
      public function clearInitParams() : void
      {
         delete this.initParams[§5214238154238167123423632234§];
      }
      
      public function clearData(param1:Class) : Object
      {
         var _loc2_:§5214233977233990123423632234§ = §5214233977233990123423632234§(§5214238154238167123423632234§);
         return _loc2_.§import const implements§(this,param1);
      }
   }
}

