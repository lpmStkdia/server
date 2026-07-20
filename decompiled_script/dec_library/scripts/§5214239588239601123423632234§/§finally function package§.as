package §5214239588239601123423632234§
{
   import §5214232264232277123423632234§.§5214237893237906123423632234§;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.objects.Mesh;
   import flash.geom.ColorTransform;
   import §get package native§.§import switch include§;
   
   public class §finally function package§ extends §521423143492314362123423632234§
   {
      
      public static var §5214238041238054123423632234§:§import switch include§;
      
      private var §521423151222315135123423632234§:ColorTransform;
      
      private var §521423136462313659123423632234§:§5214237893237906123423632234§;
      
      public function §finally function package§(param1:§5214237893237906123423632234§, param2:Mesh)
      {
         super();
         this.§521423136462313659123423632234§ = param1;
         §52142367123684123423632234§ = this.§finally while null§(param2);
      }
      
      public function §5214238195238208123423632234§() : §5214237893237906123423632234§
      {
         return this.§521423136462313659123423632234§;
      }
      
      public function §throw finally while§(param1:Number) : void
      {
         §52142367123684123423632234§.scaleX = param1;
         §52142367123684123423632234§.scaleY = param1;
         §52142367123684123423632234§.scaleZ = param1;
      }
      
      public function §break const else§(param1:Number) : void
      {
         §52142367123684123423632234§.rotationZ = param1;
      }
      
      public function §521423109372310950123423632234§() : Number
      {
         return §52142367123684123423632234§.scaleX;
      }
      
      public function §5214239350239363123423632234§() : void
      {
         §52142367123684123423632234§.rotationX = 0;
         §52142367123684123423632234§.rotationY = 0;
         §52142367123684123423632234§.rotationZ = 0;
         this.§throw finally while§(1);
         §while use null§(1);
         §521423169132316926123423632234§(1);
         this.§521423151222315135123423632234§ = §5214238041238054123423632234§.§final for continue§();
         §52142367123684123423632234§.colorTransform = this.§521423151222315135123423632234§;
      }
      
      public function §5214239146239159123423632234§(param1:Number) : void
      {
         §52142367123684123423632234§.rotationZ += param1;
      }
      
      public function §override while override§() : void
      {
         §5214238410238423123423632234§();
         §52142367123684123423632234§.colorTransform = null;
         §521423142182314231123423632234§.§52142390723920123423632234§(this);
      }
      
      public function §try for return§(param1:ColorTransform) : void
      {
         if(this.§521423151222315135123423632234§ != null)
         {
            if(param1 == null)
            {
               §52142367123684123423632234§.colorTransform = this.§521423151222315135123423632234§;
            }
            else
            {
               §52142367123684123423632234§.colorTransform = param1;
            }
         }
         else
         {
            §52142367123684123423632234§.colorTransform = param1;
         }
      }
      
      private function §finally while null§(param1:Mesh) : Mesh
      {
         var _loc3_:Mesh = Mesh(param1.clone());
         var _loc2_:Face = param1.faces[0];
         _loc3_.setMaterialToAllFaces(_loc2_.material);
         _loc3_.sorting = 2;
         return _loc3_;
      }
   }
}

