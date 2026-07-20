package §521423169792316992123423632234§
{
   import §521423111492311162123423632234§.§catch catch continue§;
   import §521423113872311400123423632234§.§5214239833239846123423632234§;
   import §5214231749231762123423632234§.§521423110902311103123423632234§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.materials.TextureMaterial;
   import §while function break§.§521423139462313959123423632234§;
   import §while function break§.§521423152702315283123423632234§;
   
   public class §false catch static§ extends §521423139462313959123423632234§ implements §521423110902311103123423632234§
   {
      
      private static const §521423189252318938123423632234§:Number = 300;
      
      private var §521423139842313997123423632234§:§false for use§;
      
      private var §catch set static§:int;
      
      private var §5214231249231262123423632234§:int;
      
      private var height:Number;
      
      private var §use set continue§:Number;
      
      private var §throw super extends§:Number;
      
      private var §521423168912316904123423632234§:Number;
      
      private var x:Number;
      
      private var y:Number;
      
      private var §521423155722315585123423632234§:Number;
      
      private var §5214237336237349123423632234§:Object3D;
      
      private var §521423172712317284123423632234§:§5214239833239846123423632234§;
      
      public function §false catch static§(param1:§521423152702315283123423632234§)
      {
         super(param1);
         this.§521423139842313997123423632234§ = new §false for use§(300);
         this.§521423139842313997123423632234§.blendMode = "add";
      }
      
      public function §5214233261233274123423632234§(param1:int, param2:§catch catch continue§) : Boolean
      {
         if(this.height >= this.§use set continue§ && this.§521423139842313997123423632234§.alpha <= 0)
         {
            return false;
         }
         this.§521423139842313997123423632234§.x = this.§5214237336237349123423632234§.x + this.x;
         this.§521423139842313997123423632234§.y = this.§5214237336237349123423632234§.y + this.y;
         this.§521423139842313997123423632234§.z = this.§5214237336237349123423632234§.z + this.§521423155722315585123423632234§;
         this.§521423139842313997123423632234§.rotationZ = param2.rotationZ;
         this.§5214231249231262123423632234§ += param1;
         if(this.§5214231249231262123423632234§ >= this.§catch set static§)
         {
            if(this.height < this.§use set continue§)
            {
               this.height += this.§use set continue§ * this.§throw super extends§ * param1 * 0.001;
               if(this.height >= this.§use set continue§)
               {
                  this.height = this.§use set continue§;
               }
               this.§521423139842313997123423632234§.scaleZ = this.height / 300;
               this.§521423139842313997123423632234§.alpha = this.height / this.§use set continue§;
            }
            else
            {
               this.§521423139842313997123423632234§.alpha -= this.§521423168912316904123423632234§ * param1 * 0.001;
               if(this.§521423139842313997123423632234§.alpha < 0)
               {
                  this.§521423139842313997123423632234§.alpha = 0;
               }
            }
         }
         return true;
      }
      
      public function §5214239350239363123423632234§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Object3D, param11:TextureMaterial) : void
      {
         this.§catch set static§ = param1;
         this.§521423139842313997123423632234§.scaleX = param2 / 300;
         this.height = param3;
         this.§use set continue§ = param4;
         this.§throw super extends§ = param5;
         this.§521423168912316904123423632234§ = param6;
         this.x = param7;
         this.y = param8;
         this.§521423155722315585123423632234§ = param9;
         this.§5214237336237349123423632234§ = param10;
         this.§521423139842313997123423632234§.§5214239350239363123423632234§(param11);
         this.§521423139842313997123423632234§.softAttenuation = 150;
         this.§521423139842313997123423632234§.depthMapAlphaThreshold = 2;
         this.§521423139842313997123423632234§.shadowMapAlphaThreshold = 2;
         this.§521423139842313997123423632234§.useShadowMap = false;
         this.§521423139842313997123423632234§.useLight = false;
         this.§521423139842313997123423632234§.alpha = 0;
         this.§5214231249231262123423632234§ = 0;
      }
      
      public function §false use var§() : void
      {
         this.§521423172712317284123423632234§.§521423189332318946123423632234§(this.§521423139842313997123423632234§);
         this.§521423172712317284123423632234§ = null;
         this.§5214237336237349123423632234§ = null;
         this.§521423139842313997123423632234§.§52142367423687123423632234§();
         §override while override§();
      }
      
      public function §case catch native§(param1:§5214239833239846123423632234§) : void
      {
         this.§521423172712317284123423632234§ = param1;
         param1.§521423132922313305123423632234§(this.§521423139842313997123423632234§);
      }
      
      public function §5214233338233351123423632234§() : void
      {
         this.height = this.§use set continue§;
         this.§521423139842313997123423632234§.alpha = 0;
      }
   }
}

