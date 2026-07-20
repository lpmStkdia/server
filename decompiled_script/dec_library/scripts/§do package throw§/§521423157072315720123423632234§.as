package §do package throw§
{
   import §521423188792318892123423632234§.§521423136762313689123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import §5214238500238513123423632234§.§switch use static§;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.ShadowMap;
   import alternativa.engine3d.lights.DirectionalLight;
   
   public class §521423157072315720123423632234§
   {
      
      private static const §const super get§:int = 2048;
      
      private static const §native catch try§:Number = 0.5;
      
      private static const §for override§:Number = 10000;
      
      private static const §521423183762318389123423632234§:Number = 5000;
      
      private static const §import set native§:Number = 10000;
      
      private var §52142393223945123423632234§:§switch use static§;
      
      private var §static package default§:§switch use static§;
      
      private var §5214234458234471123423632234§:Number = 0;
      
      private var §finally set class§:Number = 0;
      
      private var §5214239064239077123423632234§:§do function else§ = new §do function else§(1,1,1);
      
      private var §const catch continue§:Camera3D;
      
      public function §521423157072315720123423632234§(param1:Camera3D)
      {
         super();
         param1.shadowMapStrength = 0;
         this.§const catch continue§ = param1;
      }
      
      private function §case use catch§() : void
      {
         var _loc2_:§521423136762313689123423632234§ = new §521423136762313689123423632234§();
         _loc2_.§set const get§(this.§5214234458234471123423632234§,0,this.§finally set class§);
         var _loc1_:§do function else§ = new §do function else§(0,1,0);
         _loc1_.§true switch override§(_loc2_);
         this.§5214239064239077123423632234§.x = _loc1_.x;
         this.§5214239064239077123423632234§.y = _loc1_.y;
         this.§5214239064239077123423632234§.§521423155722315585123423632234§ = _loc1_.§521423155722315585123423632234§;
      }
      
      public function §521423191432319156123423632234§() : void
      {
         this.§const catch continue§.directionalLight = new DirectionalLight(this.§52142393223945123423632234§.§521423115122311525123423632234§());
         this.§const catch continue§.directionalLight.lookAt(this.§5214239064239077123423632234§.x,this.§5214239064239077123423632234§.y,this.§5214239064239077123423632234§.§521423155722315585123423632234§);
         this.§const catch continue§.ambientColor = this.§static package default§.§521423115122311525123423632234§();
      }
      
      public function §521423143012314314123423632234§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§const catch continue§.shadowMap = new ShadowMap(4096,10240,16384,0.5,10000);
         }
         else
         {
            this.§const catch continue§.shadowMap = new ShadowMap(2048,5000,10000,0.5,10000);
         }
         this.§const catch continue§.shadowMapStrength = 1;
      }
      
      public function §function var while§() : void
      {
         this.§const catch continue§.directionalLight = null;
      }
      
      public function §throw set get§(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§52142393223945123423632234§ = new §switch use static§(param1);
         this.§static package default§ = new §switch use static§(param2);
         this.§52142393223945123423632234§.§5214231855231868123423632234§(this.§static package default§);
         this.§5214234458234471123423632234§ = param3;
         this.§finally set class§ = param4;
         this.§case use catch§();
      }
      
      public function §throw switch for§() : void
      {
         if(this.§const catch continue§.shadowMap != null)
         {
            this.§const catch continue§.shadowMap.dispose();
            this.§const catch continue§.shadowMap = null;
            this.§const catch continue§.shadowMapStrength = 0;
         }
      }
   }
}

