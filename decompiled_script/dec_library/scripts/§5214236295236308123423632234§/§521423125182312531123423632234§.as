package §5214236295236308123423632234§
{
   import §521423124962312509123423632234§.§521423149802314993123423632234§;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.geom.Matrix;
   
   internal class §521423125182312531123423632234§ extends Shape
   {
      
      private static const §in finally do§:int = 820;
      
      private static const §5214238142238155123423632234§:int = 730;
      
      private static const §5214237484237497123423632234§:Number = 2.5;
      
      private static const §5214239053239066123423632234§:uint = 4292125;
      
      public function §521423125182312531123423632234§()
      {
         super();
         var _loc2_:int = 45;
         var _loc4_:Graphics = graphics;
         _loc4_.beginFill(0,0);
         _loc4_.drawRect(0,0,820,85);
         _loc4_.endFill();
         var _loc6_:Matrix = new Matrix();
         _loc6_.createGradientBox(730,4,0,_loc2_);
         _loc4_.beginGradientFill("linear",[4292125,4292125,4292125],[0,1,0],[0,126,255],_loc6_);
         _loc4_.drawRect(_loc2_,4.5,730,2.5);
         _loc4_.drawRect(_loc2_,77,730,2.5);
         _loc4_.endFill();
         var _loc1_:int = 940;
         _loc6_.createGradientBox(_loc1_,400,0,_loc2_ - (_loc1_ - 730) / 2,-310);
         var _loc5_:Number = 4292125;
         var _loc3_:Number = 0.5;
         _loc4_.beginGradientFill("radial",[_loc5_,_loc5_],[_loc3_,0],§521423149802314993123423632234§.§with set extends§,_loc6_,"pad","rgb");
         _loc4_.drawRect(_loc2_,7,730,35);
         _loc4_.endFill();
         _loc6_.createGradientBox(_loc1_,400,0,_loc2_ - (_loc1_ - 730) / 2,-5);
         _loc4_.beginGradientFill("radial",[_loc5_,_loc5_],[_loc3_,0],§521423149802314993123423632234§.§with set extends§,_loc6_,"pad","rgb");
         _loc4_.drawRect(_loc2_,42,730,35);
         _loc4_.endFill();
      }
   }
}

