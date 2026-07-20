package §521423108152310828123423632234§
{
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §5214232574232587123423632234§ extends Sprite
   {
      
      private static const §with function static§:Number = 0.7853981633974483;
      
      private static const §static for super§:Number = 2.356194490192345;
      
      private static const §true use package§:Number = 3.9269908169872414;
      
      private static const §catch var each§:Number = 5.497787143782138;
      
      private static var §521423140442314057123423632234§:Vector.<Point> = new <Point>[new Point(1,0),new Point(1,1),new Point(0,1),new Point(0,0),new Point(0.5,0),new Point(0.5,0.5)];
      
      private var §5214239166239179123423632234§:Number;
      
      private var §521423161702316183123423632234§:Shape;
      
      private var §package var while§:Number = -1;
      
      public function §5214232574232587123423632234§(param1:int, param2:int)
      {
         super();
         this.§5214239166239179123423632234§ = param1;
         graphics.beginFill(0,0.7);
         graphics.drawRoundRect(0,0,param1,param1,param2);
         graphics.endFill();
         addChild(this.§521423161702316183123423632234§ = new Shape());
      }
      
      public function §continue use const§(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(§package var while§ == param1)
         {
            return;
         }
         §package var while§ = param1;
         var _loc5_:Number = 2 * 3.141592653589793 * param1;
         if(_loc5_ < 0.7853981633974483)
         {
            _loc7_ = 0;
            _loc4_ = 0.5 * §5214239166239179123423632234§ * (1 + Math.tan(_loc5_));
            _loc6_ = 0;
         }
         else if(_loc5_ < 2.356194490192345)
         {
            _loc7_ = 1;
            _loc4_ = §5214239166239179123423632234§;
            _loc6_ = 0.5 * §5214239166239179123423632234§ * (1 - 1 / Math.tan(_loc5_));
         }
         else if(_loc5_ < 3.9269908169872414)
         {
            _loc7_ = 2;
            _loc4_ = 0.5 * §5214239166239179123423632234§ * (1 - Math.tan(_loc5_));
            _loc6_ = §5214239166239179123423632234§;
         }
         else if(_loc5_ < 5.497787143782138)
         {
            _loc7_ = 3;
            _loc4_ = 0;
            _loc6_ = 0.5 * §5214239166239179123423632234§ * (1 + 1 / Math.tan(_loc5_));
         }
         else
         {
            _loc7_ = 4;
            _loc4_ = 0.5 * §5214239166239179123423632234§ * (1 + Math.tan(_loc5_));
            _loc6_ = 0;
         }
         var _loc3_:Graphics = §521423161702316183123423632234§.graphics;
         _loc3_.clear();
         var _loc2_:Point = §521423140442314057123423632234§[5];
         _loc3_.beginFill(16711680);
         _loc3_.moveTo(_loc4_,_loc6_);
         while(_loc7_ < 6)
         {
            _loc2_ = §521423140442314057123423632234§[_loc7_];
            _loc3_.lineTo(§5214239166239179123423632234§ * _loc2_.x,§5214239166239179123423632234§ * _loc2_.y);
            _loc7_++;
         }
         _loc3_.lineTo(_loc4_,_loc6_);
         _loc3_.endFill();
         mask = §521423161702316183123423632234§;
      }
   }
}

