package alternativa.physics.collision.colliders
{
   import §521423188792318892123423632234§.§521423166662316679123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import §super return§.§521423106262310639123423632234§;
   import §super return§.§5214232134232147123423632234§;
   import §super return§.§dynamic function continue§;
   
   public class ColliderUtils
   {
      
      private static const §use set§:§do function else§ = new §do function else§();
      
      private static const §5214233065233078123423632234§:§do function else§ = new §do function else§();
      
      public function ColliderUtils()
      {
         super();
      }
      
      public static function getTriangleFaceInCCWOrder(param1:§521423106262310639123423632234§, param2:§do function else§, param3:Vector.<Vertex>) : void
      {
         var _loc4_:Vertex = param3[0];
         _loc4_.§in var try§.x = param1.§get default§.x;
         _loc4_.§in var try§.y = param1.§get default§.y;
         _loc4_.§in var try§.§521423155722315585123423632234§ = 0;
         _loc4_ = param3[1];
         _loc4_.§in var try§.x = param1.§521423167262316739123423632234§.x;
         _loc4_.§in var try§.y = param1.§521423167262316739123423632234§.y;
         _loc4_.§in var try§.§521423155722315585123423632234§ = 0;
         _loc4_ = param3[2];
         _loc4_.§in var try§.x = param1.§521423183572318370123423632234§.x;
         _loc4_.§in var try§.y = param1.§521423183572318370123423632234§.y;
         _loc4_.§in var try§.§521423155722315585123423632234§ = 0;
         var _loc6_:§521423166662316679123423632234§ = param1.§521423126962312709123423632234§;
         var _loc5_:Number = param2.x * _loc6_.§521423122302312243123423632234§ + param2.y * _loc6_.§final else§ + param2.§521423155722315585123423632234§ * _loc6_.§5214237445237458123423632234§;
         if(_loc5_ < 0)
         {
            _loc4_ = param3[0];
            param3[0] = param3[2];
            param3[2] = _loc4_;
         }
      }
      
      public static function getBoxFaceVerticesInCCWOrder(param1:§dynamic function continue§, param2:§do function else§, param3:FaceSide, param4:Vector.<Vertex>) : void
      {
         var _loc11_:§do function else§ = null;
         var _loc12_:Vertex = null;
         var _loc10_:§521423166662316679123423632234§ = param1.§521423126962312709123423632234§;
         var _loc17_:int = 0;
         var _loc13_:Number = _loc10_.§5214232125232138123423632234§;
         var _loc15_:Number = _loc10_.§default catch super§;
         var _loc16_:Number = _loc10_.§return finally else§;
         var _loc5_:Number = _loc13_ * param2.x + _loc15_ * param2.y + _loc16_ * param2.§521423155722315585123423632234§;
         var _loc7_:Number = _loc5_ > 0 ? _loc5_ : -_loc5_;
         _loc13_ = _loc10_.§finally use true§;
         _loc15_ = _loc10_.§set catch implements§;
         _loc16_ = _loc10_.§521423190732319086123423632234§;
         var _loc6_:Number = _loc13_ * param2.x + _loc15_ * param2.y + _loc16_ * param2.§521423155722315585123423632234§;
         var _loc14_:Number = _loc6_ > 0 ? _loc6_ : -_loc6_;
         if(_loc14_ > _loc7_)
         {
            _loc7_ = _loc14_;
            _loc5_ = _loc6_;
            _loc17_ = 1;
         }
         _loc13_ = _loc10_.§521423122302312243123423632234§;
         _loc15_ = _loc10_.§final else§;
         _loc16_ = _loc10_.§5214237445237458123423632234§;
         _loc6_ = _loc13_ * param2.x + _loc15_ * param2.y + _loc16_ * param2.§521423155722315585123423632234§;
         _loc14_ = _loc6_ > 0 ? _loc6_ : -_loc6_;
         if(_loc14_ > _loc7_)
         {
            _loc5_ = _loc6_;
            _loc17_ = 2;
         }
         var _loc8_:Number = _loc5_ > 0 ? 1 : -1;
         if(param3 == FaceSide.§return use else§)
         {
            _loc8_ = -_loc8_;
         }
         var _loc9_:§do function else§ = param1.§5214234336234349123423632234§;
         switch(_loc17_)
         {
            case 0:
               _loc11_ = param4[0].§in var try§;
               _loc11_.x = _loc8_ * _loc9_.x;
               _loc11_.y = _loc9_.y;
               _loc11_.§521423155722315585123423632234§ = _loc9_.§521423155722315585123423632234§;
               _loc11_ = param4[1].§in var try§;
               _loc11_.x = _loc8_ * _loc9_.x;
               _loc11_.y = -_loc9_.y;
               _loc11_.§521423155722315585123423632234§ = _loc9_.§521423155722315585123423632234§;
               _loc11_ = param4[2].§in var try§;
               _loc11_.x = _loc8_ * _loc9_.x;
               _loc11_.y = -_loc9_.y;
               _loc11_.§521423155722315585123423632234§ = -_loc9_.§521423155722315585123423632234§;
               _loc11_ = param4[3].§in var try§;
               _loc11_.x = _loc8_ * _loc9_.x;
               _loc11_.y = _loc9_.y;
               _loc11_.§521423155722315585123423632234§ = -_loc9_.§521423155722315585123423632234§;
               break;
            case 1:
               _loc11_ = param4[0].§in var try§;
               _loc11_.x = _loc9_.x;
               _loc11_.y = _loc8_ * _loc9_.y;
               _loc11_.§521423155722315585123423632234§ = _loc9_.§521423155722315585123423632234§;
               _loc11_ = param4[1].§in var try§;
               _loc11_.x = _loc9_.x;
               _loc11_.y = _loc8_ * _loc9_.y;
               _loc11_.§521423155722315585123423632234§ = -_loc9_.§521423155722315585123423632234§;
               _loc11_ = param4[2].§in var try§;
               _loc11_.x = -_loc9_.x;
               _loc11_.y = _loc8_ * _loc9_.y;
               _loc11_.§521423155722315585123423632234§ = -_loc9_.§521423155722315585123423632234§;
               _loc11_ = param4[3].§in var try§;
               _loc11_.x = -_loc9_.x;
               _loc11_.y = _loc8_ * _loc9_.y;
               _loc11_.§521423155722315585123423632234§ = _loc9_.§521423155722315585123423632234§;
               break;
            case 2:
               _loc11_ = param4[0].§in var try§;
               _loc11_.x = _loc9_.x;
               _loc11_.y = _loc9_.y;
               _loc11_.§521423155722315585123423632234§ = _loc8_ * _loc9_.§521423155722315585123423632234§;
               _loc11_ = param4[1].§in var try§;
               _loc11_.x = -_loc9_.x;
               _loc11_.y = _loc9_.y;
               _loc11_.§521423155722315585123423632234§ = _loc8_ * _loc9_.§521423155722315585123423632234§;
               _loc11_ = param4[2].§in var try§;
               _loc11_.x = -_loc9_.x;
               _loc11_.y = -_loc9_.y;
               _loc11_.§521423155722315585123423632234§ = _loc8_ * _loc9_.§521423155722315585123423632234§;
               _loc11_ = param4[3].§in var try§;
               _loc11_.x = _loc9_.x;
               _loc11_.y = -_loc9_.y;
               _loc11_.§521423155722315585123423632234§ = _loc8_ * _loc9_.§521423155722315585123423632234§;
               break;
            default:
               throw new Error();
         }
         if(_loc5_ < 0)
         {
            _loc12_ = param4[0];
            param4[0] = param4[3];
            param4[3] = _loc12_;
            _loc12_ = param4[1];
            param4[1] = param4[2];
            param4[2] = _loc12_;
         }
      }
      
      public static function buildContactBasis(param1:§do function else§, param2:§521423166662316679123423632234§, param3:§521423166662316679123423632234§, param4:§521423166662316679123423632234§) : void
      {
         var _loc6_:§do function else§ = §use set§;
         var _loc5_:§do function else§ = §5214233065233078123423632234§;
         if(Math.abs(param1.x) < Math.abs(param1.y))
         {
            _loc6_.x = 0;
            _loc6_.y = param1.§521423155722315585123423632234§;
            _loc6_.§521423155722315585123423632234§ = -param1.y;
         }
         else
         {
            _loc6_.x = -param1.§521423155722315585123423632234§;
            _loc6_.y = 0;
            _loc6_.§521423155722315585123423632234§ = param1.x;
         }
         _loc6_.§class while dynamic§();
         _loc5_.x = param1.y * _loc6_.§521423155722315585123423632234§ - param1.§521423155722315585123423632234§ * _loc6_.y;
         _loc5_.y = param1.§521423155722315585123423632234§ * _loc6_.x - param1.x * _loc6_.§521423155722315585123423632234§;
         _loc5_.§521423155722315585123423632234§ = param1.x * _loc6_.y - param1.y * _loc6_.x;
         param4.§5214232125232138123423632234§ = _loc6_.x;
         param4.§default catch super§ = _loc6_.y;
         param4.§return finally else§ = _loc6_.§521423155722315585123423632234§;
         param4.§finally use true§ = _loc5_.x;
         param4.§set catch implements§ = _loc5_.y;
         param4.§521423190732319086123423632234§ = _loc5_.§521423155722315585123423632234§;
         param4.§521423122302312243123423632234§ = param1.x;
         param4.§final else§ = param1.y;
         param4.§5214237445237458123423632234§ = param1.§521423155722315585123423632234§;
      }
      
      public static function getRectFaceInCCWOrder(param1:§5214232134232147123423632234§, param2:§do function else§, param3:Vector.<Vertex>) : void
      {
         var _loc6_:§do function else§ = param1.§5214234336234349123423632234§;
         var _loc4_:Vertex = param3[0];
         _loc4_.§in var try§.x = _loc6_.x;
         _loc4_.§in var try§.y = _loc6_.y;
         _loc4_.§in var try§.§521423155722315585123423632234§ = 0;
         _loc4_ = param3[1];
         _loc4_.§in var try§.x = -_loc6_.x;
         _loc4_.§in var try§.y = _loc6_.y;
         _loc4_.§in var try§.§521423155722315585123423632234§ = 0;
         _loc4_ = param3[2];
         _loc4_.§in var try§.x = -_loc6_.x;
         _loc4_.§in var try§.y = -_loc6_.y;
         _loc4_.§in var try§.§521423155722315585123423632234§ = 0;
         _loc4_ = param3[3];
         _loc4_.§in var try§.x = _loc6_.x;
         _loc4_.§in var try§.y = -_loc6_.y;
         _loc4_.§in var try§.§521423155722315585123423632234§ = 0;
         var _loc7_:§521423166662316679123423632234§ = param1.§521423126962312709123423632234§;
         var _loc5_:Number = param2.x * _loc7_.§521423122302312243123423632234§ + param2.y * _loc7_.§final else§ + param2.§521423155722315585123423632234§ * _loc7_.§5214237445237458123423632234§;
         if(_loc5_ < 0)
         {
            _loc4_ = param3[0];
            param3[0] = param3[3];
            param3[3] = _loc4_;
            _loc4_ = param3[1];
            param3[1] = param3[2];
            param3[2] = _loc4_;
         }
      }
      
      public static function transformFaceToReferenceSpace(param1:§521423166662316679123423632234§, param2:§521423166662316679123423632234§, param3:Vector.<Vertex>, param4:int) : void
      {
         var _loc6_:int = 0;
         var _loc5_:Vertex = null;
         while(_loc6_ < param4)
         {
            _loc5_ = param3[_loc6_];
            param2.§do finally implements§(_loc5_.§in var try§,_loc5_.§521423118122311825123423632234§);
            param1.§52142383523848123423632234§(_loc5_.§521423118122311825123423632234§,_loc5_.§native set case§);
            _loc6_++;
         }
      }
   }
}

