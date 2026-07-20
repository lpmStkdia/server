package alternativa.physics.collision.colliders
{
   import §521423122282312241123423632234§.§final while do§;
   import §5214231886231899123423632234§.§5214231214231227123423632234§;
   import §5214231886231899123423632234§.§521423132822313295123423632234§;
   import §521423188792318892123423632234§.§521423166662316679123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import §super return§.§dynamic function continue§;
   
   public class BoxBoxCollider implements §521423132822313295123423632234§
   {
      
      private static const §class var default§:§do function else§ = new §do function else§();
      
      private static const §in static§:§do function else§ = new §do function else§();
      
      private static const §case set while§:§do function else§ = new §do function else§();
      
      private static const §5214238671238684123423632234§:§do function else§ = new §do function else§();
      
      private static const §get const if§:§do function else§ = new §do function else§();
      
      private static const §each for try§:§do function else§ = new §do function else§();
      
      private static const §521423170612317074123423632234§:§do function else§ = new §do function else§();
      
      private static const §521423147212314734123423632234§:§do function else§ = new §do function else§();
      
      private static const §include set else§:Vector.<Vertex> = new <Vertex>[new Vertex(),new Vertex(),new Vertex(),new Vertex()];
      
      private static const §521423175752317588123423632234§:Vector.<Vertex> = new <Vertex>[new Vertex(),new Vertex(),new Vertex(),new Vertex()];
      
      private static const §521423132832313296123423632234§:§521423166662316679123423632234§ = new §521423166662316679123423632234§();
      
      private var §in use native§:Number;
      
      private const §521423119062311919123423632234§:§do function else§ = new §do function else§();
      
      private var §52142322923242123423632234§:Number;
      
      public function BoxBoxCollider(param1:Number)
      {
         super();
         this.§in use native§ = param1;
      }
      
      final private function f5d2dfed(param1:§dynamic function continue§, param2:§dynamic function continue§, param3:§do function else§, param4:§do function else§) : Boolean
      {
         var _loc5_:Number = this.getOverlapOnAxis(param1,param2,param3,param4);
         var _temp_2:* = this;
         var _temp_1:* = _loc5_;
         var _loc8_:§do function else§ = param3;
         var _loc7_:Number = _temp_1;
         var _loc6_:BoxBoxCollider = _temp_2;
         if(_loc7_ < _loc6_.§in use native§)
         {
            return false;
         }
         else
         {
            if(_loc7_ + _loc6_.§in use native§ < _loc6_.§52142322923242123423632234§)
            {
               _loc6_.§52142322923242123423632234§ = _loc7_;
               _loc6_.§521423119062311919123423632234§.x = _loc8_.x;
               _loc6_.§521423119062311919123423632234§.y = _loc8_.y;
               _loc6_.§521423119062311919123423632234§.§521423155722315585123423632234§ = _loc8_.§521423155722315585123423632234§;
            }
            return true;
         }
      }
      
      final private function findContacts(param1:§dynamic function continue§, param2:§dynamic function continue§, param3:§do function else§, param4:Vector.<§final while do§>) : void
      {
         var _loc8_:§521423166662316679123423632234§ = param1.§521423126962312709123423632234§;
         var _loc7_:§521423166662316679123423632234§ = param2.§521423126962312709123423632234§;
         var _loc5_:§do function else§ = §521423147212314734123423632234§;
         _loc5_.x = _loc8_.§5214233909233922123423632234§ - _loc7_.§5214233909233922123423632234§;
         _loc5_.y = _loc8_.§while while return§ - _loc7_.§while while return§;
         _loc5_.§521423155722315585123423632234§ = _loc8_.§dynamic finally false§ - _loc7_.§dynamic finally false§;
         if(param3.x * _loc5_.x + param3.y * _loc5_.y + param3.§521423155722315585123423632234§ * _loc5_.§521423155722315585123423632234§ < 0)
         {
            param3.x = -param3.x;
            param3.y = -param3.y;
            param3.§521423155722315585123423632234§ = -param3.§521423155722315585123423632234§;
         }
         var _loc6_:§521423166662316679123423632234§ = §521423132832313296123423632234§;
         ColliderUtils.buildContactBasis(param3,_loc8_,_loc7_,_loc6_);
         ColliderUtils.getBoxFaceVerticesInCCWOrder(param1,param3,FaceSide.§return use else§,§include set else§);
         ColliderUtils.getBoxFaceVerticesInCCWOrder(param2,param3,FaceSide.§521423109222310935123423632234§,§521423175752317588123423632234§);
         ColliderUtils.transformFaceToReferenceSpace(_loc6_,param1.§521423126962312709123423632234§,§include set else§,4);
         ColliderUtils.transformFaceToReferenceSpace(_loc6_,param2.§521423126962312709123423632234§,§521423175752317588123423632234§,4);
         PolygonsIntersectionUtils.findContacts(param1,§include set else§,4,param2,§521423175752317588123423632234§,4,_loc6_,param4);
      }
      
      public function getContacts(param1:§5214231214231227123423632234§, param2:§5214231214231227123423632234§, param3:Vector.<§final while do§>) : void
      {
         var _loc4_:§dynamic function continue§ = null;
         var _loc5_:§dynamic function continue§ = null;
         if(this.haveCollision(param1,param2))
         {
            _loc4_ = §dynamic function continue§(param1);
            _loc5_ = §dynamic function continue§(param2);
            var _temp_4:* = this;
            var _temp_3:* = _loc4_;
            var _temp_2:* = _loc5_;
            var _temp_1:* = this.§521423119062311919123423632234§;
            var _loc14_:Vector.<§final while do§> = param3;
            var _loc7_:§do function else§ = _temp_1;
            var _loc11_:§dynamic function continue§ = _temp_2;
            var _loc10_:§dynamic function continue§ = _temp_3;
            var _loc6_:BoxBoxCollider = _temp_4;
            var _loc13_:§521423166662316679123423632234§ = _loc10_.§521423126962312709123423632234§;
            var _loc12_:§521423166662316679123423632234§ = _loc11_.§521423126962312709123423632234§;
            var _loc8_:§do function else§ = alternativa.physics.collision.colliders.BoxBoxCollider.§521423147212314734123423632234§;
            _loc8_.x = _loc13_.§5214233909233922123423632234§ - _loc12_.§5214233909233922123423632234§;
            _loc8_.y = _loc13_.§while while return§ - _loc12_.§while while return§;
            _loc8_.§521423155722315585123423632234§ = _loc13_.§dynamic finally false§ - _loc12_.§dynamic finally false§;
            if(_loc7_.x * _loc8_.x + _loc7_.y * _loc8_.y + _loc7_.§521423155722315585123423632234§ * _loc8_.§521423155722315585123423632234§ < 0)
            {
               _loc7_.x = -_loc7_.x;
               _loc7_.y = -_loc7_.y;
               _loc7_.§521423155722315585123423632234§ = -_loc7_.§521423155722315585123423632234§;
            }
            var _loc9_:§521423166662316679123423632234§ = alternativa.physics.collision.colliders.BoxBoxCollider.§521423132832313296123423632234§;
            alternativa.physics.collision.colliders.ColliderUtils.buildContactBasis(_loc7_,_loc13_,_loc12_,_loc9_);
            alternativa.physics.collision.colliders.ColliderUtils.getBoxFaceVerticesInCCWOrder(_loc10_,_loc7_,alternativa.physics.collision.colliders.FaceSide.§return use else§,alternativa.physics.collision.colliders.BoxBoxCollider.§include set else§);
            alternativa.physics.collision.colliders.ColliderUtils.getBoxFaceVerticesInCCWOrder(_loc11_,_loc7_,alternativa.physics.collision.colliders.FaceSide.§521423109222310935123423632234§,alternativa.physics.collision.colliders.BoxBoxCollider.§521423175752317588123423632234§);
            alternativa.physics.collision.colliders.ColliderUtils.transformFaceToReferenceSpace(_loc9_,_loc10_.§521423126962312709123423632234§,alternativa.physics.collision.colliders.BoxBoxCollider.§include set else§,4);
            alternativa.physics.collision.colliders.ColliderUtils.transformFaceToReferenceSpace(_loc9_,_loc11_.§521423126962312709123423632234§,alternativa.physics.collision.colliders.BoxBoxCollider.§521423175752317588123423632234§,4);
            alternativa.physics.collision.colliders.PolygonsIntersectionUtils.findContacts(_loc10_,alternativa.physics.collision.colliders.BoxBoxCollider.§include set else§,4,_loc11_,alternativa.physics.collision.colliders.BoxBoxCollider.§521423175752317588123423632234§,4,_loc9_,_loc14_);
            undefined;
         }
      }
      
      final private function e492fcdf(param1:Number, param2:§do function else§) : Boolean
      {
         if(param1 < this.§in use native§)
         {
            return false;
         }
         if(param1 + this.§in use native§ < this.§52142322923242123423632234§)
         {
            this.§52142322923242123423632234§ = param1;
            this.§521423119062311919123423632234§.x = param2.x;
            this.§521423119062311919123423632234§.y = param2.y;
            this.§521423119062311919123423632234§.§521423155722315585123423632234§ = param2.§521423155722315585123423632234§;
         }
         return true;
      }
      
      public function haveCollision(param1:§5214231214231227123423632234§, param2:§5214231214231227123423632234§) : Boolean
      {
         this.§52142322923242123423632234§ = 10000000000;
         var _loc4_:§dynamic function continue§ = §dynamic function continue§(param1);
         var _loc5_:§dynamic function continue§ = §dynamic function continue§(param2);
         var _loc7_:§521423166662316679123423632234§ = _loc4_.§521423126962312709123423632234§;
         var _loc6_:§521423166662316679123423632234§ = _loc5_.§521423126962312709123423632234§;
         var _loc3_:§do function else§ = §521423147212314734123423632234§;
         _loc3_.x = _loc7_.§5214233909233922123423632234§ - _loc6_.§5214233909233922123423632234§;
         _loc3_.y = _loc7_.§while while return§ - _loc6_.§while while return§;
         _loc3_.§521423155722315585123423632234§ = _loc7_.§dynamic finally false§ - _loc6_.§dynamic finally false§;
         §in static§.x = _loc7_.§5214232125232138123423632234§;
         §in static§.y = _loc7_.§default catch super§;
         §in static§.§521423155722315585123423632234§ = _loc7_.§return finally else§;
         var _temp_4:* = this;
         var _temp_3:* = _loc4_;
         var _temp_2:* = _loc5_;
         var _temp_1:* = §in static§;
         var _loc24_:§do function else§ = _loc3_;
         var _loc27_:§do function else§ = _temp_1;
         var _loc26_:§dynamic function continue§ = _temp_2;
         var _loc25_:§dynamic function continue§ = _temp_3;
         var _loc8_:BoxBoxCollider = _temp_4;
         var _loc23_:Number = Number(§§pop().getOverlapOnAxis(_loc25_,_loc26_,_loc27_,_loc24_));
         if(!_loc8_.e492fcdf(_loc23_,_loc27_))
         {
            return false;
         }
         §case set while§.x = _loc7_.§finally use true§;
         §case set while§.y = _loc7_.§set catch implements§;
         §case set while§.§521423155722315585123423632234§ = _loc7_.§521423190732319086123423632234§;
         var _temp_8:* = this;
         var _temp_7:* = _loc4_;
         var _temp_6:* = _loc5_;
         var _temp_5:* = §case set while§;
         var _loc29_:§do function else§ = _loc3_;
         var _loc32_:§do function else§ = _temp_5;
         var _loc31_:§dynamic function continue§ = _temp_6;
         var _loc30_:§dynamic function continue§ = _temp_7;
         var _loc9_:BoxBoxCollider = _temp_8;
         var _loc28_:Number = Number(§§pop().getOverlapOnAxis(_loc30_,_loc31_,_loc32_,_loc29_));
         if(!_loc9_.e492fcdf(_loc28_,_loc32_))
         {
            return false;
         }
         §5214238671238684123423632234§.x = _loc7_.§521423122302312243123423632234§;
         §5214238671238684123423632234§.y = _loc7_.§final else§;
         §5214238671238684123423632234§.§521423155722315585123423632234§ = _loc7_.§5214237445237458123423632234§;
         var _temp_12:* = this;
         var _temp_11:* = _loc4_;
         var _temp_10:* = _loc5_;
         var _temp_9:* = §5214238671238684123423632234§;
         var _loc34_:§do function else§ = _loc3_;
         var _loc37_:§do function else§ = _temp_9;
         var _loc36_:§dynamic function continue§ = _temp_10;
         var _loc35_:§dynamic function continue§ = _temp_11;
         var _loc10_:BoxBoxCollider = _temp_12;
         var _loc33_:Number = Number(§§pop().getOverlapOnAxis(_loc35_,_loc36_,_loc37_,_loc34_));
         if(!_loc10_.e492fcdf(_loc33_,_loc37_))
         {
            return false;
         }
         §get const if§.x = _loc6_.§5214232125232138123423632234§;
         §get const if§.y = _loc6_.§default catch super§;
         §get const if§.§521423155722315585123423632234§ = _loc6_.§return finally else§;
         var _temp_16:* = this;
         var _temp_15:* = _loc4_;
         var _temp_14:* = _loc5_;
         var _temp_13:* = §get const if§;
         var _loc39_:§do function else§ = _loc3_;
         var _loc42_:§do function else§ = _temp_13;
         var _loc41_:§dynamic function continue§ = _temp_14;
         var _loc40_:§dynamic function continue§ = _temp_15;
         var _loc11_:BoxBoxCollider = _temp_16;
         var _loc38_:Number = Number(§§pop().getOverlapOnAxis(_loc40_,_loc41_,_loc42_,_loc39_));
         if(!_loc11_.e492fcdf(_loc38_,_loc42_))
         {
            return false;
         }
         §each for try§.x = _loc6_.§finally use true§;
         §each for try§.y = _loc6_.§set catch implements§;
         §each for try§.§521423155722315585123423632234§ = _loc6_.§521423190732319086123423632234§;
         var _temp_20:* = this;
         var _temp_19:* = _loc4_;
         var _temp_18:* = _loc5_;
         var _temp_17:* = §each for try§;
         var _loc44_:§do function else§ = _loc3_;
         var _loc47_:§do function else§ = _temp_17;
         var _loc46_:§dynamic function continue§ = _temp_18;
         var _loc45_:§dynamic function continue§ = _temp_19;
         var _loc12_:BoxBoxCollider = _temp_20;
         var _loc43_:Number = Number(§§pop().getOverlapOnAxis(_loc45_,_loc46_,_loc47_,_loc44_));
         if(!_loc12_.e492fcdf(_loc43_,_loc47_))
         {
            return false;
         }
         §521423170612317074123423632234§.x = _loc6_.§521423122302312243123423632234§;
         §521423170612317074123423632234§.y = _loc6_.§final else§;
         §521423170612317074123423632234§.§521423155722315585123423632234§ = _loc6_.§5214237445237458123423632234§;
         var _temp_24:* = this;
         var _temp_23:* = _loc4_;
         var _temp_22:* = _loc5_;
         var _temp_21:* = §521423170612317074123423632234§;
         var _loc49_:§do function else§ = _loc3_;
         var _loc52_:§do function else§ = _temp_21;
         var _loc51_:§dynamic function continue§ = _temp_22;
         var _loc50_:§dynamic function continue§ = _temp_23;
         var _loc13_:BoxBoxCollider = _temp_24;
         var _loc48_:Number = Number(§§pop().getOverlapOnAxis(_loc50_,_loc51_,_loc52_,_loc49_));
         if(!_loc13_.e492fcdf(_loc48_,_loc52_))
         {
            return false;
         }
         var _temp_29:* = this;
         var _temp_28:* = _loc4_;
         var _temp_27:* = _loc5_;
         var _temp_26:* = §in static§;
         var _temp_25:* = §get const if§;
         var _loc59_:§do function else§ = _loc3_;
         var _loc60_:§do function else§ = _temp_25;
         var _loc61_:§do function else§ = _temp_26;
         var _loc55_:§dynamic function continue§ = _temp_27;
         var _loc54_:§dynamic function continue§ = _temp_28;
         var _loc14_:BoxBoxCollider = _temp_29;
         var _loc57_:§do function else§ = alternativa.physics.collision.colliders.BoxBoxCollider.§class var default§;
         _loc57_.x = _loc61_.y * _loc60_.§521423155722315585123423632234§ - _loc61_.§521423155722315585123423632234§ * _loc60_.y;
         _loc57_.y = _loc61_.§521423155722315585123423632234§ * _loc60_.x - _loc61_.x * _loc60_.§521423155722315585123423632234§;
         _loc57_.§521423155722315585123423632234§ = _loc61_.x * _loc60_.y - _loc61_.y * _loc60_.x;
         var _loc58_:Number = _loc57_.x * _loc57_.x + _loc57_.y * _loc57_.y + _loc57_.§521423155722315585123423632234§ * _loc57_.§521423155722315585123423632234§;
         var _loc56_:Number;
         var _loc53_:Number;
         if(!(_loc58_ < 1e-10 ? true : (_loc56_ = 1 / Math.sqrt(_loc58_),_loc57_.x *= _loc56_,_loc57_.y *= _loc56_,_loc57_.§521423155722315585123423632234§ *= _loc56_,_loc53_ = _loc14_.getOverlapOnAxis(_loc54_,_loc55_,_loc57_,_loc59_),_loc14_.e492fcdf(_loc53_,_loc57_))))
         {
            return false;
         }
         var _temp_39:* = this;
         var _temp_38:* = _loc4_;
         var _temp_37:* = _loc5_;
         var _temp_36:* = §in static§;
         var _temp_35:* = §each for try§;
         var _loc68_:§do function else§ = _loc3_;
         var _loc69_:§do function else§ = _temp_35;
         var _loc70_:§do function else§ = _temp_36;
         var _loc64_:§dynamic function continue§ = _temp_37;
         var _loc63_:§dynamic function continue§ = _temp_38;
         var _loc15_:BoxBoxCollider = _temp_39;
         var _loc66_:§do function else§ = alternativa.physics.collision.colliders.BoxBoxCollider.§class var default§;
         _loc66_.x = _loc70_.y * _loc69_.§521423155722315585123423632234§ - _loc70_.§521423155722315585123423632234§ * _loc69_.y;
         _loc66_.y = _loc70_.§521423155722315585123423632234§ * _loc69_.x - _loc70_.x * _loc69_.§521423155722315585123423632234§;
         _loc66_.§521423155722315585123423632234§ = _loc70_.x * _loc69_.y - _loc70_.y * _loc69_.x;
         var _loc67_:Number = _loc66_.x * _loc66_.x + _loc66_.y * _loc66_.y + _loc66_.§521423155722315585123423632234§ * _loc66_.§521423155722315585123423632234§;
         var _loc65_:Number;
         var _loc62_:Number;
         if(!(_loc67_ < 1e-10 ? true : (_loc65_ = 1 / Math.sqrt(_loc67_),_loc66_.x *= _loc65_,_loc66_.y *= _loc65_,_loc66_.§521423155722315585123423632234§ *= _loc65_,_loc62_ = _loc15_.getOverlapOnAxis(_loc63_,_loc64_,_loc66_,_loc68_),_loc15_.e492fcdf(_loc62_,_loc66_))))
         {
            return false;
         }
         var _temp_49:* = this;
         var _temp_48:* = _loc4_;
         var _temp_47:* = _loc5_;
         var _temp_46:* = §in static§;
         var _temp_45:* = §521423170612317074123423632234§;
         var _loc77_:§do function else§ = _loc3_;
         var _loc78_:§do function else§ = _temp_45;
         var _loc79_:§do function else§ = _temp_46;
         var _loc73_:§dynamic function continue§ = _temp_47;
         var _loc72_:§dynamic function continue§ = _temp_48;
         var _loc16_:BoxBoxCollider = _temp_49;
         var _loc75_:§do function else§ = alternativa.physics.collision.colliders.BoxBoxCollider.§class var default§;
         _loc75_.x = _loc79_.y * _loc78_.§521423155722315585123423632234§ - _loc79_.§521423155722315585123423632234§ * _loc78_.y;
         _loc75_.y = _loc79_.§521423155722315585123423632234§ * _loc78_.x - _loc79_.x * _loc78_.§521423155722315585123423632234§;
         _loc75_.§521423155722315585123423632234§ = _loc79_.x * _loc78_.y - _loc79_.y * _loc78_.x;
         var _loc76_:Number = _loc75_.x * _loc75_.x + _loc75_.y * _loc75_.y + _loc75_.§521423155722315585123423632234§ * _loc75_.§521423155722315585123423632234§;
         var _loc74_:Number;
         var _loc71_:Number;
         if(!(_loc76_ < 1e-10 ? true : (_loc74_ = 1 / Math.sqrt(_loc76_),_loc75_.x *= _loc74_,_loc75_.y *= _loc74_,_loc75_.§521423155722315585123423632234§ *= _loc74_,_loc71_ = _loc16_.getOverlapOnAxis(_loc72_,_loc73_,_loc75_,_loc77_),_loc16_.e492fcdf(_loc71_,_loc75_))))
         {
            return false;
         }
         var _temp_59:* = this;
         var _temp_58:* = _loc4_;
         var _temp_57:* = _loc5_;
         var _temp_56:* = §case set while§;
         var _temp_55:* = §get const if§;
         var _loc86_:§do function else§ = _loc3_;
         var _loc87_:§do function else§ = _temp_55;
         var _loc88_:§do function else§ = _temp_56;
         var _loc82_:§dynamic function continue§ = _temp_57;
         var _loc81_:§dynamic function continue§ = _temp_58;
         var _loc17_:BoxBoxCollider = _temp_59;
         var _loc84_:§do function else§ = alternativa.physics.collision.colliders.BoxBoxCollider.§class var default§;
         _loc84_.x = _loc88_.y * _loc87_.§521423155722315585123423632234§ - _loc88_.§521423155722315585123423632234§ * _loc87_.y;
         _loc84_.y = _loc88_.§521423155722315585123423632234§ * _loc87_.x - _loc88_.x * _loc87_.§521423155722315585123423632234§;
         _loc84_.§521423155722315585123423632234§ = _loc88_.x * _loc87_.y - _loc88_.y * _loc87_.x;
         var _loc85_:Number = _loc84_.x * _loc84_.x + _loc84_.y * _loc84_.y + _loc84_.§521423155722315585123423632234§ * _loc84_.§521423155722315585123423632234§;
         var _loc83_:Number;
         var _loc80_:Number;
         if(!(_loc85_ < 1e-10 ? true : (_loc83_ = 1 / Math.sqrt(_loc85_),_loc84_.x *= _loc83_,_loc84_.y *= _loc83_,_loc84_.§521423155722315585123423632234§ *= _loc83_,_loc80_ = _loc17_.getOverlapOnAxis(_loc81_,_loc82_,_loc84_,_loc86_),_loc17_.e492fcdf(_loc80_,_loc84_))))
         {
            return false;
         }
         var _temp_69:* = this;
         var _temp_68:* = _loc4_;
         var _temp_67:* = _loc5_;
         var _temp_66:* = §case set while§;
         var _temp_65:* = §each for try§;
         var _loc95_:§do function else§ = _loc3_;
         var _loc96_:§do function else§ = _temp_65;
         var _loc97_:§do function else§ = _temp_66;
         var _loc91_:§dynamic function continue§ = _temp_67;
         var _loc90_:§dynamic function continue§ = _temp_68;
         var _loc18_:BoxBoxCollider = _temp_69;
         var _loc93_:§do function else§ = alternativa.physics.collision.colliders.BoxBoxCollider.§class var default§;
         _loc93_.x = _loc97_.y * _loc96_.§521423155722315585123423632234§ - _loc97_.§521423155722315585123423632234§ * _loc96_.y;
         _loc93_.y = _loc97_.§521423155722315585123423632234§ * _loc96_.x - _loc97_.x * _loc96_.§521423155722315585123423632234§;
         _loc93_.§521423155722315585123423632234§ = _loc97_.x * _loc96_.y - _loc97_.y * _loc96_.x;
         var _loc94_:Number = _loc93_.x * _loc93_.x + _loc93_.y * _loc93_.y + _loc93_.§521423155722315585123423632234§ * _loc93_.§521423155722315585123423632234§;
         var _loc92_:Number;
         var _loc89_:Number;
         if(!(_loc94_ < 1e-10 ? true : (_loc92_ = 1 / Math.sqrt(_loc94_),_loc93_.x *= _loc92_,_loc93_.y *= _loc92_,_loc93_.§521423155722315585123423632234§ *= _loc92_,_loc89_ = _loc18_.getOverlapOnAxis(_loc90_,_loc91_,_loc93_,_loc95_),_loc18_.e492fcdf(_loc89_,_loc93_))))
         {
            return false;
         }
         var _temp_79:* = this;
         var _temp_78:* = _loc4_;
         var _temp_77:* = _loc5_;
         var _temp_76:* = §case set while§;
         var _temp_75:* = §521423170612317074123423632234§;
         var _loc104_:§do function else§ = _loc3_;
         var _loc105_:§do function else§ = _temp_75;
         var _loc106_:§do function else§ = _temp_76;
         var _loc100_:§dynamic function continue§ = _temp_77;
         var _loc99_:§dynamic function continue§ = _temp_78;
         var _loc19_:BoxBoxCollider = _temp_79;
         var _loc102_:§do function else§ = alternativa.physics.collision.colliders.BoxBoxCollider.§class var default§;
         _loc102_.x = _loc106_.y * _loc105_.§521423155722315585123423632234§ - _loc106_.§521423155722315585123423632234§ * _loc105_.y;
         _loc102_.y = _loc106_.§521423155722315585123423632234§ * _loc105_.x - _loc106_.x * _loc105_.§521423155722315585123423632234§;
         _loc102_.§521423155722315585123423632234§ = _loc106_.x * _loc105_.y - _loc106_.y * _loc105_.x;
         var _loc103_:Number = _loc102_.x * _loc102_.x + _loc102_.y * _loc102_.y + _loc102_.§521423155722315585123423632234§ * _loc102_.§521423155722315585123423632234§;
         var _loc101_:Number;
         var _loc98_:Number;
         if(!(_loc103_ < 1e-10 ? true : (_loc101_ = 1 / Math.sqrt(_loc103_),_loc102_.x *= _loc101_,_loc102_.y *= _loc101_,_loc102_.§521423155722315585123423632234§ *= _loc101_,_loc98_ = _loc19_.getOverlapOnAxis(_loc99_,_loc100_,_loc102_,_loc104_),_loc19_.e492fcdf(_loc98_,_loc102_))))
         {
            return false;
         }
         var _temp_89:* = this;
         var _temp_88:* = _loc4_;
         var _temp_87:* = _loc5_;
         var _temp_86:* = §5214238671238684123423632234§;
         var _temp_85:* = §get const if§;
         var _loc113_:§do function else§ = _loc3_;
         var _loc114_:§do function else§ = _temp_85;
         var _loc115_:§do function else§ = _temp_86;
         var _loc109_:§dynamic function continue§ = _temp_87;
         var _loc108_:§dynamic function continue§ = _temp_88;
         var _loc20_:BoxBoxCollider = _temp_89;
         var _loc111_:§do function else§ = alternativa.physics.collision.colliders.BoxBoxCollider.§class var default§;
         _loc111_.x = _loc115_.y * _loc114_.§521423155722315585123423632234§ - _loc115_.§521423155722315585123423632234§ * _loc114_.y;
         _loc111_.y = _loc115_.§521423155722315585123423632234§ * _loc114_.x - _loc115_.x * _loc114_.§521423155722315585123423632234§;
         _loc111_.§521423155722315585123423632234§ = _loc115_.x * _loc114_.y - _loc115_.y * _loc114_.x;
         var _loc112_:Number = _loc111_.x * _loc111_.x + _loc111_.y * _loc111_.y + _loc111_.§521423155722315585123423632234§ * _loc111_.§521423155722315585123423632234§;
         var _loc110_:Number;
         var _loc107_:Number;
         if(!(_loc112_ < 1e-10 ? true : (_loc110_ = 1 / Math.sqrt(_loc112_),_loc111_.x *= _loc110_,_loc111_.y *= _loc110_,_loc111_.§521423155722315585123423632234§ *= _loc110_,_loc107_ = _loc20_.getOverlapOnAxis(_loc108_,_loc109_,_loc111_,_loc113_),_loc20_.e492fcdf(_loc107_,_loc111_))))
         {
            return false;
         }
         var _temp_99:* = this;
         var _temp_98:* = _loc4_;
         var _temp_97:* = _loc5_;
         var _temp_96:* = §5214238671238684123423632234§;
         var _temp_95:* = §each for try§;
         var _loc122_:§do function else§ = _loc3_;
         var _loc123_:§do function else§ = _temp_95;
         var _loc124_:§do function else§ = _temp_96;
         var _loc118_:§dynamic function continue§ = _temp_97;
         var _loc117_:§dynamic function continue§ = _temp_98;
         var _loc21_:BoxBoxCollider = _temp_99;
         var _loc120_:§do function else§ = alternativa.physics.collision.colliders.BoxBoxCollider.§class var default§;
         _loc120_.x = _loc124_.y * _loc123_.§521423155722315585123423632234§ - _loc124_.§521423155722315585123423632234§ * _loc123_.y;
         _loc120_.y = _loc124_.§521423155722315585123423632234§ * _loc123_.x - _loc124_.x * _loc123_.§521423155722315585123423632234§;
         _loc120_.§521423155722315585123423632234§ = _loc124_.x * _loc123_.y - _loc124_.y * _loc123_.x;
         var _loc121_:Number = _loc120_.x * _loc120_.x + _loc120_.y * _loc120_.y + _loc120_.§521423155722315585123423632234§ * _loc120_.§521423155722315585123423632234§;
         var _loc119_:Number;
         var _loc116_:Number;
         if(!(_loc121_ < 1e-10 ? true : (_loc119_ = 1 / Math.sqrt(_loc121_),_loc120_.x *= _loc119_,_loc120_.y *= _loc119_,_loc120_.§521423155722315585123423632234§ *= _loc119_,_loc116_ = _loc21_.getOverlapOnAxis(_loc117_,_loc118_,_loc120_,_loc122_),_loc21_.e492fcdf(_loc116_,_loc120_))))
         {
            return false;
         }
         var _temp_109:* = this;
         var _temp_108:* = _loc4_;
         var _temp_107:* = _loc5_;
         var _temp_106:* = §5214238671238684123423632234§;
         var _temp_105:* = §521423170612317074123423632234§;
         var _loc131_:§do function else§ = _loc3_;
         var _loc132_:§do function else§ = _temp_105;
         var _loc133_:§do function else§ = _temp_106;
         var _loc127_:§dynamic function continue§ = _temp_107;
         var _loc126_:§dynamic function continue§ = _temp_108;
         var _loc22_:BoxBoxCollider = _temp_109;
         var _loc129_:§do function else§ = alternativa.physics.collision.colliders.BoxBoxCollider.§class var default§;
         _loc129_.x = _loc133_.y * _loc132_.§521423155722315585123423632234§ - _loc133_.§521423155722315585123423632234§ * _loc132_.y;
         _loc129_.y = _loc133_.§521423155722315585123423632234§ * _loc132_.x - _loc133_.x * _loc132_.§521423155722315585123423632234§;
         _loc129_.§521423155722315585123423632234§ = _loc133_.x * _loc132_.y - _loc133_.y * _loc132_.x;
         var _loc130_:Number = _loc129_.x * _loc129_.x + _loc129_.y * _loc129_.y + _loc129_.§521423155722315585123423632234§ * _loc129_.§521423155722315585123423632234§;
         var _loc128_:Number;
         var _loc125_:Number;
         return _loc130_ < 1e-10 ? true : (_loc128_ = 1 / Math.sqrt(_loc130_),_loc129_.x *= _loc128_,_loc129_.y *= _loc128_,_loc129_.§521423155722315585123423632234§ *= _loc128_,_loc125_ = _loc22_.getOverlapOnAxis(_loc126_,_loc127_,_loc129_,_loc131_),_loc22_.e492fcdf(_loc125_,_loc129_));
      }
      
      public function getOverlapOnAxis(param1:§dynamic function continue§, param2:§dynamic function continue§, param3:§do function else§, param4:§do function else§) : Number
      {
         var _loc7_:§521423166662316679123423632234§ = param1.§521423126962312709123423632234§;
         var _loc5_:Number = (_loc7_.§5214232125232138123423632234§ * param3.x + _loc7_.§default catch super§ * param3.y + _loc7_.§return finally else§ * param3.§521423155722315585123423632234§) * param1.§5214234336234349123423632234§.x;
         if(_loc5_ < 0)
         {
            _loc5_ = -_loc5_;
         }
         var _loc6_:Number = _loc5_;
         _loc5_ = (_loc7_.§finally use true§ * param3.x + _loc7_.§set catch implements§ * param3.y + _loc7_.§521423190732319086123423632234§ * param3.§521423155722315585123423632234§) * param1.§5214234336234349123423632234§.y;
         if(_loc5_ < 0)
         {
            _loc5_ = -_loc5_;
         }
         _loc6_ += _loc5_;
         _loc5_ = (_loc7_.§521423122302312243123423632234§ * param3.x + _loc7_.§final else§ * param3.y + _loc7_.§5214237445237458123423632234§ * param3.§521423155722315585123423632234§) * param1.§5214234336234349123423632234§.§521423155722315585123423632234§;
         if(_loc5_ < 0)
         {
            _loc5_ = -_loc5_;
         }
         _loc6_ += _loc5_;
         _loc7_ = param2.§521423126962312709123423632234§;
         _loc5_ = (_loc7_.§5214232125232138123423632234§ * param3.x + _loc7_.§default catch super§ * param3.y + _loc7_.§return finally else§ * param3.§521423155722315585123423632234§) * param2.§5214234336234349123423632234§.x;
         if(_loc5_ < 0)
         {
            _loc5_ = -_loc5_;
         }
         _loc6_ += _loc5_;
         _loc5_ = (_loc7_.§finally use true§ * param3.x + _loc7_.§set catch implements§ * param3.y + _loc7_.§521423190732319086123423632234§ * param3.§521423155722315585123423632234§) * param2.§5214234336234349123423632234§.y;
         if(_loc5_ < 0)
         {
            _loc5_ = -_loc5_;
         }
         _loc6_ += _loc5_;
         _loc5_ = (_loc7_.§521423122302312243123423632234§ * param3.x + _loc7_.§final else§ * param3.y + _loc7_.§5214237445237458123423632234§ * param3.§521423155722315585123423632234§) * param2.§5214234336234349123423632234§.§521423155722315585123423632234§;
         if(_loc5_ < 0)
         {
            _loc5_ = -_loc5_;
         }
         _loc6_ += _loc5_;
         _loc5_ = param4.x * param3.x + param4.y * param3.y + param4.§521423155722315585123423632234§ * param3.§521423155722315585123423632234§;
         if(_loc5_ < 0)
         {
            _loc5_ = -_loc5_;
         }
         return _loc6_ - _loc5_;
      }
      
      final private function d4ab432(param1:§dynamic function continue§, param2:§dynamic function continue§, param3:§do function else§, param4:§do function else§, param5:§do function else§) : Boolean
      {
         var _loc8_:§do function else§ = §class var default§;
         _loc8_.x = param3.y * param4.§521423155722315585123423632234§ - param3.§521423155722315585123423632234§ * param4.y;
         _loc8_.y = param3.§521423155722315585123423632234§ * param4.x - param3.x * param4.§521423155722315585123423632234§;
         _loc8_.§521423155722315585123423632234§ = param3.x * param4.y - param3.y * param4.x;
         var _loc9_:Number = _loc8_.x * _loc8_.x + _loc8_.y * _loc8_.y + _loc8_.§521423155722315585123423632234§ * _loc8_.§521423155722315585123423632234§;
         if(_loc9_ < 1e-10)
         {
            return true;
         }
         var _loc7_:Number = 1 / Math.sqrt(_loc9_);
         _loc8_.x *= _loc7_;
         _loc8_.y *= _loc7_;
         _loc8_.§521423155722315585123423632234§ *= _loc7_;
         var _loc6_:Number = this.getOverlapOnAxis(param1,param2,_loc8_,param5);
         var _temp_7:* = this;
         var _temp_6:* = _loc6_;
         var _loc12_:§do function else§ = _loc8_;
         var _loc11_:Number = _temp_6;
         var _loc10_:BoxBoxCollider = _temp_7;
         if(_loc11_ < _loc10_.§in use native§)
         {
            return false;
         }
         else
         {
            if(_loc11_ + _loc10_.§in use native§ < _loc10_.§52142322923242123423632234§)
            {
               _loc10_.§52142322923242123423632234§ = _loc11_;
               _loc10_.§521423119062311919123423632234§.x = _loc12_.x;
               _loc10_.§521423119062311919123423632234§.y = _loc12_.y;
               _loc10_.§521423119062311919123423632234§.§521423155722315585123423632234§ = _loc12_.§521423155722315585123423632234§;
            }
            return true;
         }
      }
   }
}

