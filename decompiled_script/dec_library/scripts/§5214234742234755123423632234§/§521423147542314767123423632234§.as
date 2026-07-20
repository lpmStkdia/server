package §5214234742234755123423632234§
{
   import §5214238500238513123423632234§.§521423124982312511123423632234§;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.objects.Mesh;
   import §do package throw§.§5214235116235129123423632234§;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   
   public class §521423147542314767123423632234§ extends Mesh implements §5214235116235129123423632234§
   {
      
      public static const §for set default§:Number = 1000;
      
      private var §else set super§:§521423124982312511123423632234§;
      
      private var §const package set§:Material;
      
      private var §package switch for§:Vector.<Face>;
      
      private var §return use class§:Vector.<Point> = new Vector.<Point>();
      
      private var §continue const class§:Vector.<Vector3D> = new Vector.<Vector3D>();
      
      public function §521423147542314767123423632234§(param1:Material, param2:§521423124982312511123423632234§)
      {
         super();
         this.§const package set§ = param1;
         this.§else set super§ = param2;
         useShadowMap = false;
         useLight = false;
         shadowMapAlphaThreshold = 2;
         depthMapAlphaThreshold = 2;
         this.§else while each§();
         param2.§52142329523308123423632234§().§include catch break§(this);
      }
      
      private function §else while each§() : void
      {
         var _loc1_:Vertex = null;
         var _loc2_:Vertex = null;
         var _loc4_:Vertex = null;
         var _loc5_:Number = 500;
         var _loc3_:Number = 500;
         this.§continue const class§[0] = new Vector3D(0,_loc3_,0);
         this.§continue const class§[1] = new Vector3D(-_loc5_,0,0);
         this.§continue const class§[2] = new Vector3D(0,-_loc3_,0);
         this.§continue const class§[3] = new Vector3D(_loc5_,0,0);
         this.§return use class§[0] = new Point(0.5,-0.5);
         this.§return use class§[1] = new Point(-0.5,0.5);
         this.§return use class§[2] = new Point(0.5,1.5);
         this.§return use class§[3] = new Point(1.5,0.5);
         this.§package switch for§ = new Vector.<Face>();
         _loc1_ = this.§var switch set§(-_loc5_,0,0,-0.5,0.5);
         _loc2_ = this.§var switch set§(0,0,0,0.5,0.5);
         _loc4_ = this.§var switch set§(0,_loc3_,0,0.5,-0.5);
         this.§package switch for§[0] = this.§521423189242318937123423632234§(_loc1_,_loc2_,_loc4_,this.§const package set§);
         _loc1_ = this.§var switch set§(0,-_loc3_,0,0.5,1.5);
         _loc2_ = this.§var switch set§(0,0,0,0.5,0.5);
         _loc4_ = this.§var switch set§(-_loc5_,0,0,-0.5,0.5);
         this.§package switch for§[1] = this.§521423189242318937123423632234§(_loc1_,_loc2_,_loc4_,this.§const package set§);
         _loc1_ = this.§var switch set§(_loc5_,0,0,1.5,0.5);
         _loc2_ = this.§var switch set§(0,0,0,0.5,0.5);
         _loc4_ = this.§var switch set§(0,-_loc3_,0,0.5,1.5);
         this.§package switch for§[2] = this.§521423189242318937123423632234§(_loc1_,_loc2_,_loc4_,this.§const package set§);
         _loc1_ = this.§var switch set§(0,_loc3_,0,0.5,-0.5);
         _loc2_ = this.§var switch set§(0,0,0,0.5,0.5);
         _loc4_ = this.§var switch set§(_loc5_,0,0,1.5,0.5);
         this.§package switch for§[3] = this.§521423189242318937123423632234§(_loc1_,_loc2_,_loc4_,this.§const package set§);
         _loc1_ = this.§var switch set§(0,0,0,0,0);
         _loc2_ = this.§var switch set§(0,0,0,0.5,0.5);
         _loc4_ = this.§var switch set§(0,0,0,0,0);
         this.§package switch for§[4] = this.§521423189242318937123423632234§(_loc1_,_loc2_,_loc4_,this.§const package set§);
      }
      
      public function render(param1:int, param2:int) : void
      {
         this.§import super const§(this.§else set super§.§52142329523308123423632234§().§default catch§());
      }
      
      private function §var switch set§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Vertex
      {
         var _loc6_:Vertex = null;
         _loc6_ = new Vertex();
         _loc6_.x = param1;
         _loc6_.y = param2;
         _loc6_.z = param3;
         _loc6_.u = param4;
         _loc6_.v = param5;
         _loc6_.next = vertexList;
         vertexList = _loc6_;
         return _loc6_;
      }
      
      private function §521423189242318937123423632234§(param1:Vertex, param2:Vertex, param3:Vertex, param4:Material) : Face
      {
         var _loc5_:Face = null;
         _loc5_ = new Face();
         _loc5_.material = param4;
         _loc5_.wrapper = new Wrapper();
         _loc5_.wrapper.vertex = param1;
         _loc5_.wrapper.next = new Wrapper();
         _loc5_.wrapper.next.vertex = param2;
         _loc5_.wrapper.next.next = new Wrapper();
         _loc5_.wrapper.next.next.vertex = param3;
         _loc5_.normalX = 0;
         _loc5_.normalY = 0;
         _loc5_.normalZ = 1;
         _loc5_.offset = 0;
         _loc5_.next = faceList;
         faceList = _loc5_;
         return _loc5_;
      }
      
      private function §import super const§(param1:Camera3D) : void
      {
         rotationX = param1.rotationX - 3.141592653589793;
         rotationY = 0;
         rotationZ = param1.rotationZ;
      }
   }
}

