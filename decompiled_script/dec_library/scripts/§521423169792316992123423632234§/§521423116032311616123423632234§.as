package §521423169792316992123423632234§
{
   import §521423111492311162123423632234§.§catch catch continue§;
   import §521423113872311400123423632234§.§5214239833239846123423632234§;
   import §5214231749231762123423632234§.§521423110902311103123423632234§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Sprite3D;
   import §while function break§.§521423139462313959123423632234§;
   import §while function break§.§521423152702315283123423632234§;
   
   public class §521423116032311616123423632234§ extends §521423139462313959123423632234§ implements §521423110902311103123423632234§
   {
      
      private var §final use try§:Sprite3D;
      
      private var §catch set static§:int;
      
      private var §5214231249231262123423632234§:int;
      
      private var §use set continue§:Number;
      
      private var §if use class§:Number;
      
      private var §throw super extends§:Number;
      
      private var x:Number;
      
      private var y:Number;
      
      private var §521423155722315585123423632234§:Number;
      
      private var §52142367123684123423632234§:Object3D;
      
      private var §521423172712317284123423632234§:§5214239833239846123423632234§;
      
      public function §521423116032311616123423632234§(param1:§521423152702315283123423632234§)
      {
         super(param1);
         this.§final use try§ = new Sprite3D(10,10);
      }
      
      public function §5214233261233274123423632234§(param1:int, param2:§catch catch continue§) : Boolean
      {
         var _loc3_:Number = NaN;
         if(this.§521423155722315585123423632234§ >= this.§use set continue§)
         {
            return false;
         }
         this.§final use try§.x = this.§52142367123684123423632234§.x + this.x;
         this.§final use try§.y = this.§52142367123684123423632234§.y + this.y;
         this.§final use try§.z = this.§52142367123684123423632234§.z + this.§521423155722315585123423632234§;
         this.§5214231249231262123423632234§ += param1;
         if(this.§5214231249231262123423632234§ >= this.§catch set static§)
         {
            this.§521423155722315585123423632234§ += this.§use set continue§ * this.§throw super extends§ * param1 * 0.001;
            if(this.§521423155722315585123423632234§ < this.§if use class§)
            {
               this.§final use try§.alpha = this.§521423155722315585123423632234§ / this.§if use class§;
            }
            else
            {
               _loc3_ = (this.§521423155722315585123423632234§ - this.§if use class§) / (this.§use set continue§ - this.§if use class§);
               this.§final use try§.alpha = 1 - _loc3_ * _loc3_ * _loc3_ * _loc3_ * _loc3_ * _loc3_ * _loc3_ * _loc3_;
            }
            if(this.§final use try§.alpha < 0)
            {
               this.§final use try§.alpha = 0;
            }
            if(this.§final use try§.alpha > 1)
            {
               this.§final use try§.alpha = 1;
            }
         }
         else
         {
            this.§final use try§.alpha = 0;
         }
         return true;
      }
      
      public function §false use var§() : void
      {
         this.§521423172712317284123423632234§.§521423189332318946123423632234§(this.§final use try§);
         this.§521423172712317284123423632234§ = null;
         this.§final use try§.material = null;
         §override while override§();
      }
      
      public function §5214233338233351123423632234§() : void
      {
         this.§521423155722315585123423632234§ = this.§use set continue§;
         this.§final use try§.alpha = 0;
      }
      
      public function §5214239350239363123423632234§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Object3D, param12:TextureMaterial, param13:String) : void
      {
         this.§catch set static§ = param1;
         this.§final use try§.width = param2;
         this.§final use try§.height = param3;
         this.§final use try§.calculateBounds();
         this.§final use try§.rotation = param4;
         this.§use set continue§ = param5;
         this.§if use class§ = param6;
         this.§throw super extends§ = param7;
         this.x = param8;
         this.y = param9;
         this.§521423155722315585123423632234§ = param10;
         this.§52142367123684123423632234§ = param11;
         this.§final use try§.material = param12;
         this.§final use try§.softAttenuation = 150;
         this.§final use try§.depthMapAlphaThreshold = 2;
         this.§final use try§.shadowMapAlphaThreshold = 2;
         this.§final use try§.useShadowMap = false;
         this.§final use try§.useLight = false;
         this.§final use try§.blendMode = param13;
         this.§final use try§.alpha = 0;
         this.§5214231249231262123423632234§ = 0;
      }
      
      public function §case catch native§(param1:§5214239833239846123423632234§) : void
      {
         this.§521423172712317284123423632234§ = param1;
         param1.§521423132922313305123423632234§(this.§final use try§);
      }
   }
}

