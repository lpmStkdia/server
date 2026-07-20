package
{
   import §521423150582315071123423632234§.§5214237881237894123423632234§;
   import §521423165552316568123423632234§.§default var function§;
   import §5214231835231848123423632234§.§5214232435232448123423632234§;
   import §5214231835231848123423632234§.§default var do§;
   import §5214232264232277123423632234§.§5214237893237906123423632234§;
   import §5214235020235033123423632234§.§521423106712310684123423632234§;
   import §5214236397236410123423632234§.§5214233215233228123423632234§;
   import §5214237675237688123423632234§.§default use with§;
   import §5214237675237688123423632234§.§override for set§;
   import alternativa.ClientConfigurator;
   import §class finally continue§.§case var default§;
   import §continue switch case§.§each var else§;
   import flash.display.DisplayObjectContainer;
   import flash.display.GradientType;
   import flash.display.LoaderInfo;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.filters.DropShadowFilter;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import §get for set§.§521423176292317642123423632234§;
   import §static catch do§.§5214239361239374123423632234§;
   import §static catch do§.§static set in§;
   import §true catch false§.§52142358423597123423632234§;
   import §true use var§.§null finally in§;
   
   public class Game extends Sprite
   {
      
      private static const OVERLAY_WIDTH:int = 420;
      
      private static const OVERLAY_HEIGHT:int = 300;
      
      private var container:DisplayObjectContainer;
      
      private var gameStage:Stage;
      
      
      public function Game()
      {
         super();
         if(numChildren > 1)
         {
            removeChildAt(0);
            removeChildAt(0);
         }
      }
      
      public function activateAllModels(param1:LoaderInfo) : void
      {
         new ClientConfigurator().start(this.container,new §5214232435232448123423632234§(param1.parameters["ip"],new <int>[param1.parameters["port"]],param1.parameters["resources"]),param1);
         var _loc2_:§static set in§ = new §5214239361239374123423632234§(param1.parameters["lang"],"en");
         §default var function§.§import use include§().§include while extends§(§static set in§,_loc2_);
         new §5214233215233228123423632234§().§521423121222312135123423632234§(param1.parameters["resources"] + "/localized.data_" + _loc2_.§5214235381235394123423632234§,this.activate);
      }
      
      public function SUPER(param1:Stage, param2:DisplayObjectContainer, param3:LoaderInfo = null) : void
      {
         this.container = param2;
         this.gameStage = param1;
         param1.dispatchEvent(new Event("EntranceModel.objectLoaded",true));
         §default var function§.§import use include§().§include while extends§(§default use with§,new §override for set§());
         param1.addEventListener(KeyboardEvent.KEY_DOWN,this.onHotkeyKeyDown);
         this.activateAllModels(param3);
      }
      
      private function onHotkeyKeyDown(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.F7)
         {
            this.supplyClickerEnabled = !this.supplyClickerEnabled;
            this.sendAutoClickerToggle("health;armor;double_damage;n2o",this.supplyClickerEnabled);
         }
         else if(param1.keyCode == Keyboard.F8)
         {
            this.mineClickerEnabled = !this.mineClickerEnabled;
            this.sendAutoClickerToggle("mine",this.mineClickerEnabled);
         }
      }
      
      private function sendAutoClickerToggle(param1:String, param2:Boolean) : void
      {
         var _loc3_:§default use with§ = §default use with§(§default var function§.§import use include§().§5214231532231545123423632234§(§default use with§));
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:ByteArray = new ByteArray();
         _loc4_.writeUTFBytes(param1 + "|" + (param2 ? "1" : "0"));
         _loc3_.§return for switch§(_loc4_);
      }
      
      private function b6c1fbb() : void
      {
         new §521423176292317642123423632234§().§521423173092317322123423632234§();
      }
      
      private function activate() : void
      {
         var _loc1_:§default var function§ = §default var function§.§import use include§();
         new EntranceActivator().start(_loc1_);
         var _loc3_:§5214237881237894123423632234§ = §5214237881237894123423632234§(_loc1_.§5214231532231545123423632234§(§5214237881237894123423632234§));
         _loc3_.§5214237535237548123423632234§();
         new GameActivator().start(_loc1_);
         §default var do§.§521423171842317197123423632234§ = Sprite(parent.parent.parent);
         this.c712c186();
         §case var default§.init();
         var _loc2_:§52142358423597123423632234§ = new §52142358423597123423632234§(§each var else§(_loc1_.§5214231532231545123423632234§(§each var else§)).stage);
         _loc2_.addEventListener("complete",this.b16cfc6f,false,0,true);
         _loc2_.§5214234215234228123423632234§();
      }
      
      private function b16cfc6f(param1:Event) : void
      {
         §default var function§.§5214236700236713123423632234§.log("GPUDetection","GPU detection completed, %1",§52142358423597123423632234§.§5214232292232305123423632234§);
         this.b6c1fbb();
      }
      
      private function c712c186() : void
      {
         var _loc1_:§null finally in§ = §null finally in§(§default var function§.§import use include§().§5214231532231545123423632234§(§null finally in§));
         _loc1_.§521423180682318081123423632234§(new §521423106712310684123423632234§(§5214237893237906123423632234§.§switch try§(10568210,51255591),null));
         _loc1_.§521423180682318081123423632234§(new §521423106712310684123423632234§(§5214237893237906123423632234§.§switch try§(52835823,6349643),null));
         _loc1_.§521423180682318081123423632234§(new §521423106712310684123423632234§(§5214237893237906123423632234§.§switch try§(59235923,646943),null));
         _loc1_.§521423180682318081123423632234§(new §521423106712310684123423632234§(§5214237893237906123423632234§.§switch try§(884380667,214),null));
         _loc1_.§521423180682318081123423632234§(new §521423106712310684123423632234§(§5214237893237906123423632234§.§switch try§(13503324,653),null));
      }
   }
}      