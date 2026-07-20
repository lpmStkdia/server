package §while finally default§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.objects.Mesh;
   
   internal class §class for override§ extends Mesh
   {
      
      private var §default finally get§:Vertex;
      
      private var §do var catch§:Vertex;
      
      private var §native var else§:Vertex;
      
      private var §const function override§:Vertex;
      
      private var §include const catch§:Face;
      
      public function §class for override§()
      {
         super();
         this.§default finally get§ = this.§var switch set§(-1,-1,0,0,1);
         this.§do var catch§ = this.§var switch set§(1,-1,0,1,1);
         this.§native var else§ = this.§var switch set§(1,0,0,1,0);
         this.§const function override§ = this.§var switch set§(-1,0,0,0,0);
         this.§include const catch§ = this.§5214235061235074123423632234§(this.§default finally get§,this.§do var catch§,this.§native var else§,this.§const function override§);
         calculateFacesNormals();
         sorting = 2;
         shadowMapAlphaThreshold = 2;
         depthMapAlphaThreshold = 2;
         useShadowMap = false;
         useLight = false;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc2_:Number = param1 / 2;
         boundMinX = this.§default finally get§.x = this.§const function override§.x = -_loc2_;
         boundMaxX = this.§do var catch§.x = this.§native var else§.x = _loc2_;
      }
      
      private function §var switch set§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Vertex
      {
         var _loc6_:Vertex = new Vertex();
         _loc6_.next = vertexList;
         vertexList = _loc6_;
         _loc6_.x = param1;
         _loc6_.y = param2;
         _loc6_.z = param3;
         _loc6_.u = param4;
         _loc6_.v = param5;
         return _loc6_;
      }
      
      public function set §521423135952313608123423632234§(param1:Number) : void
      {
         if(param1 < 10)
         {
            param1 = 10;
         }
         boundMinY = this.§default finally get§.y = this.§do var catch§.y = -param1;
      }
      
      public function get §521423135952313608123423632234§() : Number
      {
         return -this.§default finally get§.y;
      }
      
      public function §5214239350239363123423632234§(param1:Number, param2:Number, param3:Number, param4:Material) : void
      {
         alpha = 1;
         var _loc5_:Number = param1 / 2;
         boundMinX = this.§default finally get§.x = this.§const function override§.x = -_loc5_;
         boundMaxX = this.§do var catch§.x = this.§native var else§.x = _loc5_;
         boundMinY = this.§default finally get§.y = this.§do var catch§.y = -param2;
         boundMaxY = 0;
         boundMinZ = boundMaxZ = 0;
         this.§default finally get§.v = this.§do var catch§.v = param3;
         this.§include const catch§.material = param4;
      }
      
      private function §5214235061235074123423632234§(param1:Vertex, param2:Vertex, param3:Vertex, param4:Vertex) : Face
      {
         var _loc5_:Face = new Face();
         _loc5_.next = faceList;
         faceList = _loc5_;
         _loc5_.wrapper = new Wrapper();
         _loc5_.wrapper.vertex = param1;
         _loc5_.wrapper.next = new Wrapper();
         _loc5_.wrapper.next.vertex = param2;
         _loc5_.wrapper.next.next = new Wrapper();
         _loc5_.wrapper.next.next.vertex = param3;
         _loc5_.wrapper.next.next.next = new Wrapper();
         _loc5_.wrapper.next.next.next.vertex = param4;
         return _loc5_;
      }
   }
}

