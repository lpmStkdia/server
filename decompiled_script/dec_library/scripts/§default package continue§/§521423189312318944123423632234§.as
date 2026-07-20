package §default package continue§
{
   import alternativa.engine3d.core.Object3D;
   import flash.utils.Dictionary;
   
   public class §521423189312318944123423632234§
   {
      
      private var §521423118062311819123423632234§:Vector.<Object3D>;
      
      private var §super package in§:Dictionary;
      
      public function §521423189312318944123423632234§(param1:Dictionary)
      {
         super();
         this.§521423118062311819123423632234§ = new Vector.<Object3D>();
         this.§super package in§ = param1;
      }
      
      public function §521423108002310813123423632234§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = int(this.§521423118062311819123423632234§.length);
         _loc2_ = 0;
         while(_loc2_ < _loc1_)
         {
            delete this.§super package in§[this.§521423118062311819123423632234§[_loc2_]];
            _loc2_++;
         }
         this.§521423118062311819123423632234§.length = 0;
      }
      
      public function §5214237669237682123423632234§(param1:Object3D) : void
      {
         this.§super package in§[param1] = true;
         this.§521423118062311819123423632234§[§521423118062311819123423632234§.length] = param1;
      }
   }
}

