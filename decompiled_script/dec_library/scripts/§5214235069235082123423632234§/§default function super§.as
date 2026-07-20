package §5214235069235082123423632234§
{
   import §521423158432315856123423632234§.§5214231885231898123423632234§;
   import flash.display.DisplayObjectContainer;
   import platform.client.fp10.core.model.impl.*;
   
   public class §default function super§ implements §521423134062313419123423632234§
   {
      
      private var §52142367123684123423632234§:§5214231885231898123423632234§;
      
      private var §521423141772314190123423632234§:Vector.<Object>;
      
      public function §default function super§(param1:§5214231885231898123423632234§, param2:Vector.<Object>)
      {
         super();
         this.§52142367123684123423632234§ = param1;
         this.§521423141772314190123423632234§ = param2;
      }
      
      public function §521423147142314727123423632234§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§521423134062313419123423632234§ = null;
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
               _loc2_ = this.§521423141772314190123423632234§[_loc1_] as §521423134062313419123423632234§;
               _loc2_.§521423147142314727123423632234§();
               _loc1_++;
            }
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function §5214237154237167123423632234§(param1:DisplayObjectContainer) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§521423134062313419123423632234§ = null;
         try
         {
            var _temp_1:* = Model;
            var _loc6_:§5214231885231898123423632234§ = this.§52142367123684123423632234§;
            var _loc5_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214238154238167123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214238154238167123423632234§ = _loc6_;
            _loc2_ = 0;
            while(_loc2_ < this.§521423141772314190123423632234§.length)
            {
               _loc3_ = this.§521423141772314190123423632234§[_loc2_] as §521423134062313419123423632234§;
               _loc3_.§5214237154237167123423632234§(param1);
               _loc2_++;
            }
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

