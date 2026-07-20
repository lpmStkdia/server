package §5214231749231762123423632234§
{
   import §521423188792318892123423632234§.§521423136762313689123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import alternativa.engine3d.core.Object3D;
   
   public class §521423124642312477123423632234§
   {
      
      private static var §do null§:§do function else§ = new §do function else§();
      
      private static var §default function while§:§do function else§ = new §do function else§();
      
      private static var §5214231512231525123423632234§:§do function else§ = new §do function else§();
      
      private static var §else for with§:§do function else§ = new §do function else§();
      
      private static var §5214238359238372123423632234§:§do function else§ = new §do function else§();
      
      private static var §use set super§:§521423136762313689123423632234§ = new §521423136762313689123423632234§();
      
      private static var §5214239782239795123423632234§:§521423136762313689123423632234§ = new §521423136762313689123423632234§();
      
      public function §521423124642312477123423632234§()
      {
         super();
      }
      
      public static function §5214236997237010123423632234§(param1:Object3D) : void
      {
         param1.softAttenuation = 80;
         param1.useLight = false;
         param1.shadowMapAlphaThreshold = 2;
         param1.depthMapAlphaThreshold = 2;
         param1.useShadowMap = false;
      }
      
      public static function §5214232762232775123423632234§(param1:Object3D, param2:§do function else§, param3:§do function else§, param4:§do function else§) : void
      {
         var _loc6_:Number = NaN;
         if(param3.y < -0.99999 || param3.y > 0.99999)
         {
            §do null§.x = 0;
            §do null§.y = 0;
            §do null§.§521423155722315585123423632234§ = 1;
            _loc6_ = param3.y < 0 ? 3.141592653589793 : 0;
         }
         else
         {
            §do null§.x = param3.§521423155722315585123423632234§;
            §do null§.y = 0;
            §do null§.§521423155722315585123423632234§ = -param3.x;
            §do null§.§class while dynamic§();
            _loc6_ = Math.acos(param3.y);
         }
         §use set super§.§5214236019236032123423632234§(§do null§,_loc6_);
         §else for with§.x = param4.x - param2.x;
         §else for with§.y = param4.y - param2.y;
         §else for with§.§521423155722315585123423632234§ = param4.§521423155722315585123423632234§ - param2.§521423155722315585123423632234§;
         var _loc5_:Number = §else for with§.x * param3.x + §else for with§.y * param3.y + §else for with§.§521423155722315585123423632234§ * param3.§521423155722315585123423632234§;
         §else for with§.x -= _loc5_ * param3.x;
         §else for with§.y -= _loc5_ * param3.y;
         §else for with§.§521423155722315585123423632234§ -= _loc5_ * param3.§521423155722315585123423632234§;
         §else for with§.§class while dynamic§();
         §use set super§.§do finally implements§(§do function else§.§5214234759234772123423632234§,§5214238359238372123423632234§);
         _loc5_ = §5214238359238372123423632234§.x * §else for with§.x + §5214238359238372123423632234§.y * §else for with§.y + §5214238359238372123423632234§.§521423155722315585123423632234§ * §else for with§.§521423155722315585123423632234§;
         §default function while§.x = §5214238359238372123423632234§.y * §else for with§.§521423155722315585123423632234§ - §5214238359238372123423632234§.§521423155722315585123423632234§ * §else for with§.y;
         §default function while§.y = §5214238359238372123423632234§.§521423155722315585123423632234§ * §else for with§.x - §5214238359238372123423632234§.x * §else for with§.§521423155722315585123423632234§;
         §default function while§.§521423155722315585123423632234§ = §5214238359238372123423632234§.x * §else for with§.y - §5214238359238372123423632234§.y * §else for with§.x;
         §default function while§.§class while dynamic§();
         _loc6_ = Math.acos(_loc5_);
         §5214239782239795123423632234§.§5214236019236032123423632234§(§default function while§,_loc6_);
         §use set super§.§5214238971238984123423632234§(§5214239782239795123423632234§);
         §use set super§.§521423186052318618123423632234§(§5214231512231525123423632234§);
         param1.rotationX = §5214231512231525123423632234§.x;
         param1.rotationY = §5214231512231525123423632234§.y;
         param1.rotationZ = §5214231512231525123423632234§.§521423155722315585123423632234§;
         param1.x = param2.x;
         param1.y = param2.y;
         param1.z = param2.§521423155722315585123423632234§;
      }
      
      public static function §521423105962310609123423632234§(param1:Object3D, param2:§do function else§, param3:§do function else§, param4:Boolean, param5:Number, param6:Number) : void
      {
         var _loc8_:Number = param2.x - param1.x;
         var _loc9_:Number = param2.y - param1.y;
         var _loc10_:Number = param2.§521423155722315585123423632234§ - param1.z;
         var _loc7_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_ + _loc10_ * _loc10_);
         _loc8_ /= _loc7_;
         _loc9_ /= _loc7_;
         _loc10_ /= _loc7_;
         var _loc11_:Number = Math.abs(_loc8_ * param3.x + _loc9_ * param3.y + _loc10_ * param3.§521423155722315585123423632234§);
         if(param4)
         {
            _loc11_ = 1 - _loc11_;
         }
         _loc11_ = Math.pow(_loc11_,param5);
         param1.alpha = 1 - _loc11_ / param6;
         if(param1.alpha < 0)
         {
            param1.alpha = 0;
         }
      }
   }
}

