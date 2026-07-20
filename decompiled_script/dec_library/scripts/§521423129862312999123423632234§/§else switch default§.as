package §521423129862312999123423632234§
{
   import §521423111492311162123423632234§.§catch catch continue§;
   import §521423113872311400123423632234§.§5214239833239846123423632234§;
   import §5214231749231762123423632234§.§521423110902311103123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Sprite3D;
   import §while function break§.§521423139462313959123423632234§;
   import §while function break§.§521423152702315283123423632234§;
   
   public class §else switch default§ extends §521423139462313959123423632234§ implements §521423110902311103123423632234§
   {
      
      private const §5214239239239252123423632234§:Number = 90;
      
      private var §final set class§:Sprite3D;
      
      private var §521423172712317284123423632234§:§5214239833239846123423632234§ = null;
      
      private var §5214239064239077123423632234§:§do function else§ = new §do function else§();
      
      private var §521423101952310208123423632234§:Number = 0;
      
      private var §5214231249231262123423632234§:Number = 0;
      
      public function §else switch default§(param1:§521423152702315283123423632234§)
      {
         super(param1);
      }
      
      public function §false use var§() : void
      {
         if(this.§521423172712317284123423632234§ != null)
         {
            this.§521423172712317284123423632234§.§521423189332318946123423632234§(this.§final set class§);
            this.§521423172712317284123423632234§ = null;
         }
         this.§final set class§.material = null;
         §override while override§();
      }
      
      private function §static var continue§(param1:§do function else§, param2:§do function else§, param3:Number) : void
      {
         this.§final set class§ = new Sprite3D(550 * param3,550 * param3);
         this.§final set class§.rotation = -1.5707963267948966 + Math.random() * 3.141592653589793;
         this.§final set class§.x = param1.x + param2.x;
         this.§final set class§.y = param1.y + param2.y;
         this.§final set class§.z = param1.§521423155722315585123423632234§ + param2.§521423155722315585123423632234§;
         this.§final set class§.useLight = false;
         this.§final set class§.useShadowMap = false;
         this.§final set class§.softAttenuation = 200;
         this.§5214239064239077123423632234§.§521423188292318842123423632234§(param2).§class while dynamic§();
         this.§521423101952310208123423632234§ = Math.random() > 0.5 ? 1 : -1;
      }
      
      public function §5214237139237152123423632234§(param1:§do function else§, param2:§do function else§, param3:Number, param4:TextureMaterial) : void
      {
         this.§static var continue§(param1,param2,param3);
         this.§final set class§.blendMode = "add";
         this.§final set class§.material = param4;
         this.§5214231249231262123423632234§ = 0;
      }
      
      public function §case catch native§(param1:§5214239833239846123423632234§) : void
      {
         this.§521423172712317284123423632234§ = param1;
         param1.§521423132922313305123423632234§(this.§final set class§);
      }
      
      public function §5214233261233274123423632234§(param1:int, param2:§catch catch continue§) : Boolean
      {
         var _loc4_:Number = param1 / 1000;
         this.§5214231249231262123423632234§ += _loc4_;
         var _loc5_:Boolean = false;
         var _loc3_:Number = 1;
         if(this.§5214231249231262123423632234§ <= 0.16666666666666666)
         {
            _loc3_ = this.§5214231249231262123423632234§ / 0.16666666666666666;
            _loc5_ = true;
         }
         else if(this.§5214231249231262123423632234§ <= 2)
         {
            _loc3_ = 1;
            _loc5_ = true;
         }
         else if(this.§5214231249231262123423632234§ <= 2.6666666666666665)
         {
            _loc3_ = 1 - (this.§5214231249231262123423632234§ - 2) / (2.6666666666666665 - 2);
            _loc5_ = true;
         }
         this.§final set class§.x += this.§5214239064239077123423632234§.x * _loc4_ * 90;
         this.§final set class§.y += this.§5214239064239077123423632234§.y * _loc4_ * 90;
         this.§final set class§.z += this.§5214239064239077123423632234§.§521423155722315585123423632234§ * _loc4_ * 90 * 2.4;
         this.§final set class§.rotation += this.§521423101952310208123423632234§ * _loc4_ * 0.3;
         this.§final set class§.alpha = _loc3_;
         return _loc5_ && _loc3_ <= 1;
      }
      
      public function §5214233338233351123423632234§() : void
      {
         this.§false use var§();
      }
      
      public function §5214232939232952123423632234§(param1:§do function else§, param2:§do function else§, param3:Number, param4:TextureMaterial) : void
      {
         this.§static var continue§(param1,param2,param3);
         this.§final set class§.material = param4;
         this.§5214231249231262123423632234§ = 0;
      }
   }
}

