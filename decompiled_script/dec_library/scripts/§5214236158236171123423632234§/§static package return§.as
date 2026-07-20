package §5214236158236171123423632234§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.materials.UVMatrixProvider;
   import alternativa.tanks.materials.TrackMaterial;
   import flash.geom.Matrix;
   import flash.utils.Dictionary;
   
   public class §static package return§
   {
      
      private var §set finally include§:UVMatrixProvider;
      
      private var §super in§:Vector.<Face>;
      
      private var §implements var§:Vector.<Vertex>;
      
      private var §521423192632319276123423632234§:Number;
      
      private var §native for class§:Number = 0;
      
      public function §static package return§()
      {
         super();
         this.§super in§ = new Vector.<Face>();
      }
      
      private static function §in var class§(param1:Vertex, param2:Vertex) : Number
      {
         var _loc5_:Number = param1.x - param2.x;
         var _loc6_:Number = param1.y - param2.y;
         var _loc7_:Number = param1.z - param2.z;
         var _loc9_:Number = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_ + _loc7_ * _loc7_);
         var _loc3_:Number = param1.u - param2.u;
         var _loc4_:Number = param1.v - param2.v;
         var _loc8_:Number = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         return _loc8_ / _loc9_;
      }
      
      private static function §521423145402314553123423632234§(param1:Face) : Number
      {
         var _loc2_:Vector.<Vertex> = param1.vertices;
         return §in var class§(_loc2_[0],_loc2_[1]);
      }
      
      public function §521423106192310632123423632234§(param1:Number) : void
      {
         var _loc2_:Matrix = null;
         this.§native for class§ += param1 * this.§521423192632319276123423632234§;
         if(this.§set finally include§ != null)
         {
            _loc2_ = this.§set finally include§.getMatrix();
            _loc2_.tx = this.§native for class§;
         }
      }
      
      public function §5214239350239363123423632234§() : void
      {
         var _loc3_:Vertex = null;
         var _loc2_:Number = 0;
         var _loc4_:Dictionary = new Dictionary();
         for each(var _loc1_ in this.§super in§)
         {
            for each(_loc3_ in _loc1_.vertices)
            {
               _loc4_[_loc3_] = true;
            }
            _loc2_ += §521423145402314553123423632234§(_loc1_);
         }
         this.§521423192632319276123423632234§ = _loc2_ / this.§super in§.length;
         this.§implements var§ = new Vector.<Vertex>();
         for(_loc3_ in _loc4_)
         {
            this.§implements var§[§implements var§.length] = _loc3_;
         }
      }
      
      public function §52142330323316123423632234§(param1:Face) : void
      {
         this.§super in§[§super in§.length] = param1;
      }
      
      public function §extends const class§(param1:Material) : void
      {
         var _loc3_:TrackMaterial = null;
         for each(var _loc2_ in this.§super in§)
         {
            _loc2_.material = param1;
         }
         if(param1 is TrackMaterial)
         {
            _loc3_ = param1 as TrackMaterial;
            this.§set finally include§ = _loc3_.uvMatrixProvider;
         }
      }
   }
}

