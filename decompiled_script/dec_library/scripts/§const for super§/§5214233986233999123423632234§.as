package §const for super§
{
   import §521423143792314392123423632234§.§521423120902312103123423632234§;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.SkyBox;
   import §extends const override§.§5214239913239926123423632234§;
   import §implements use var§.§5214232504232517123423632234§;
   import §true catch false§.§52142358423597123423632234§;
   
   public class §5214233986233999123423632234§ extends SkyBox
   {
      
      public static var §package super return§:§521423120902312103123423632234§;
      
      private static const §true var null§:int = 200000;
      
      private var §5214233609233622123423632234§:§5214232504232517123423632234§;
      
      private var §521423108602310873123423632234§:Boolean;
      
      public function §5214233986233999123423632234§(param1:§5214239913239926123423632234§, param2:Number)
      {
         var _loc4_:TextureMaterial = new TextureMaterial(param1.§true finally dynamic§.data);
         var _loc7_:TextureMaterial = new TextureMaterial(param1.§break while var§.data);
         var _loc8_:TextureMaterial = new TextureMaterial(param1.§521423129802312993123423632234§.data);
         var _loc6_:TextureMaterial = new TextureMaterial(param1.§521423165092316522123423632234§.data);
         var _loc3_:TextureMaterial = new TextureMaterial(param1.§throw var get§.data);
         var _loc5_:TextureMaterial = new TextureMaterial(param1.§521423180412318054123423632234§.data);
         super(200000,_loc4_,_loc7_,_loc6_,_loc8_,_loc5_,_loc3_,0);
         §5214233609233622123423632234§ = param1.§throw var get§;
         §521423108602310873123423632234§ = param2 == 0;
      }
      
      public function §native var with§() : void
      {
         if(!§521423108602310873123423632234§ || !§52142358423597123423632234§.§5214232292232305123423632234§)
         {
            return;
         }
         var _loc1_:Face = getSide("top");
         if(TextureMaterial(_loc1_.material).textureResource != null)
         {
            _loc1_.material.dispose();
         }
         if(§package super return§.§null use§ && §package super return§.§use while try§)
         {
            _loc1_ = getSide("bottom");
            if(TextureMaterial(_loc1_.material).textureResource != null)
            {
               _loc1_.material.dispose();
            }
         }
      }
      
      public function §521423120442312057123423632234§() : void
      {
         if(!§521423108602310873123423632234§ || !§52142358423597123423632234§.§5214232292232305123423632234§)
         {
            return;
         }
         var _loc1_:TextureMaterial = getSide("top").material as TextureMaterial;
         if(_loc1_.textureResource == null)
         {
            _loc1_.texture = §5214233609233622123423632234§.data;
         }
      }
   }
}

