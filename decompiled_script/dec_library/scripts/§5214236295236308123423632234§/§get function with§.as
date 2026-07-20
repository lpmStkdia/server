package §5214236295236308123423632234§
{
   import §521423124962312509123423632234§.§521423149802314993123423632234§;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.geom.Matrix;
   
   internal class §get function with§ extends Shape
   {
      
      private static const §in finally do§:int = 820;
      
      private static const §5214238142238155123423632234§:int = 750;
      
      private static const §5214237484237497123423632234§:int = 3;
      
      private static const §5214239053239066123423632234§:uint = 10937919;
      
      public function §get function with§()
      {
         super();
         var _loc2_:int = 35;
         var _loc4_:Graphics = graphics;
         _loc4_.beginFill(0,0);
         _loc4_.drawRect(0,0,820,85);
         _loc4_.endFill();
         var _loc6_:Matrix = new Matrix();
         _loc6_.createGradientBox(750,4,0,_loc2_);
         _loc4_.beginGradientFill("linear",[10937919,10937919,10937919],[0,1,0],[0,126,255],_loc6_);
         _loc4_.drawRect(_loc2_,4,750,3);
         _loc4_.drawRect(_loc2_,77,750,3);
         _loc4_.endFill();
         var _loc1_:int = 940;
         _loc6_.createGradientBox(_loc1_,400,0,_loc2_ - (_loc1_ - 750) / 2,-310);
         var _loc5_:Number = 10937919;
         var _loc3_:Number = 0.7;
         _loc4_.beginGradientFill("radial",[_loc5_,_loc5_],[_loc3_,0],§521423149802314993123423632234§.§with set extends§,_loc6_);
         _loc4_.drawRect(_loc2_,7,750,35);
         _loc4_.endFill();
         _loc6_.createGradientBox(_loc1_,400,0,_loc2_ - (_loc1_ - 750) / 2,-5);
         _loc4_.beginGradientFill("radial",[_loc5_,_loc5_],[_loc3_,0],§521423149802314993123423632234§.§with set extends§,_loc6_);
         _loc4_.drawRect(_loc2_,42,750,35);
         _loc4_.endFill();
      }
   }
}

