package §5214233693233706123423632234§
{
   import §5214234079234092123423632234§.§for package with§;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import flash.display.BitmapData;
   
   public class §5214239411239424123423632234§
   {
      
      public static var §final return§:§for package with§;
      
      private static const §native while static§:String = "display";
      
      private var §return catch§:Vector.<Mesh> = new Vector.<Mesh>();
      
      private var §super in§:Vector.<Face> = new Vector.<Face>();
      
      private var §const package set§:TextureMaterial;
      
      private var §521423105652310578123423632234§:BitmapData;
      
      public function §5214239411239424123423632234§()
      {
         super();
      }
      
      public function §finally switch default§(param1:BitmapData) : void
      {
         this.§521423105652310578123423632234§ = param1;
         this.§include while for§();
      }
      
      public function §5214231576231589123423632234§(param1:Mesh) : void
      {
         this.§return catch§[§return catch§.length] = param1;
         for each(var _loc2_ in param1.faces)
         {
            if(_loc2_.material.name == "display")
            {
               this.§super in§[§super in§.length] = _loc2_;
               if(this.§const package set§ == null)
               {
                  this.§const package set§ = TextureMaterial(_loc2_.material);
                  this.§include while for§();
               }
            }
         }
      }
      
      private function §5214238348238361123423632234§() : void
      {
         if(this.§return catch§.length > 0)
         {
            this.§const package set§.resolution = 1;
         }
      }
      
      public function §5214236074236087123423632234§(param1:Boolean) : void
      {
         if(!this.§const package set§)
         {
            return;
         }
         this.§const package set§.mipMapping = param1 ? 2 : 0;
      }
      
      private function §include while for§() : void
      {
         if(this.§const package set§ != null && this.§521423105652310578123423632234§ != null)
         {
            this.§const package set§.texture = this.§521423105652310578123423632234§;
            this.§5214238348238361123423632234§();
         }
      }
   }
}

