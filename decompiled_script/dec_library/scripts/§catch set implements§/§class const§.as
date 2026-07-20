package §catch set implements§
{
   import §521423158432315856123423632234§.§5214231885231898123423632234§;
   import platform.client.fp10.core.model.impl.*;
   
   public class §class const§ implements §null switch dynamic§
   {
      
      private var §52142367123684123423632234§:§5214231885231898123423632234§;
      
      private var §521423141772314190123423632234§:Vector.<Object>;
      
      public function §class const§(param1:§5214231885231898123423632234§, param2:Vector.<Object>)
      {
         super();
         this.§52142367123684123423632234§ = param1;
         this.§521423141772314190123423632234§ = param2;
      }
      
      public function §5214231664231677123423632234§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§null switch dynamic§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc5_:§5214231885231898123423632234§ = this.§52142367123684123423632234§;
            var _loc4_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214238154238167123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214238154238167123423632234§ = _loc5_;
            _loc1_ = 0;
            while(_loc1_ < this.§521423141772314190123423632234§.length)
            {
               _loc2_ = this.§521423141772314190123423632234§[_loc1_] as §null switch dynamic§;
               _loc2_.§5214231664231677123423632234§();
               _loc1_++;
            }
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

