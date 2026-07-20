package §52142382723840123423632234§
{
   import §521423111492311162123423632234§.§catch catch continue§;
   import §521423113872311400123423632234§.§5214239833239846123423632234§;
   import §5214231749231762123423632234§.§521423110902311103123423632234§;
   import §5214231749231762123423632234§.§521423156642315677123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import §5214234079234092123423632234§.§for package with§;
   import alternativa.engine3d.lights.OmniLight;
   import alternativa.engine3d.objects.Sprite3D;
   import flash.display.BitmapData;
   import §true catch false§.§52142358423597123423632234§;
   import §while function break§.§521423139462313959123423632234§;
   import §while function break§.§521423152702315283123423632234§;
   import §with var final§.§52142320423217123423632234§;
   
   public class §521423166102316623123423632234§ extends §521423139462313959123423632234§ implements §521423110902311103123423632234§
   {
      
      public static var §521423145952314608123423632234§:§for package with§;
      
      private static const §521423145632314576123423632234§:Number = 256;
      
      private static const §null default§:Number = 2;
      
      private static var §521423148302314843123423632234§:BitmapData;
      
      private static const §native set extends§:Number = 100;
      
      private static const §5214233254233267123423632234§:Number = 300;
      
      private static const §521423181662318179123423632234§:Number = 500;
      
      private static const §5214231149231162123423632234§:Number = 1000;
      
      private static const §each function continue§:Number = 0.3;
      
      private static const §if var function§:Number = 1.3;
      
      private static const §class for while§:Number = 1.5707963267948966;
      
      private static const §5214232026232039123423632234§:Number = 3;
      
      private var §final set class§:Sprite3D;
      
      private var §521423125942312607123423632234§:OmniLight = new OmniLight(0,0,0);
      
      private var §521423172712317284123423632234§:§5214239833239846123423632234§;
      
      private var §521423170522317065123423632234§:§521423156642315677123423632234§;
      
      private var §521423133822313395123423632234§:Boolean;
      
      private var §5214231249231262123423632234§:Number;
      
      public function §521423166102316623123423632234§(param1:§521423152702315283123423632234§)
      {
         super(param1);
         if(§521423148302314843123423632234§ == null)
         {
            §521423148302314843123423632234§ = new §52142320423217123423632234§(0,0);
         }
      }
      
      public function §case catch native§(param1:§5214239833239846123423632234§) : void
      {
         this.§521423172712317284123423632234§ = param1;
         param1.§521423132922313305123423632234§(this.§final set class§);
         if(§52142358423597123423632234§.§5214232292232305123423632234§ && !§52142358423597123423632234§.§try const const§)
         {
            param1.§521423132922313305123423632234§(this.§521423125942312607123423632234§);
         }
      }
      
      public function §5214239350239363123423632234§(param1:Sprite3D, param2:§521423156642315677123423632234§, param3:§do function else§) : void
      {
         this.§final set class§ = param1;
         this.§521423170522317065123423632234§ = param2;
         param1.width = 256;
         param1.height = 256;
         param1.originX = 0.5;
         param1.originY = 0.5;
         param1.softAttenuation = 50;
         param1.useLight = false;
         param1.useShadowMap = false;
         param1.shadowMapAlphaThreshold = 2;
         param1.depthMapAlphaThreshold = 2;
         param1.blendMode = "add";
         param1.material = §521423145952314608123423632234§.§return var var§(§521423148302314843123423632234§);
         if(param1.name.indexOf("1") >= 0)
         {
            this.§521423125942312607123423632234§.color = 16727074;
            param1.topLeftU = 0;
            param1.topLeftV = 0;
            param1.bottomRightU = 0.5;
            param1.bottomRightV = 0.5;
         }
         else if(param1.name.indexOf("2") >= 0)
         {
            this.§521423125942312607123423632234§.color = 6356736;
            param1.topLeftU = 0;
            param1.topLeftV = 0.5;
            param1.bottomRightU = 0.5;
            param1.bottomRightV = 1;
         }
         else if(param1.name.indexOf("3") >= 0)
         {
            this.§521423125942312607123423632234§.color = 34047;
            param1.topLeftU = 0.5;
            param1.topLeftV = 0.5;
            param1.bottomRightU = 1;
            param1.bottomRightV = 1;
         }
         else if(param1.name.indexOf("4") >= 0)
         {
            this.§521423125942312607123423632234§.color = 16771584;
            param1.topLeftU = 0.5;
            param1.topLeftV = 0;
            param1.bottomRightU = 1;
            param1.bottomRightV = 0.5;
         }
         this.§521423125942312607123423632234§.intensity = 0.7;
         this.§521423125942312607123423632234§.attenuationBegin = 300;
         this.§521423125942312607123423632234§.attenuationEnd = 1000;
         this.§521423125942312607123423632234§.calculateBounds();
         var _loc4_:Number = 200;
         var _loc5_:Number = param1.x - param3.x;
         var _loc7_:Number = param1.y - param3.y;
         var _loc6_:Number = Math.sqrt(_loc5_ * _loc5_ + _loc7_ * _loc7_);
         this.§521423125942312607123423632234§.x = param1.x + _loc5_ * _loc4_ / _loc6_;
         this.§521423125942312607123423632234§.y = param1.y + _loc7_ * _loc4_ / _loc6_;
         this.§521423125942312607123423632234§.z = param1.z + _loc4_ / 2;
         this.§5214231249231262123423632234§ = Math.random() * 3;
         this.§521423133822313395123423632234§ = true;
      }
      
      public function §5214233338233351123423632234§() : void
      {
         this.§521423133822313395123423632234§ = false;
      }
      
      public function §5214233261233274123423632234§(param1:int, param2:§catch catch continue§) : Boolean
      {
         if(!this.§521423133822313395123423632234§)
         {
            return false;
         }
         this.§521423170522317065123423632234§.§5214232953232966123423632234§(this.§final set class§,param2,param1);
         var _loc3_:Number = param1 / 1000;
         this.§5214231249231262123423632234§ += _loc3_;
         this.§5214231249231262123423632234§ %= 3;
         var _loc5_:Number = Math.sin(3.141592653589793 * 2 * this.§5214231249231262123423632234§ / 3) * 0.5 + 0.5;
         var _loc4_:Number = 0.3 + (1.3 - 0.3) * _loc5_;
         this.§final set class§.scaleX = _loc4_;
         this.§final set class§.scaleY = _loc4_;
         this.§final set class§.scaleZ = _loc4_;
         this.§final set class§.rotation += 1.5707963267948966 * _loc3_ * _loc5_;
         this.§521423125942312607123423632234§.attenuationBegin = 100 + (300 - 100) * _loc5_;
         this.§521423125942312607123423632234§.attenuationEnd = 500 + (1000 - 500) * _loc5_;
         return true;
      }
      
      public function §false use var§() : void
      {
         this.§521423172712317284123423632234§.§521423189332318946123423632234§(this.§final set class§);
         if(§52142358423597123423632234§.§5214232292232305123423632234§ && !§52142358423597123423632234§.§try const const§)
         {
            this.§521423172712317284123423632234§.§521423189332318946123423632234§(this.§521423125942312607123423632234§);
         }
         this.§final set class§ = null;
         this.§521423172712317284123423632234§ = null;
         this.§521423170522317065123423632234§.§false use var§();
         this.§521423170522317065123423632234§ = null;
         §override while override§();
      }
   }
}

