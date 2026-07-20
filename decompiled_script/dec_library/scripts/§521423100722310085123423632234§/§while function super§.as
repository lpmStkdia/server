package §521423100722310085123423632234§
{
   import §521423188072318820123423632234§.§continue const const§;
   import §5214234310234323123423632234§.§break while override§;
   import §continue switch case§.§dynamic const break§;
   import §continue switch case§.§each var else§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import §static catch do§.§static set in§;
   
   public class §while function super§ extends Sprite
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      public static var §class function package§:§each var else§;
      
      protected const §switch const case§:int = 15;
      
      protected var §521423106492310662123423632234§:§continue const const§ = new §continue const const§();
      
      protected var §with super use§:§break while override§ = new §break while override§();
      
      protected var §set package do§:int = 0;
      
      protected var §final while final§:Timer;
      
      protected var §try super set§:String;
      
      public function §while function super§(param1:int)
      {
         super();
         this.§set package do§ = param1;
         this.§5214239350239363123423632234§();
      }
      
      private function §use use static§(param1:Event = null) : void
      {
         this.x = Math.round((§class function package§.stage.stageWidth / §dynamic const break§.§5214231303231316123423632234§ - this.width) * 0.5);
         this.y = Math.round((§class function package§.stage.stageHeight / §dynamic const break§.§5214231303231316123423632234§ - this.height) * 0.5);
      }
      
      protected function §521423157602315773123423632234§(param1:String, ... rest) : String
      {
         var _loc3_:int = 0;
         var _loc4_:String = param1;
         while(_loc3_ < rest.length)
         {
            _loc4_ = _loc4_.replace("%" + (_loc3_ + 1),rest[_loc3_]);
            _loc3_++;
         }
         return _loc4_;
      }
      
      protected function §5214239350239363123423632234§() : void
      {
         this.§with super use§.align = "center";
         this.§try super set§ = §521423164582316471123423632234§.§521423157602315773123423632234§("SERVER_STOP_ALERT_TEXT");
         this.§with super use§.text = this.§521423157602315773123423632234§(this.§try super set§,"88");
         addChild(this.§521423106492310662123423632234§);
         addChild(this.§with super use§);
         this.§with super use§.x = 15;
         this.§with super use§.y = 15;
         this.§521423106492310662123423632234§.width = this.§with super use§.width + 15 * 2;
         this.§521423106492310662123423632234§.height = this.§with super use§.height + 15 * 2;
         §class function package§.§521423129532312966123423632234§.addChild(this);
         §class function package§.stage.addEventListener("resize",this.§use use static§);
         this.§use use static§();
         this.§catch use each§();
      }
      
      protected function §5214237853237866123423632234§(param1:TimerEvent = null) : void
      {
         var _loc2_:String = this.§set package do§ > 9 ? String(this.§set package do§) : "0" + String(this.§set package do§);
         this.§with super use§.text = this.§with super use§.text = this.§521423157602315773123423632234§(this.§try super set§,_loc2_);
         --this.§set package do§;
         if(this.§set package do§ < 0)
         {
            this.§final while final§.removeEventListener("timer",this.§5214237853237866123423632234§);
            this.§final while final§.stop();
         }
      }
      
      protected function §catch use each§() : void
      {
         this.§final while final§ = new Timer(1000);
         this.§final while final§.addEventListener("timer",this.§5214237853237866123423632234§);
         this.§final while final§.start();
         this.§5214237853237866123423632234§();
      }
   }
}

