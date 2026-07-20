package §521423141982314211123423632234§
{
   import §521423111492311162123423632234§.§catch catch continue§;
   import §521423113872311400123423632234§.§5214239833239846123423632234§;
   import §5214231749231762123423632234§.§521423110902311103123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Sprite3D;
   
   public class §521423153052315318123423632234§ implements §521423110902311103123423632234§
   {
      
      private var §const package set§:TextureMaterial;
      
      private var §521423172712317284123423632234§:§5214239833239846123423632234§;
      
      private var §52142370423717123423632234§:§do function catch§;
      
      private var §static function false§:Number = 0;
      
      private var §521423133822313395123423632234§:Boolean = false;
      
      private var §return switch try§:Boolean = false;
      
      private var §implements var default§:Number = 0;
      
      private const §dynamic use var§:Number = 512;
      
      private const §with catch package§:Number = 24;
      
      private const §5214236412236425123423632234§:Number = 0.8;
      
      private const §5214238702238715123423632234§:Number = 0.5;
      
      private var §each for super§:§do function else§;
      
      private var §catch for§:§do function else§;
      
      private var §5214238111238124123423632234§:Vector.<Sprite3D>;
      
      public function §521423153052315318123423632234§(param1:TextureMaterial, param2:§do function catch§)
      {
         var _loc3_:int = 0;
         var _loc4_:Sprite3D = null;
         §each for super§ = new §do function else§();
         §catch for§ = new §do function else§();
         super();
         this.§const package set§ = param1;
         this.§52142370423717123423632234§ = param2;
         this.§5214238111238124123423632234§ = new Vector.<Sprite3D>(24);
         _loc3_ = 0;
         while(_loc3_ < 24)
         {
            _loc4_ = new Sprite3D(512,512,param1);
            _loc4_.blendMode = "add";
            this.§5214238111238124123423632234§[_loc3_] = _loc4_;
            _loc3_++;
         }
      }
      
      private function §extends while import§(param1:Sprite3D, param2:Number, param3:§do function else§, param4:§do function else§) : void
      {
         var _loc19_:Number = NaN;
         _loc19_ = 0.08333333333333333;
         var _loc20_:Number = NaN;
         _loc20_ = 0.8;
         var _loc16_:Number = NaN;
         _loc16_ = 0.5;
         var _loc17_:Number = NaN;
         _loc17_ = 0.8;
         var _loc13_:Number = NaN;
         _loc13_ = 0.2;
         var _loc6_:Number = NaN;
         _loc6_ = 20;
         var _loc5_:Number = NaN;
         _loc5_ = 300;
         var _loc11_:Number = NaN;
         _loc11_ = 3000;
         var _loc10_:Number = NaN;
         _loc10_ = 0.6;
         var _loc9_:Number = NaN;
         _loc9_ = 1;
         var _loc8_:Number = NaN;
         _loc8_ = 0;
         var _loc7_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc12_:Number = NaN;
         if(!this.§return switch try§)
         {
            _loc7_ = param2 % 0.8;
         }
         else
         {
            _loc7_ = Math.min((param2 - this.§implements var default§) / 0.5,0.8 / 0.5);
         }
         if(_loc7_ <= 0.08333333333333333)
         {
            _loc18_ = _loc7_ / 0.08333333333333333;
            _loc15_ = 0.5 + (0.8 - 0.5) * _loc18_;
            _loc14_ = 20 + (300 - 20) * _loc18_;
            _loc12_ = 0.6 + (1 - 0.6) * _loc18_;
         }
         else
         {
            _loc18_ = (_loc7_ - 0.08333333333333333) / (0.8 - 0.08333333333333333);
            _loc15_ = 0.8 + (0.2 - 0.8) * _loc18_;
            _loc14_ = 300 + (3000 - 300) * _loc18_;
            _loc12_ = 1 + (0 - 1) * _loc18_;
         }
         param1.scaleX = _loc15_;
         param1.scaleY = _loc15_;
         param1.scaleZ = _loc15_;
         param1.x = param3.x - param4.x * _loc14_;
         param1.y = param3.y - param4.y * _loc14_;
         param1.z = param3.§521423155722315585123423632234§ - param4.§521423155722315585123423632234§ * _loc14_;
         param1.alpha = _loc12_;
      }
      
      public function §521423100612310074123423632234§() : void
      {
         this.§return switch try§ = true;
         this.§implements var default§ = this.§static function false§;
      }
      
      private function §function const package§(param1:Number, param2:§do function else§, param3:§do function else§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:Sprite3D = null;
         this.§static function false§ += param1;
         _loc4_ = 0;
         while(_loc4_ < 24)
         {
            _loc5_ = this.§5214238111238124123423632234§[_loc4_];
            this.§extends while import§(_loc5_,this.§static function false§ + _loc4_ * 0.8 / 24,param2,param3);
            _loc4_++;
         }
      }
      
      public function §false use var§() : void
      {
         if(this.§521423172712317284123423632234§ != null)
         {
            for each(var _loc1_ in this.§5214238111238124123423632234§)
            {
               this.§521423172712317284123423632234§.§521423189332318946123423632234§(_loc1_);
            }
            this.§521423172712317284123423632234§ = null;
         }
      }
      
      public function §5214233261233274123423632234§(param1:int, param2:§catch catch continue§) : Boolean
      {
         this.§52142370423717123423632234§.§use package extends§(this.§each for super§,this.§catch for§);
         this.§function const package§(param1 / 1000,this.§each for super§,this.§catch for§);
         return this.§521423133822313395123423632234§;
      }
      
      public function §case catch native§(param1:§5214239833239846123423632234§) : void
      {
         this.§521423172712317284123423632234§ = param1;
         this.§521423133822313395123423632234§ = true;
         this.§return switch try§ = false;
         this.§static function false§ = 0;
         for each(var _loc2_ in this.§5214238111238124123423632234§)
         {
            param1.§521423132922313305123423632234§(_loc2_);
         }
      }
      
      public function §5214233338233351123423632234§() : void
      {
         this.§521423133822313395123423632234§ = false;
      }
   }
}

