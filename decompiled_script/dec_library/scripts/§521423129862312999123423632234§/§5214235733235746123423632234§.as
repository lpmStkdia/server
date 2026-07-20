package §521423129862312999123423632234§
{
   import §521423111492311162123423632234§.§catch catch continue§;
   import §521423113872311400123423632234§.§5214239833239846123423632234§;
   import §5214231749231762123423632234§.§521423110902311103123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import §while function break§.§521423139462313959123423632234§;
   import §while function break§.§521423152702315283123423632234§;
   
   public class §5214235733235746123423632234§ extends §521423139462313959123423632234§ implements §521423110902311103123423632234§
   {
      
      private var §521423172712317284123423632234§:§5214239833239846123423632234§ = null;
      
      private var §5214234960234973123423632234§:Mesh = new Mesh();
      
      private var §5214231249231262123423632234§:Number = 0;
      
      private var §521423167132316726123423632234§:§do function else§ = new §do function else§();
      
      public function §5214235733235746123423632234§(param1:§521423152702315283123423632234§)
      {
         super(param1);
      }
      
      public function §false use var§() : void
      {
         if(this.§521423172712317284123423632234§ != null)
         {
            this.§521423172712317284123423632234§.§521423189332318946123423632234§(this.§5214234960234973123423632234§);
            this.§521423172712317284123423632234§ = null;
         }
         this.§5214234960234973123423632234§.setMaterialToAllFaces(null);
         §override while override§();
      }
      
      public function §case catch native§(param1:§5214239833239846123423632234§) : void
      {
         this.§521423172712317284123423632234§ = param1;
         param1.§521423132922313305123423632234§(this.§5214234960234973123423632234§);
      }
      
      public function §5214233338233351123423632234§() : void
      {
         this.§false use var§();
      }
      
      public function §5214233261233274123423632234§(param1:int, param2:§catch catch continue§) : Boolean
      {
         var _loc6_:Number = param1 / 1000;
         this.§5214231249231262123423632234§ += _loc6_;
         this.§5214234960234973123423632234§.x = this.§521423167132316726123423632234§.x;
         this.§5214234960234973123423632234§.y = this.§521423167132316726123423632234§.y;
         this.§5214234960234973123423632234§.z = this.§521423167132316726123423632234§.§521423155722315585123423632234§ + 80;
         var _loc7_:Number = 0.05555555555555555;
         var _loc4_:Number = 0.16666666666666666;
         var _loc5_:Number = 0.3333333333333333;
         if(this.§5214231249231262123423632234§ <= _loc7_)
         {
            this.§5214234960234973123423632234§.alpha = this.§5214231249231262123423632234§ / _loc4_;
            this.§5214234960234973123423632234§.visible = true;
         }
         else if(this.§5214231249231262123423632234§ <= _loc5_)
         {
            this.§5214234960234973123423632234§.alpha = 1 - (this.§5214231249231262123423632234§ - _loc4_) / (_loc5_ - _loc4_);
            this.§5214234960234973123423632234§.visible = true;
         }
         else
         {
            this.§5214234960234973123423632234§.visible = false;
         }
         var _loc3_:Number = _loc6_ * 6;
         this.§5214234960234973123423632234§.scaleX += _loc3_;
         this.§5214234960234973123423632234§.scaleY += _loc3_;
         return this.§5214234960234973123423632234§.visible;
      }
      
      public function §5214239350239363123423632234§(param1:§do function else§, param2:TextureMaterial) : void
      {
         var _loc6_:Number = NaN;
         _loc6_ = 2000;
         this.§521423167132316726123423632234§.§521423188292318842123423632234§(param1);
         var _loc7_:Vertex = this.§5214234960234973123423632234§.addVertex(-2000,2000,0,0,0);
         var _loc4_:Vertex = this.§5214234960234973123423632234§.addVertex(-2000,-2000,0,0,1);
         var _loc5_:Vertex = this.§5214234960234973123423632234§.addVertex(2000,-2000,0,1,1);
         var _loc3_:Vertex = this.§5214234960234973123423632234§.addVertex(2000,2000,0,1,0);
         this.§5214234960234973123423632234§.addQuadFace(_loc7_,_loc4_,_loc5_,_loc3_,param2);
         this.§5214234960234973123423632234§.addQuadFace(_loc7_,_loc3_,_loc5_,_loc4_,param2);
         this.§5214234960234973123423632234§.calculateFacesNormals();
         this.§5214234960234973123423632234§.calculateBounds();
         this.§5214234960234973123423632234§.useLight = false;
         this.§5214234960234973123423632234§.useShadowMap = false;
         this.§5214234960234973123423632234§.shadowMapAlphaThreshold = 2;
         this.§5214234960234973123423632234§.depthMapAlphaThreshold = 2;
         this.§5214234960234973123423632234§.blendMode = "add";
         this.§5214234960234973123423632234§.softAttenuation = 80;
         this.§5214234960234973123423632234§.scaleX = 1;
         this.§5214234960234973123423632234§.scaleY = 1;
         this.§5214234960234973123423632234§.scaleZ = 1;
         this.§5214231249231262123423632234§ = 0;
      }
   }
}

