package §5214236035236048123423632234§
{
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.geom.Matrix;
   
   public class §null use throw§ extends Shape
   {
      
      public static const §while return§:int = 1;
      
      public static const §function for function§:int = 2;
      
      public static const §5214232227232240123423632234§:int = 3;
      
      public static const §5214235783235796123423632234§:int = 4;
      
      public static const §dynamic var continue§:int = 5;
      
      public static const §521423102492310262123423632234§:int = 6;
      
      public static const §each switch§:int = 7;
      
      public static const §52142366123674123423632234§:int = 8;
      
      public static const §with function package§:int = 9;
      
      public static const §521423136152313628123423632234§:int = 10;
      
      public static const §521423101382310151123423632234§:int = 11;
      
      public static const §var use else§:int = 12;
      
      public static const §set use extends§:int = 13;
      
      public static const §521423184482318461123423632234§:int = 14;
      
      public static const §false function finally§:int = 15;
      
      public static const §5214234436234449123423632234§:int = 16;
      
      public static const §const package with§:int = 17;
      
      public static const §return use use§:int = 18;
      
      public static const §521423110242311037123423632234§:int = 19;
      
      public static const §default catch finally§:int = 20;
      
      public static const §with for get§:int = 21;
      
      public static const §5214239484239497123423632234§:int = 22;
      
      private static var §native const break§:Matrix;
      
      private static const §switch for default§:Array = [1,1,1];
      
      private static const §static function const§:Array = [0,20,255];
      
      private static const §override package if§:Array = [7631988,7631988,3355443];
      
      private static const §521423162142316227123423632234§:Array = [10724259,10724259,4408131];
      
      private static const §continue package class§:Array = [421137,421137,796687];
      
      private static const §each package set§:Array = [367631,367631,994320];
      
      private static const §5214233514233527123423632234§:Array = [3628065,3628065,2640662];
      
      private static const §try catch implements§:Array = [5931839,5931839,4154919];
      
      private var type:int;
      
      private var §super set do§:Boolean;
      
      public function §null use throw§(param1:int = 1)
      {
         super();
         if(§native const break§ == null)
         {
            §native const break§ = new Matrix();
            §native const break§.createGradientBox(190,160,0,5,-15);
         }
         cacheAsBitmap = true;
         this.type = param1;
         this.§continue use const§();
      }
      
      public static function §521423106302310643123423632234§(param1:String) : int
      {
         switch(param1)
         {
            case "OFF_NORMAL":
               return 1;
            case "OFF_NORMAL_SELECTED":
               return 2;
            case "OFF_INSTALLED":
               return 1;
            case "OFF_INSTALLED_SELECTED":
               return 2;
            case "ENGINE_NORMAL":
               return 11;
            case "ENGINE_NORMAL_SELECTED":
               return 12;
            case "ENGINE_INSTALLED":
               return 13;
            case "ENGINE_INSTALLED_SELECTED":
               return 14;
            case "GUN_NORMAL":
               return 7;
            case "GUN_NORMAL_SELECTED":
               return 8;
            case "GUN_INSTALLED":
               return 9;
            case "GUN_INSTALLED_SELECTED":
               return 10;
            case "SHIELD_NORMAL":
               return 3;
            case "SHIELD_NORMAL_SELECTED":
               return 4;
            case "SHIELD_INSTALLED":
               return 5;
            case "SHIELD_INSTALLED_SELECTED":
               return 6;
            case "COLOR_NORMAL":
               return 15;
            case "COLOR_NORMAL_SELECTED":
               return 16;
            case "COLOR_INSTALLED":
               return 17;
            case "COLOR_INSTALLED_SELECTED":
               return 18;
            case "PLUGIN_NORMAL":
               return 19;
            case "PLUGIN_NORMAL_SELECTED":
               return 20;
            case "PLUGIN_INSTALLED":
               return 21;
            case "PLUGIN_INSTALLED_SELECTED":
               return 22;
            default:
               return 0;
         }
      }
      
      public function set §5214235187235200123423632234§(param1:Boolean) : void
      {
         this.§super set do§ = param1;
         this.§continue use const§();
      }
      
      private function §continue use const§() : void
      {
         var _loc12_:* = 0;
         var _loc10_:Array = null;
         var _loc6_:Graphics = graphics;
         var _loc5_:int = 2;
         switch(this.type)
         {
            case 1:
               _loc12_ = 7500402;
               _loc10_ = §override package if§;
               break;
            case 2:
               _loc12_ = 11513775;
               _loc5_ = 4;
               _loc10_ = §521423162142316227123423632234§;
               break;
            case 7:
            case 3:
            case 15:
            case 19:
            case 11:
               _loc12_ = 2981156;
               _loc10_ = §continue package class§;
               break;
            case 8:
            case 4:
            case 16:
            case 20:
            case 12:
               _loc12_ = 2336795;
               _loc5_ = 4;
               _loc10_ = §each package set§;
               break;
            case 9:
            case 5:
            case 17:
            case 21:
            case 13:
               _loc12_ = 8693863;
               _loc10_ = §5214233514233527123423632234§;
               break;
            case 10:
            case 6:
            case 18:
            case 22:
            case 14:
               _loc12_ = 9155185;
               _loc5_ = 4;
               _loc10_ = §try catch implements§;
         }
         _loc6_.lineStyle(_loc5_,_loc12_,1);
         _loc6_.beginGradientFill("radial",_loc10_,§switch for default§,§static function const§,§native const break§);
         var _loc3_:int = _loc5_ / 2;
         var _loc11_:int = _loc5_ == 4 ? 4 : 5;
         _loc6_.drawRoundRect(_loc3_,_loc3_,200 - _loc5_,130 - _loc5_,_loc11_,_loc11_);
         _loc6_.endFill();
         if(!this.§super set do§)
         {
            return;
         }
         _loc6_.beginFill(_loc12_);
         _loc6_.lineStyle(0,0,0);
         var _loc7_:int = 34;
         var _loc4_:int = 46;
         var _loc13_:int = (_loc4_ - _loc7_) / 2;
         var _loc2_:int = 77;
         var _loc1_:int = 123;
         _loc6_.moveTo(_loc2_ + _loc13_,_loc1_ + 0);
         _loc6_.lineTo(_loc2_ + _loc13_ + _loc7_,_loc1_ + 0);
         _loc6_.lineTo(_loc2_ + _loc4_,_loc1_ + 5);
         _loc6_.lineTo(_loc2_ + 0,_loc1_ + 5);
         _loc6_.lineTo(_loc2_ + _loc13_,_loc1_ + 0);
         var _loc9_:int = 44;
         var _loc8_:int = 54;
         _loc13_ = (_loc8_ - _loc9_) / 2;
         _loc2_ = 2;
         _loc1_ = 38;
         _loc6_.moveTo(_loc2_ + 5,_loc1_ + _loc13_);
         _loc6_.lineTo(_loc2_ + 5,_loc1_ + _loc13_ + _loc9_);
         _loc6_.lineTo(_loc2_ + 0,_loc1_ + _loc8_);
         _loc6_.lineTo(_loc2_ + 0,_loc1_ + 0);
         _loc6_.lineTo(_loc2_ + 5,_loc1_ + _loc13_);
         _loc2_ = 193;
         _loc6_.moveTo(_loc2_ + 0,_loc1_ + _loc13_);
         _loc6_.lineTo(_loc2_ + 0,_loc1_ + _loc13_ + _loc9_);
         _loc6_.lineTo(_loc2_ + 5,_loc1_ + _loc8_);
         _loc6_.lineTo(_loc2_ + 5,_loc1_ + 0);
         _loc6_.lineTo(_loc2_ + 0,_loc1_ + _loc13_);
         _loc13_ = (_loc4_ - _loc7_) / 2;
         _loc2_ = 77;
         _loc1_ = 2;
         _loc6_.moveTo(_loc2_ + 0,_loc1_ + 0);
         _loc6_.lineTo(_loc2_ + _loc4_,_loc1_ + 0);
         _loc6_.lineTo(_loc2_ + _loc13_ + _loc7_,_loc1_ + 5);
         _loc6_.lineTo(_loc2_ + _loc13_,_loc1_ + 5);
         _loc6_.lineTo(_loc2_ + 0,_loc1_ + 0);
         _loc6_.endFill();
      }
   }
}

