package §521423100722310085123423632234§
{
   import §521423188072318820123423632234§.§continue const const§;
   import §5214234310234323123423632234§.§break while override§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import §static catch do§.§static set in§;
   
   public class §5214231037231050123423632234§ extends Sprite
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      public static const §5214233099233112123423632234§:int = 0;
      
      public static const §521423181842318197123423632234§:int = 1;
      
      private const §switch const case§:int = 15;
      
      private var §521423106492310662123423632234§:§continue const const§ = new §continue const const§();
      
      private var label:§break while override§ = new §break while override§();
      
      private var §set package do§:int = 0;
      
      private var §final while final§:Timer;
      
      public function §5214231037231050123423632234§(param1:int, param2:int = 0)
      {
         super();
         var _loc3_:String = param2 == 0 ? §521423164582316471123423632234§.§521423157602315773123423632234§("BATTLE_TEAM_RED") : §521423164582316471123423632234§.§521423157602315773123423632234§("BATTLE_TEAM_BLUE");
         this.label.align = "center";
         this.label.§5214239166239179123423632234§ = 14;
         this.label.bold = true;
         this.label.htmlText = "<font color=" + (param2 == 0 ? "\"#ff9999\">" : "\"#99ccff\">") + §521423164582316471123423632234§.§521423157602315773123423632234§("BATTLE_TEAM_ALERT").replace("%1",_loc3_) + "</font>";
         addChild(this.§521423106492310662123423632234§);
         addChild(this.label);
         this.label.x = 15;
         this.label.y = 15;
         this.§521423106492310662123423632234§.width = this.label.width + 15 * 2;
         this.§521423106492310662123423632234§.height = this.label.height + 15 * 2;
         this.§set package do§ = param1;
         this.§catch use each§();
         addEventListener("click",this.§var package class§);
      }
      
      private function §5214237853237866123423632234§(param1:TimerEvent = null) : void
      {
         --this.§set package do§;
         if(this.§set package do§ < 0)
         {
            this.§final while final§.removeEventListener("timer",this.§5214237853237866123423632234§);
            this.§final while final§.stop();
            this.§var package class§();
         }
      }
      
      public function §var package class§(param1:Event = null) : void
      {
         if(this.parent != null)
         {
            this.parent.removeChild(this);
            removeEventListener("click",this.§var package class§);
         }
      }
      
      private function §catch use each§() : void
      {
         this.§final while final§ = new Timer(1000);
         this.§final while final§.addEventListener("timer",this.§5214237853237866123423632234§);
         this.§final while final§.start();
         this.§5214237853237866123423632234§();
      }
   }
}

