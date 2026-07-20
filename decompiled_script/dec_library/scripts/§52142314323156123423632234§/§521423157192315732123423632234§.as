package §52142314323156123423632234§
{
   import §521423188792318892123423632234§.§do function else§;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Sprite3D;
   
   public class §521423157192315732123423632234§ extends Sprite3D
   {
      
      private var §521423179332317946123423632234§:Number;
      
      private var §true set if§:§do function else§;
      
      private var §with switch switch§:Number;
      
      private var §import while use§:Number;
      
      public function §521423157192315732123423632234§(param1:TextureMaterial, param2:Number, param3:Number)
      {
         super(20,20,param1);
         softAttenuation = 80;
         useLight = false;
         useShadowMap = false;
         this.§with switch switch§ = param2;
         this.§import while use§ = param3;
         var _loc5_:Number = (Math.random() * 2 - 1) * 0.2;
         var _loc4_:Number = (Math.random() * 2 - 1) * 0.2;
         §true set if§ = new §do function else§(_loc5_,_loc4_,-1);
         §true set if§.§class while dynamic§();
         rotationZ = Math.random() * 3.141592653589793 * 2;
         this.§521423179332317946123423632234§ = Math.max(0.3,Math.random()) * 0.35;
      }
      
      public function §case const get§(param1:Camera3D) : void
      {
         x = param1.x + (Math.random() * 2 - 1) * §with switch switch§;
         y = param1.y + (Math.random() * 2 - 1) * §with switch switch§;
         z = param1.z + Math.random() * §import while use§;
      }
      
      public function §function const package§(param1:int, param2:Camera3D) : void
      {
         var _loc3_:Number = §521423179332317946123423632234§ * param1;
         x += §true set if§.x * _loc3_;
         y += §true set if§.y * _loc3_;
         z += §true set if§.§521423155722315585123423632234§ * _loc3_;
         if(z < param2.z - §with switch switch§ / 1.6)
         {
            §case const get§(param2);
         }
         rotationZ += 0.006;
      }
   }
}

