package §5214234326234339123423632234§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.objects.Mesh;
   
   internal class §with package break§ extends Mesh
   {
      
      public function §with package break§(param1:Number, param2:Material)
      {
         super();
         var _loc6_:Number = 4;
         var _loc7_:Number = 240 * param1;
         var _loc4_:Vertex = this.§var switch set§(-_loc6_,0,0,0,0);
         var _loc5_:Vertex = this.§var switch set§(_loc6_,0,0,0,1);
         var _loc3_:Vertex = this.§var switch set§(0,_loc7_,0,1,0.5);
         this.§521423189242318937123423632234§(_loc4_,_loc5_,_loc3_).material = param2;
         this.§521423189242318937123423632234§(_loc3_,_loc5_,_loc4_).material = param2;
         calculateFacesNormals(true);
         calculateBounds();
         blendMode = "screen";
         alpha = 0.3;
         shadowMapAlphaThreshold = 2;
         depthMapAlphaThreshold = 2;
         useShadowMap = false;
         useLight = false;
      }
      
      private function §521423189242318937123423632234§(param1:Vertex, param2:Vertex, param3:Vertex) : Face
      {
         var _loc4_:Face = null;
         _loc4_ = new Face();
         _loc4_.next = faceList;
         faceList = _loc4_;
         _loc4_.wrapper = new Wrapper();
         _loc4_.wrapper.vertex = param1;
         _loc4_.wrapper.next = new Wrapper();
         _loc4_.wrapper.next.vertex = param2;
         _loc4_.wrapper.next.next = new Wrapper();
         _loc4_.wrapper.next.next.vertex = param3;
         return _loc4_;
      }
      
      private function §var switch set§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Vertex
      {
         var _loc6_:Vertex = null;
         _loc6_ = new Vertex();
         _loc6_.next = vertexList;
         vertexList = _loc6_;
         _loc6_.x = param1;
         _loc6_.y = param2;
         _loc6_.z = param3;
         _loc6_.u = param4;
         _loc6_.v = param5;
         return _loc6_;
      }
   }
}

