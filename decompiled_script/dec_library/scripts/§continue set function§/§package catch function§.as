package §continue set function§
{
   import §521423111492311162123423632234§.§catch catch continue§;
   import §521423113872311400123423632234§.§5214239833239846123423632234§;
   import §521423138512313864123423632234§.§finally function return§;
   import §5214231749231762123423632234§.§521423110902311103123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import §5214238500238513123423632234§.§521423124982312511123423632234§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Sprite3D;
   import §continue switch case§.§dynamic const break§;
   import flash.display.BitmapData;
   import flash.filters.GlowFilter;
   import §while function break§.§521423139462313959123423632234§;
   import §while function break§.§521423152702315283123423632234§;
   
   public class §package catch function§ extends §521423139462313959123423632234§ implements §521423110902311103123423632234§
   {
      
      public static var §else set super§:§521423124982312511123423632234§;
      
      private static const §5214234564234577123423632234§:Number = 100;
      
      private static const §521423105332310546123423632234§:Number = 250;
      
      private static const §function switch import§:Number = 300;
      
      private static const §for switch false§:Number = 1000;
      
      private static const §dynamic const include§:Number = 100;
      
      private static var label:§finally function return§;
      
      private var §final set class§:Sprite3D;
      
      private var §5214231249231262123423632234§:int;
      
      private var §521423155722315585123423632234§:Number;
      
      private var §case const throw§:§do function else§ = new §do function else§();
      
      private var §521423172712317284123423632234§:§5214239833239846123423632234§;
      
      private var §5214231575231588123423632234§:Number;
      
      private var §case get§:Number;
      
      private var §const package set§:TextureMaterial = new TextureMaterial(null,false,false);
      
      public function §package catch function§(param1:§521423152702315283123423632234§)
      {
         super(param1);
         this.§final set class§ = new Sprite3D(32,20,§const package set§);
         this.§final set class§.perspectiveScale = false;
         this.§final set class§.useShadowMap = false;
         this.§final set class§.useLight = false;
         this.§final set class§.depthTest = false;
         this.§final set class§.originX = 0.85;
         this.§final set class§.calculateBounds();
         if(label == null)
         {
            label = new §finally function return§();
            label.§5214239166239179123423632234§ = 16;
            label.filters = [new GlowFilter(0,0.8,4,4,3)];
         }
      }
      
      public static function §else finally continue§(param1:§do function else§, param2:uint, param3:int) : void
      {
         var _loc4_:§package catch function§ = §package catch function§(§else set super§.§in const class§().§include use do§(§package catch function§));
         _loc4_.§5214239350239363123423632234§(param1,param2,param3);
         §else set super§.§52142329523308123423632234§().§5214234160234173123423632234§(_loc4_);
      }
      
      public function §5214233338233351123423632234§() : void
      {
         this.§final set class§.alpha = 0;
      }
      
      public function §case catch native§(param1:§5214239833239846123423632234§) : void
      {
         §final set class§.scaleX = §final set class§.scaleY = §dynamic const break§.§5214231303231316123423632234§;
         this.§521423172712317284123423632234§ = §else set super§.§52142329523308123423632234§().§finally finally in§();
         this.§521423172712317284123423632234§.§521423132922313305123423632234§(this.§final set class§);
      }
      
      private function §5214239350239363123423632234§(param1:§do function else§, param2:uint, param3:int) : void
      {
         this.§case const throw§.§521423188292318842123423632234§(param1);
         this.§5214231249231262123423632234§ = 0;
         this.§521423155722315585123423632234§ = 0;
         this.§5214231575231588123423632234§ = Math.random() - 0.5;
         this.§case get§ = Math.random() - 0.5;
         label.text = param3.toString();
         label.color = param2;
         var _loc4_:BitmapData = new BitmapData(32,20,true,0);
         _loc4_.draw(label);
         §const package set§.texture = _loc4_;
      }
      
      public function §5214233261233274123423632234§(param1:int, param2:§catch catch continue§) : Boolean
      {
         this.§final set class§.x = this.§case const throw§.x + this.§521423155722315585123423632234§ * this.§5214231575231588123423632234§;
         this.§final set class§.y = this.§case const throw§.y + this.§521423155722315585123423632234§ * this.§case get§;
         this.§final set class§.z = this.§case const throw§.§521423155722315585123423632234§ + this.§521423155722315585123423632234§;
         this.§5214231249231262123423632234§ += param1;
         var _loc3_:Number = this.§521423155722315585123423632234§ < 100 ? 1000 : 100;
         this.§521423155722315585123423632234§ += _loc3_ * param1 * 0.001;
         if(this.§521423155722315585123423632234§ < 250)
         {
            this.§final set class§.alpha = 1;
         }
         else
         {
            this.§final set class§.alpha = (300 - this.§521423155722315585123423632234§) / (300 - 250);
            if(this.§final set class§.alpha < 0)
            {
               this.§final set class§.alpha = 0;
               return false;
            }
         }
         return true;
      }
      
      public function §false use var§() : void
      {
         this.§521423172712317284123423632234§.§521423189332318946123423632234§(this.§final set class§);
         this.§521423172712317284123423632234§ = null;
         §override while override§();
      }
   }
}

