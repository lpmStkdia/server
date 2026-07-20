package §while package while§
{
   import §521423188792318892123423632234§.§do function else§;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   
   public class §5214234739234752123423632234§ extends Mesh
   {
      
      private var §default finally get§:Vertex;
      
      private var §do var catch§:Vertex;
      
      private var §native var else§:Vertex;
      
      private var §const function override§:Vertex;
      
      public var §import const do§:Number = 0;
      
      public var §5214239064239077123423632234§:§do function else§ = new §do function else§();
      
      public var §finally package case§:§do function else§ = new §do function else§();
      
      public var §default use class§:Boolean = false;
      
      public function §5214234739234752123423632234§()
      {
         super();
         this.§default finally get§ = addVertex(-1,1,0,0,0);
         this.§do var catch§ = addVertex(-1,0,0,0,1);
         this.§native var else§ = addVertex(1,0,0,1,1);
         this.§const function override§ = addVertex(1,1,0,1,0);
         addQuadFace(this.§default finally get§,this.§do var catch§,this.§native var else§,this.§const function override§);
         calculateFacesNormals();
      }
      
      public function §5214239350239363123423632234§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:TextureMaterial) : void
      {
         var _loc7_:Number = param1 / 2;
         this.§5214232064232077123423632234§(this.§default finally get§,-_loc7_,param4);
         this.§5214232064232077123423632234§(this.§do var catch§,-_loc7_,param3);
         this.§5214232064232077123423632234§(this.§native var else§,_loc7_,param3);
         this.§5214232064232077123423632234§(this.§const function override§,_loc7_,param4);
         this.alpha = param2;
         this.§import const do§ = param5;
         setMaterialToAllFaces(param6);
      }
      
      public function §52142367423687123423632234§() : void
      {
         setMaterialToAllFaces(null);
         this.§default use class§ = false;
      }
      
      private function §5214232064232077123423632234§(param1:Vertex, param2:Number, param3:Number) : void
      {
         param1.x = param2;
         param1.y = param3;
      }
   }
}

