package §521423111492311162123423632234§
{
   import §521423188792318892123423632234§.§521423136762313689123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import alternativa.engine3d.core.Camera3D;
   import §do package throw§.§const catch each§;
   
   public class §catch catch continue§ extends Camera3D
   {
      
      private static const §5214235071235084123423632234§:§521423136762313689123423632234§ = new §521423136762313689123423632234§();
      
      public var §finally package case§:§do function else§ = new §do function else§();
      
      public var §get const each§:§do function else§ = new §do function else§();
      
      public var §521423120852312098123423632234§:§do function else§ = new §do function else§();
      
      public var §import use finally§:§do function else§ = new §do function else§();
      
      public function §catch catch continue§()
      {
         super();
         nearClipping = 40;
         farClipping = 200000;
         z = 10000;
         rotationX = -0.01;
         diagramVerticalMargin = 35;
      }
      
      public function §default set if§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = Math.cos(rotationX);
         var _loc7_:Number = Math.sin(rotationX);
         var _loc8_:Number = Math.cos(rotationY);
         var _loc5_:Number = Math.sin(rotationY);
         _loc1_ = Math.cos(rotationZ);
         var _loc6_:Number = Math.sin(rotationZ);
         var _loc3_:Number = _loc1_ * _loc5_;
         var _loc4_:Number = _loc6_ * _loc5_;
         this.§get const each§.x = _loc1_ * _loc8_;
         this.§521423120852312098123423632234§.x = _loc3_ * _loc7_ - _loc6_ * _loc2_;
         this.§import use finally§.x = _loc3_ * _loc2_ + _loc6_ * _loc7_;
         this.§get const each§.y = _loc6_ * _loc8_;
         this.§521423120852312098123423632234§.y = _loc4_ * _loc7_ + _loc1_ * _loc2_;
         this.§import use finally§.y = _loc4_ * _loc2_ - _loc1_ * _loc7_;
         this.§get const each§.§521423155722315585123423632234§ = -_loc5_;
         this.§521423120852312098123423632234§.§521423155722315585123423632234§ = _loc8_ * _loc7_;
         this.§import use finally§.§521423155722315585123423632234§ = _loc8_ * _loc2_;
         this.§finally package case§.x = x;
         this.§finally package case§.y = y;
         this.§finally package case§.§521423155722315585123423632234§ = z;
      }
      
      public function §521423105832310596123423632234§(param1:§do function else§, param2:§do function else§) : void
      {
         §5214235071235084123423632234§.§set const get§(rotationX,rotationY,rotationZ);
         §5214235071235084123423632234§.§do finally implements§(param1,param2);
      }
      
      public function §5214239538239551123423632234§(param1:§do function else§) : void
      {
         x = param1.x;
         y = param1.y;
         z = param1.§521423155722315585123423632234§;
      }
      
      public function §521423146732314686123423632234§() : void
      {
         fov = §const catch each§.§include package native§(view.width,view.height);
      }
      
      public function §in catch false§(param1:§do function else§, param2:§do function else§) : void
      {
         §5214235071235084123423632234§.§set const get§(rotationX,rotationY,rotationZ);
         §5214235071235084123423632234§.§52142383523848123423632234§(param1,param2);
      }
   }
}

