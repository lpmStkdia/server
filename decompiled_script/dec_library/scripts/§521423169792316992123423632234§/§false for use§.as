package §521423169792316992123423632234§
{
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   
   public class §false for use§ extends Mesh
   {
      
      public function §false for use§(param1:Number)
      {
         super();
         var _loc4_:Number = param1 / 2;
         var _loc6_:Number = 0;
         var _loc2_:Vertex = addVertex(-_loc4_,0,param1 + _loc6_,0,0);
         var _loc3_:Vertex = addVertex(-_loc4_,0,0 + _loc6_,0,1);
         var _loc5_:Vertex = addVertex(_loc4_,0,0 + _loc6_,1,1);
         var _loc7_:Vertex = addVertex(_loc4_,0,param1 + _loc6_,1,0);
         addQuadFace(_loc2_,_loc3_,_loc5_,_loc7_);
         sorting = 2;
         calculateBounds();
         calculateFacesNormals();
      }
      
      public function §5214239350239363123423632234§(param1:TextureMaterial) : void
      {
         setMaterialToAllFaces(param1);
      }
      
      public function §52142367423687123423632234§() : void
      {
         setMaterialToAllFaces(null);
      }
   }
}

