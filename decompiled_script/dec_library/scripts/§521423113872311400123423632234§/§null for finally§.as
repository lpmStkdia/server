package §521423113872311400123423632234§
{
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Object3DContainer;
   import flash.utils.Dictionary;
   
   public class §null for finally§ implements §5214239833239846123423632234§
   {
      
      private var §521423172712317284123423632234§:Object3DContainer;
      
      private const §521423188262318839123423632234§:Dictionary = new Dictionary();
      
      public function §null for finally§(param1:Object3DContainer = null)
      {
         super();
         this.§521423172712317284123423632234§ = new Object3DContainer();
         this.§521423126332312646123423632234§(param1);
      }
      
      public function §521423156382315651123423632234§(param1:Object3D, param2:int) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Parameter is null");
         }
         if(!this.§521423188262318839123423632234§[param1])
         {
            this.§521423188262318839123423632234§[param1] = true;
            this.§521423172712317284123423632234§.addChildAt(param1,param2);
         }
      }
      
      public function §521423126332312646123423632234§(param1:Object3DContainer) : void
      {
         var _loc2_:Vector.<Object3D> = this.§finally const implements§();
         this.§521423172712317284123423632234§ = param1 || new Object3DContainer();
         this.§native const dynamic§(_loc2_);
      }
      
      private function §finally const implements§() : Vector.<Object3D>
      {
         var _loc1_:* = undefined;
         var _loc2_:Vector.<Object3D> = new Vector.<Object3D>();
         for(_loc1_ in this.§521423188262318839123423632234§)
         {
            delete this.§521423188262318839123423632234§[_loc1_];
            this.§521423172712317284123423632234§.removeChild(_loc1_);
            _loc2_.push(_loc1_);
         }
         return _loc2_;
      }
      
      public function §521423189332318946123423632234§(param1:Object3D) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Parameter is null");
         }
         if(this.§521423188262318839123423632234§[param1])
         {
            delete this.§521423188262318839123423632234§[param1];
            this.§521423172712317284123423632234§.removeChild(param1);
         }
      }
      
      public function §native const dynamic§(param1:Vector.<Object3D>) : void
      {
         var _loc2_:Object3D = null;
         if(param1 == null)
         {
            throw new ArgumentError("Parameter is null");
         }
         for each(_loc2_ in param1)
         {
            this.§521423132922313305123423632234§(_loc2_);
         }
      }
      
      public function §521423132922313305123423632234§(param1:Object3D) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Parameter is null");
         }
         if(!this.§521423188262318839123423632234§[param1])
         {
            this.§521423188262318839123423632234§[param1] = true;
            this.§521423172712317284123423632234§.addChild(param1);
         }
      }
   }
}

