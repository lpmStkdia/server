package §true while§
{
   import alternativa.engine3d.core.Vertex;
   import flash.geom.Point;
   
   public class §521423169902317003123423632234§ extends §in while switch§
   {
      
      private var §521423180162318029123423632234§:Number;
      
      private var §each for do§:Number;
      
      public function §521423169902317003123423632234§(param1:Number, param2:Number)
      {
         super();
         this.§521423180162318029123423632234§ = param1;
         this.§each for do§ = param2;
      }
      
      override public function §521423111612311174123423632234§(param1:Number) : void
      {
         var _loc8_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Vertex = null;
         var _loc7_:Point = null;
         super.§521423111612311174123423632234§(param1);
         var _loc6_:Number = Math.cos(§throw finally extends§);
         var _loc3_:Number = -Math.sin(§throw finally extends§);
         var _loc4_:int = 0;
         while(_loc4_ < §implements var§.length)
         {
            _loc2_ = §implements var§[_loc4_];
            _loc7_ = §true set super§[_loc4_];
            _loc8_ = _loc7_.x - this.§521423180162318029123423632234§;
            _loc5_ = _loc7_.y - this.§each for do§;
            _loc2_.u = _loc8_ * _loc6_ + _loc5_ * _loc3_ + this.§521423180162318029123423632234§;
            _loc2_.v = _loc8_ * _loc3_ - _loc5_ * _loc6_ + this.§each for do§;
            _loc4_++;
         }
      }
   }
}

