package §5214239300239313123423632234§
{
   import §521423138512313864123423632234§.§default for catch§;
   import §521423142652314278123423632234§.§const switch continue§;
   import §5214234310234323123423632234§.§break while override§;
   import §continue switch case§.§dynamic const break§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.filters.GlowFilter;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import §static catch do§.§static set in§;
   import §static set override§.§5214233453233466123423632234§;
   import §static set override§.§include switch for§;
   import §throw while throw§.§5214233697233710123423632234§;
   
   public class §521423137362313749123423632234§ extends Sprite
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      public static var §5214234610234623123423632234§:§const switch continue§;
      
      private static const §521423170602317073123423632234§:int = -73;
      
      private static const §return finally dynamic§:int = 60;
      
      private static const §static function break§:int = 90;
      
      private static const §var super import§:int = 135;
      
      private const §get while case§:int = 4000;
      
      private const §5214236006236019123423632234§:int = 2000;
      
      private var §5214238533238546123423632234§:int;
      
      private var label:§break while override§;
      
      private var §521423112372311250123423632234§:§break while override§;
      
      private var §throw static§:Timer;
      
      private var §5214231031231044123423632234§:§include switch for§;
      
      private var §try while case§:int;
      
      public function §521423137362313749123423632234§(param1:int, param2:int)
      {
         var _loc3_:Bitmap = null;
         §5214231031231044123423632234§ = new §5214233453233466123423632234§();
         super();
         filters = [new GlowFilter(0,1,6 * §dynamic const break§.§5214231303231316123423632234§,6 * §dynamic const break§.§5214231303231316123423632234§)];
         this.§5214231031231044123423632234§.§5214239350239363123423632234§(§5214234610234623123423632234§.§5214239830239843123423632234§(),param1);
         this.§5214231031231044123423632234§.x = -(this.§5214231031231044123423632234§.width >> 1);
         this.§5214231031231044123423632234§.y = -73;
         addChild(this.§5214231031231044123423632234§);
         this.label = new §break while override§();
         this.label.color = 16776960;
         this.label.§5214239166239179123423632234§ = 18;
         this.label.bold = true;
         this.label.autoSize = "center";
         this.label.align = "center";
         this.label.multiline = true;
         this.label.text = §521423164582316471123423632234§.§521423157602315773123423632234§("STRING_MAIN_PANEL_UPDATE_RANK_NOTICE").replace("%1",§default for catch§.name(param1));
         addChild(this.label);
         this.§5214238533238546123423632234§ = 90;
         if(param2 > 0)
         {
            this.§521423112372311250123423632234§ = new §break while override§();
            this.§521423112372311250123423632234§.color = 16776960;
            this.§521423112372311250123423632234§.§5214239166239179123423632234§ = 18;
            this.§521423112372311250123423632234§.bold = true;
            this.§521423112372311250123423632234§.autoSize = "center";
            this.§521423112372311250123423632234§.text = §521423164582316471123423632234§.§521423157602315773123423632234§("STRING_MAIN_PANEL_UPDATE_RANK_NOTICE_GIFT").replace("%1",param2.toString());
            this.§521423112372311250123423632234§.x = -(this.§521423112372311250123423632234§.width >> 1);
            this.§521423112372311250123423632234§.y = 60;
            addChild(this.§521423112372311250123423632234§);
            _loc3_ = new Bitmap(new §5214233697233710123423632234§(0,0));
            _loc3_.x = this.§521423112372311250123423632234§.x + this.§521423112372311250123423632234§.width + 2;
            _loc3_.y = 60 - 1;
            addChild(_loc3_);
            this.§5214238533238546123423632234§ = 135;
         }
         addEventListener("addedToStage",this.§do catch catch§);
         addEventListener("removedFromStage",this.§default var var§);
      }
      
      private function §5214232293232306123423632234§(param1:TimerEvent) : void
      {
         this.§throw static§.removeEventListener("timerComplete",this.§5214232293232306123423632234§);
         addEventListener("enterFrame",this.§get for try§);
         this.§try while case§ = getTimer();
      }
      
      private function §dynamic for native§(param1:Event) : void
      {
         x = stage.stageWidth / §dynamic const break§.§5214231303231316123423632234§ / 2;
         y = stage.stageHeight / §dynamic const break§.§5214231303231316123423632234§ - this.§5214238533238546123423632234§ >> 1;
      }
      
      private function §get for try§(param1:Event) : void
      {
         var _loc2_:Number = 1 - (getTimer() - this.§try while case§) / 2000;
         this.alpha = _loc2_;
         if(_loc2_ <= 0)
         {
            removeEventListener("enterFrame",this.§get for try§);
            parent.removeChild(this);
         }
      }
      
      private function §do catch catch§(param1:Event) : void
      {
         stage.addEventListener("resize",this.§dynamic for native§);
         this.§throw static§ = new Timer(4000,1);
         this.§throw static§.addEventListener("timerComplete",this.§5214232293232306123423632234§);
         this.§throw static§.start();
         this.§dynamic for native§(null);
      }
      
      private function §default var var§(param1:Event) : void
      {
         stage.removeEventListener("resize",this.§dynamic for native§);
         removeEventListener("addedToStage",this.§do catch catch§);
         removeEventListener("removedFromStage",this.§default var var§);
      }
   }
}

