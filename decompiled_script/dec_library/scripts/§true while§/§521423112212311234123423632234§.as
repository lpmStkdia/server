package §true while§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import flash.geom.Point;
   
   public class §521423112212311234123423632234§ extends §in while switch§
   {
      
      private var §else use override§:Number;
      
      private var §with switch switch§:Number;
      
      private var §5214231065231078123423632234§:Number;
      
      public function §521423112212311234123423632234§(param1:Number)
      {
         super();
         this.§5214231065231078123423632234§ = param1;
      }
      
      private static function §false const finally§(param1:Face) : Number
      {
         var _loc2_:Vector.<Vertex> = param1.vertices;
         return §521423174162317429123423632234§(_loc2_[0],_loc2_[1]);
      }
      
      private static function §521423174162317429123423632234§(param1:Vertex, param2:Vertex) : Number
      {
         var _loc5_:Number = param1.x - param2.x;
         var _loc7_:Number = param1.y - param2.y;
         var _loc8_:Number = param1.z - param2.z;
         var _loc9_:Number = Math.sqrt(_loc5_ * _loc5_ + _loc7_ * _loc7_ + _loc8_ * _loc8_);
         var _loc3_:Number = param1.u - param2.u;
         var _loc4_:Number = param1.v - param2.v;
         var _loc6_:Number = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         return _loc6_ / _loc9_;
      }
      
      override public function §521423111612311174123423632234§(param1:Number) : void
      {
         var _loc6_:int = 0;
         var _loc4_:Vertex = null;
         var _loc2_:Point = null;
         super.§521423111612311174123423632234§(param1);
         var _loc5_:Number = §throw finally extends§ * this.§with switch switch§ * this.§else use override§ % this.§5214231065231078123423632234§;
         var _loc3_:int = int(§implements var§.length);
         while(_loc6_ < _loc3_)
         {
            _loc4_ = §implements var§[_loc6_];
            _loc2_ = §true set super§[_loc6_];
            _loc4_.u = _loc2_.x + _loc5_;
            _loc4_.v = _loc2_.y;
            _loc6_++;
         }
      }
      
      override public function §5214239350239363123423632234§() : void
      {
         var _loc4_:Vertex = null;
         super.§5214239350239363123423632234§();
         this.§else use override§ = 0;
         for each(var _loc1_ in §super in§)
         {
            this.§else use override§ += §false const finally§(_loc1_);
         }
         this.§else use override§ /= §super in§.length;
         var _loc2_:Number = Infinity;
         var _loc6_:Number = Infinity;
         var _loc5_:Number = -Infinity;
         var _loc3_:Number = -Infinity;
         for each(var _loc7_ in §implements var§)
         {
            _loc4_ = _loc7_;
            if(_loc4_.x < _loc2_)
            {
               _loc2_ = Number(_loc4_.x);
            }
            if(_loc4_.z < _loc6_)
            {
               _loc6_ = Number(_loc4_.z);
            }
            if(_loc4_.x > _loc5_)
            {
               _loc5_ = Number(_loc4_.x);
            }
            if(_loc4_.z > _loc3_)
            {
               _loc3_ = Number(_loc4_.z);
            }
         }
         this.§with switch switch§ = (_loc5_ - _loc2_ + _loc3_ - _loc6_) / 4;
         §throw finally extends§ = 0;
      }
   }
}

