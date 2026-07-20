package §5214236295236308123423632234§
{
   import §521423124962312509123423632234§.§521423149802314993123423632234§;
   import §521423138512313864123423632234§.§finally function return§;
   import §521423150222315035123423632234§.§include use override§;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.filters.DropShadowFilter;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §521423162252316238123423632234§ extends §include use override§
   {
      
      private static const §implements for static§:int = 8;
      
      private static const §function package false§:int = 280;
      
      private static var §521423152462315259123423632234§:Array = [10156098,3637010];
      
      private var §include finally import§:§finally function return§ = new §finally function return§();
      
      public function §521423162252316238123423632234§(param1:int, param2:int)
      {
         super();
         §include finally import§.x = 280 + 5;
         §include finally import§.y = -3;
         §include finally import§.bold = true;
         §include finally import§.color = 7707721;
         var _loc5_:Number = Math.round(param2 / param1 * 100);
         §include finally import§.text = param2.toString() + "/" + param1.toString();
         addChild(§include finally import§);
         var _loc3_:Shape = new Shape();
         addChild(_loc3_);
         var _loc4_:Graphics = _loc3_.graphics;
         _loc4_.lineStyle(1,4226077,0.9);
         _loc4_.drawRect(0,2,280,8);
         _loc3_.filters = [new DropShadowFilter(2,90,0,0.8,3,2)];
         var _loc7_:Shape = new Shape();
         addChild(_loc7_);
         _loc4_ = _loc7_.graphics;
         var _loc6_:Matrix = new Matrix();
         _loc6_.createGradientBox(1,8 + 1,3.141592653589793 * 0.5,0,1);
         _loc4_.beginGradientFill("linear",§521423152462315259123423632234§,§521423149802314993123423632234§.§521423532366123423632234§,§521423149802314993123423632234§.§with set extends§,_loc6_);
         if(_loc5_ > 0)
         {
            _loc4_.drawRect(1,2,(280 - 1) * _loc5_ / 100,8);
         }
         _loc4_.endFill();
         _loc4_.beginFill(0,0);
         _loc4_.drawRect(0,2,280,8);
         _loc4_.endFill();
         if(param1 == param2)
         {
            this.transform.colorTransform = new ColorTransform(1.15,1.15,1.15);
         }
      }
   }
}

