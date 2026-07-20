package §class switch null§
{
   import alternativa.engine3d.containers.KDContainer;
   import alternativa.engine3d.core.Object3D;
   
   internal class §521423100882310101123423632234§ extends KDContainer
   {
      
      public static const §521423140472314060123423632234§:int = 18;
      
      private var §521423145732314586123423632234§:String;
      
      private var §5214235451235464123423632234§:Vector.<Object3D> = new Vector.<Object3D>(0);
      
      public var §52142311023123123423632234§:Boolean;
      
      public function §521423100882310101123423632234§(param1:int)
      {
         super();
         this.§521423145732314586123423632234§ = param1.toString();
         this.needCollectReceivers = false;
      }
      
      public function §5214239922239935123423632234§() : Boolean
      {
         return §5214235451235464123423632234§.length < 18;
      }
      
      public function §function const package§() : void
      {
         this.createTree(§5214235451235464123423632234§);
         §52142311023123123423632234§ = false;
      }
      
      public function §include for throw§(param1:Object3D) : void
      {
         this.§5214235451235464123423632234§[§5214235451235464123423632234§.length] = param1;
         param1.name = §521423145732314586123423632234§;
         §52142311023123123423632234§ = true;
         if(§var var super§.§true const function§ > 0)
         {
            return;
         }
         this.§function const package§();
      }
      
      public function §override switch switch§(param1:Object3D) : void
      {
         this.§5214235451235464123423632234§.removeAt(this.§5214235451235464123423632234§.indexOf(param1));
         §52142311023123123423632234§ = true;
         if(§var var super§.§true const function§ > 0)
         {
            return;
         }
         this.§function const package§();
      }
      
      public function §false use var§() : void
      {
         this.§5214235451235464123423632234§.length = 0;
         super.destroyTree();
      }
   }
}

