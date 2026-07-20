package §5214231749231762123423632234§
{
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.objects.Mesh;
   
   public class §5214233710233723123423632234§ extends Mesh
   {
      
      protected var §default finally get§:Vertex;
      
      protected var §do var catch§:Vertex;
      
      protected var §native var else§:Vertex;
      
      protected var §const function override§:Vertex;
      
      private var §52142363223645123423632234§:Number;
      
      private var §continue function false§:Number;
      
      public function §5214233710233723123423632234§(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.§52142363223645123423632234§ = param3;
         this.§continue function false§ = param4;
         boundMinX = -param3 * param1;
         boundMaxX = boundMinX + param1;
         boundMinY = -param4 * param2;
         boundMaxY = boundMinY + param2;
         boundMinZ = 0;
         boundMaxZ = 0;
         var _loc7_:Vector.<Number> = new <Number>[boundMinX,boundMinY,0,boundMaxX,boundMinY,0,boundMaxX,boundMaxY,0,boundMinX,boundMaxY,0];
         var _loc6_:Vector.<Number> = new <Number>[0,1,1,1,1,0,0,0];
         var _loc5_:Vector.<int> = new <int>[4,0,1,2,3];
         addVerticesAndFaces(_loc7_,_loc6_,_loc5_,true);
         calculateFacesNormals();
         this.§521423185292318542123423632234§();
      }
      
      public function set width(param1:Number) : void
      {
         boundMinX = this.§default finally get§.x = this.§const function override§.x = -this.§52142363223645123423632234§ * param1;
         boundMaxX = this.§do var catch§.x = this.§native var else§.x = boundMinX + param1;
      }
      
      public function §if catch false§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         this.§default finally get§.u = param1;
         this.§default finally get§.v = param2;
         this.§do var catch§.u = param3;
         this.§do var catch§.v = param4;
         this.§native var else§.u = param5;
         this.§native var else§.v = param6;
         this.§const function override§.u = param7;
         this.§const function override§.v = param8;
      }
      
      public function resize(param1:Number, param2:Number) : void
      {
         this.width = param1;
         this.§521423135952313608123423632234§ = param2;
      }
      
      private function §521423185292318542123423632234§() : void
      {
         var _loc1_:Vector.<Vertex> = this.vertices;
         this.§default finally get§ = _loc1_[0];
         this.§do var catch§ = _loc1_[1];
         this.§native var else§ = _loc1_[2];
         this.§const function override§ = _loc1_[3];
      }
      
      public function set §521423135952313608123423632234§(param1:Number) : void
      {
         boundMinY = this.§default finally get§.y = this.§do var catch§.y = -this.§continue function false§ * param1;
         boundMaxY = this.§const function override§.y = this.§native var else§.y = boundMinY + param1;
      }
      
      public function get §521423135952313608123423632234§() : Number
      {
         return boundMaxY - boundMinY;
      }
   }
}

