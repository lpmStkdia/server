package §521423145102314523123423632234§
{
   import §521423158432315856123423632234§.§5214231885231898123423632234§;
   import flash.filters.BitmapFilter;
   import platform.client.fp10.core.model.impl.*;
   
   public class §use set throw§ implements §5214239842239855123423632234§
   {
      
      private var §52142367123684123423632234§:§5214231885231898123423632234§;
      
      private var §521423141772314190123423632234§:§5214239842239855123423632234§;
      
      public function §use set throw§(param1:§5214231885231898123423632234§, param2:§5214239842239855123423632234§)
      {
         super();
         this.§52142367123684123423632234§ = param1;
         this.§521423141772314190123423632234§ = param2;
      }
      
      public function §use include§(param1:String) : BitmapFilter
      {
         var _loc2_:BitmapFilter = null;
         try
         {
            var _temp_1:* = Model;
            var _loc5_:§5214231885231898123423632234§ = this.§52142367123684123423632234§;
            var _loc4_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214238154238167123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214238154238167123423632234§ = _loc5_;
            _loc2_ = this.§521423141772314190123423632234§.§use include§(param1);
         }
         finally
         {
            Model.popObject();
         }
         return _loc2_;
      }
   }
}

