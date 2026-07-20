package §for in§
{
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §521423117672311780123423632234§ extends Sprite
   {
      
      private var §class package false§:Shape = new Shape();
      
      public function §521423117672311780123423632234§()
      {
         super();
         this.§catch while continue§();
         addChild(this.§class package false§);
         addEventListener("mouseDown",this.§5214231992232005123423632234§);
         addEventListener("mouseUp",this.§5214231992232005123423632234§);
         addEventListener("mouseOut",this.§5214231992232005123423632234§);
      }
      
      private function §5214231992232005123423632234§(param1:MouseEvent) : void
      {
         this.§class package false§.y = param1.type == "mouseDown" ? 1 : 0;
      }
      
      private function §catch while continue§() : void
      {
         var _loc4_:Graphics = this.§class package false§.graphics;
         _loc4_.beginFill(15987699,0);
         _loc4_.drawRect(2,2,17,17);
         _loc4_.endFill();
         _loc4_.beginFill(15987699);
         var _loc5_:int = 10;
         var _loc2_:int = _loc5_ + 4;
         _loc4_.moveTo(_loc2_ + 6,_loc5_ + 0);
         _loc4_.lineTo(_loc2_ + 6,_loc5_ + 6.5);
         _loc4_.lineTo(_loc2_ - 0.2,_loc5_ + 0);
         _loc4_.lineTo(_loc2_ + 6,_loc5_ + 0);
         _loc2_ = _loc5_ - 10;
         var _loc1_:int = _loc5_ - 5;
         _loc4_.moveTo(_loc2_ + 0,_loc1_ + 6);
         _loc4_.lineTo(_loc2_ + 6,_loc1_ + 6);
         _loc4_.lineTo(_loc2_ + 0,_loc1_ - 1.5);
         _loc4_.lineTo(_loc2_ + 0,_loc1_ + 6);
         _loc4_.lineStyle(3.9,15987699);
         var _loc9_:Number = 8;
         var _loc3_:Number = 0.5;
         var _loc6_:Number = 2.5132741228718345;
         var _loc8_:Number = 0.18;
         _loc4_.endFill();
         _loc4_.moveTo(_loc5_ + _loc9_ * Math.cos(_loc3_),_loc5_ + _loc9_ * Math.sin(_loc3_));
         var _loc7_:Number = _loc3_;
         while(_loc7_ <= _loc6_)
         {
            _loc4_.lineTo(_loc5_ + _loc9_ * Math.cos(_loc7_),_loc5_ + _loc9_ * Math.sin(_loc7_));
            _loc7_ += _loc8_;
         }
         _loc3_ = -2.741592653589793;
         _loc6_ = -0.5;
         _loc4_.moveTo(_loc5_ + _loc9_ * Math.cos(_loc3_),_loc5_ + _loc9_ * Math.sin(_loc3_));
         _loc7_ = _loc3_;
         while(_loc7_ <= _loc6_)
         {
            _loc4_.lineTo(_loc5_ + _loc9_ * Math.cos(_loc7_),_loc5_ + _loc9_ * Math.sin(_loc7_));
            _loc7_ += _loc8_;
         }
         _loc4_.endFill();
      }
   }
}

