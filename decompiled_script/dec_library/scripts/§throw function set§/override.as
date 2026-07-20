package §throw function set§
{
   import §521423158432315856123423632234§.§5214231885231898123423632234§;
   import platform.client.fp10.core.model.impl.*;
   
   public class override implements §521423141162314129123423632234§
   {
      
      private var §52142367123684123423632234§:§5214231885231898123423632234§;
      
      private var §521423141772314190123423632234§:§521423141162314129123423632234§;
      
      public function override(param1:§5214231885231898123423632234§, param2:§521423141162314129123423632234§)
      {
         super();
         this.§52142367123684123423632234§ = param1;
         this.§521423141772314190123423632234§ = param2;
      }
      
      public function §default function set§() : Boolean
      {
         var _loc1_:Boolean = false;
         try
         {
            var _temp_1:* = Model;
            var _loc4_:§5214231885231898123423632234§ = this.§52142367123684123423632234§;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214238154238167123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214238154238167123423632234§ = _loc4_;
            _loc1_ = this.§521423141772314190123423632234§.§default function set§();
         }
         finally
         {
            Model.popObject();
         }
         return _loc1_;
      }
   }
}

