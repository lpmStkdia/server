package §native set set§
{
   import alternativa.engine3d.core.Camera3D;
   import flash.display.Shape;
   
   public class §with var null§ extends Shape
   {
      
      private const §do null§:Vector.<Number> = new <Number>[0,0,0,0,0,0];
      
      private var §5214233246233259123423632234§:int;
      
      public function §with var null§(param1:int)
      {
         super();
         this.§5214233246233259123423632234§ = param1;
      }
      
      public function get §5214239166239179123423632234§() : int
      {
         return this.§5214233246233259123423632234§;
      }
      
      public function §function const package§(param1:Camera3D) : void
      {
         var _loc3_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         graphics.clear();
         param1.composeMatrix();
         this.§do null§[0] = param1.ma;
         this.§do null§[1] = param1.mb;
         this.§do null§[2] = param1.me;
         this.§do null§[3] = param1.mf;
         this.§do null§[4] = param1.mi;
         this.§do null§[5] = param1.mj;
         var _loc2_:int = this.§5214233246233259123423632234§ / 2;
         var _loc4_:int = 16;
         while(_loc3_ < 6)
         {
            _loc5_ = this.§do null§[_loc3_] + 1;
            _loc6_ = this.§do null§[int(_loc3_ + 1)] + 1;
            graphics.lineStyle(0,255 << _loc4_);
            graphics.moveTo(_loc2_,_loc2_);
            graphics.lineTo(_loc2_ * _loc5_,_loc2_ * _loc6_);
            _loc3_ += 2;
            _loc4_ -= 8;
         }
      }
   }
}

