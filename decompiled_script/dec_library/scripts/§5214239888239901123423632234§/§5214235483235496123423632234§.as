package §5214239888239901123423632234§
{
   import §521423138512313864123423632234§.§5214235605235618123423632234§;
   import §521423143792314392123423632234§.§521423120902312103123423632234§;
   import §521423150222315035123423632234§.§include use override§;
   import §521423165552316568123423632234§.§default var function§;
   import §5214231835231848123423632234§.§default var do§;
   import §5214234310234323123423632234§.§break while override§;
   import §5214237361237374123423632234§.§const package var§;
   import §5214237361237374123423632234§.§else set false§;
   import §5214238675238688123423632234§.§package use break§;
   import flash.system.Capabilities;
   import flash.utils.getDefinitionByName;
   import §static catch do§.§static set in§;
   
   public class §5214235483235496123423632234§ extends §include use override§
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      public static var §package super return§:§521423120902312103123423632234§;
      
      public static var §521423145752314588123423632234§:§else set false§;
      
      private static const §null package include§:int = 30;
      
      private static const §override use each§:int = 120;
      
      private var §null while if§:§break while override§ = new §break while override§();
      
      private var §each package try§:§5214235605235618123423632234§ = new §5214235605235618123423632234§();
      
      private var §521423189792318992123423632234§:String;
      
      public var §521423146582314671123423632234§:int;
      
      private var §5214238750238763123423632234§:int = 60;
      
      public function §5214235483235496123423632234§()
      {
         super();
         this.§null while if§.y = 16;
         this.§521423189792318992123423632234§ = §521423164582316471123423632234§.§521423157602315773123423632234§("SETTINGS_FPS_LIMIT") + ": (";
         var _loc1_:int = §package super return§.§override const finally§;
         this.§null while if§.text = this.§521423189792318992123423632234§ + _loc1_.toString() + ")";
         addChild(this.§null while if§);
         this.§each package try§.§false catch default§ = 240;
         this.§each package try§.§break function if§ = 30;
         this.§each package try§.§521423104002310413123423632234§ = 5;
         this.§each package try§.x = §null while if§.width + 8;
         this.§each package try§.y = 10;
         this.§each package try§.width = 728 - §null while if§.width;
         addChild(this.§each package try§);
         this.§each package try§.addEventListener("SliderChangeValue",this.§5214235897235910123423632234§);
         this.§521423146582314671123423632234§ = this.§each package try§.value = _loc1_;
         var _loc4_:§default var do§ = §default var do§;
         if(flash.system.Capabilities.playerType == "Desktop" || flash.system.Capabilities.playerType == "External")
         {
            for each(var _loc2_ in getDefinitionByName("flash.display.Screen").screens)
            {
               this.§5214238750238763123423632234§ = Math.max(_loc2_.mode.refreshRate,this.§5214238750238763123423632234§);
            }
            §default var function§.§5214236700236713123423632234§.log("screen","Max refresh " + this.§5214238750238763123423632234§.toString());
         }
      }
      
      private function §const package catch§(param1:§const package var§) : void
      {
         §521423145752314588123423632234§.removeEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.§const package catch§);
         if(param1.§use const override§ != §521423164582316471123423632234§.§521423157602315773123423632234§("ALERT_ANSWER_OK"))
         {
            this.§each package try§.value = this.§5214238750238763123423632234§;
            this.§5214235897235910123423632234§(new §package use break§(this.§5214238750238763123423632234§));
         }
      }
      
      private function §5214235897235910123423632234§(param1:§package use break§) : void
      {
         var _loc2_:int = Math.round(param1.§get const class§);
         if(this.§521423146582314671123423632234§ == _loc2_)
         {
            return;
         }
         this.§521423146582314671123423632234§ = _loc2_;
         this.§null while if§.text = this.§521423189792318992123423632234§ + _loc2_ + ")";
         §package super return§.§override const finally§ = _loc2_;
      }
      
      public function §switch switch do§(param1:int) : void
      {
         this.§5214235897235910123423632234§(new §package use break§(param1));
         this.§each package try§.value = param1;
      }
   }
}

