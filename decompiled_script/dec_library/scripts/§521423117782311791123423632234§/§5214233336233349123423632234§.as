package §521423117782311791123423632234§
{
   import §521423111492311162123423632234§.§catch catch continue§;
   import §521423113872311400123423632234§.§5214239833239846123423632234§;
   import §5214231749231762123423632234§.§521423110902311103123423632234§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.engine3d.objects.Sprite3D;
   import §while function break§.§521423139462313959123423632234§;
   import §while function break§.§521423152702315283123423632234§;
   
   public class §5214233336233349123423632234§ extends §521423139462313959123423632234§ implements §521423110902311103123423632234§
   {
      
      private static const §finally for throw§:Number = 0.006;
      
      private static const §52142318223195123423632234§:Number = 0.007;
      
      private var §521423172712317284123423632234§:§5214239833239846123423632234§;
      
      private var §final set class§:Sprite3D;
      
      public function §5214233336233349123423632234§(param1:§521423152702315283123423632234§)
      {
         super(param1);
         this.§final set class§ = new Sprite3D(60,60);
      }
      
      public function §5214233338233351123423632234§() : void
      {
         this.§final set class§.alpha = 0;
      }
      
      public function §case catch native§(param1:§5214239833239846123423632234§) : void
      {
         this.§521423172712317284123423632234§ = param1;
         param1.§521423132922313305123423632234§(this.§final set class§);
      }
      
      public function §false use var§() : void
      {
         if(this.§521423172712317284123423632234§)
         {
            this.§521423172712317284123423632234§.§521423189332318946123423632234§(this.§final set class§);
         }
         this.§521423172712317284123423632234§ = null;
         this.§final set class§.material = null;
         §override while override§();
      }
      
      public function §5214233261233274123423632234§(param1:int, param2:§catch catch continue§) : Boolean
      {
         this.§final set class§.scaleX -= 0.006;
         this.§final set class§.scaleY -= 0.006;
         this.§final set class§.scaleZ -= 0.006;
         this.§final set class§.alpha -= 0.007;
         if(this.§final set class§.alpha <= 0.05)
         {
            this.§521423172712317284123423632234§.§521423189332318946123423632234§(this.§final set class§);
            return false;
         }
         return true;
      }
      
      public function §5214239350239363123423632234§(param1:Mesh, param2:TextureMaterial) : void
      {
         this.§final set class§.material = param2;
         this.§final set class§.rotation = Math.random() * 3.141592653589793 * 2;
         this.§final set class§.scaleX = 1;
         this.§final set class§.scaleY = 1;
         this.§final set class§.scaleZ = 1;
         this.§final set class§.alpha = 1;
         this.§final set class§.x = param1.x;
         this.§final set class§.y = param1.y;
         this.§final set class§.z = param1.z;
      }
   }
}

