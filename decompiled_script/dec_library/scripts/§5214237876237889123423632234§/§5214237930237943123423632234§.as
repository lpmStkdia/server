package §5214237876237889123423632234§
{
   import §521423175722317585123423632234§.§5214239797239810123423632234§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §5214237930237943123423632234§ extends §5214239797239810123423632234§
   {
      
      private static var §native catch super§:Object = {
         "upSkin":"Button_upSkin",
         "downSkin":"Button_downSkin",
         "overSkin":"Button_overSkin",
         "disabledSkin":"Button_disabledSkin",
         "selectedDisabledSkin":"Button_selectedDisabledSkin",
         "selectedUpSkin":"Button_selectedUpSkin",
         "selectedDownSkin":"Button_selectedDownSkin",
         "selectedOverSkin":"Button_selectedOverSkin"
      };
      
      protected var §521423133582313371123423632234§:Timer;
      
      protected var §else set case§:Boolean = false;
      
      protected var §const with§:Boolean = false;
      
      protected var §with set dynamic§:DisplayObject;
      
      private var §override for native§:String;
      
      protected var §import catch switch§:String;
      
      private var §521423188612318874123423632234§:Boolean = false;
      
      public function §5214237930237943123423632234§()
      {
         super();
         buttonMode = true;
         mouseChildren = false;
         useHandCursor = false;
         §false var switch§();
         §case const final§("up");
         §521423133582313371123423632234§ = new Timer(1,0);
         §521423133582313371123423632234§.addEventListener("timer",§true super get§,false,0,true);
      }
      
      public static function getStyleDefinition() : Object
      {
         return §native catch super§;
      }
      
      override public function set enabled(param1:Boolean) : void
      {
         super.enabled = param1;
         mouseEnabled = param1;
      }
      
      public function get selected() : Boolean
      {
         return §const with§;
      }
      
      protected function §else while class§() : void
      {
         if(§else set case§)
         {
            §521423133582313371123423632234§.delay = 500;
            §521423133582313371123423632234§.start();
         }
         dispatchEvent(new Event("buttonDown",true));
      }
      
      override protected function §continue use const§() : void
      {
         if(§switch finally final§("styles","state"))
         {
            drawBackground();
            §5214237069237082123423632234§("size",false);
         }
         if(§switch finally final§("size"))
         {
            drawLayout();
         }
         super.§continue use const§();
      }
      
      protected function §false var switch§() : void
      {
         addEventListener("rollOver",§for package static§,false,0,true);
         addEventListener("mouseDown",§for package static§,false,0,true);
         addEventListener("mouseUp",§for package static§,false,0,true);
         addEventListener("rollOut",§for package static§,false,0,true);
      }
      
      protected function §521423125602312573123423632234§() : void
      {
         §521423133582313371123423632234§.reset();
      }
      
      public function §case const final§(param1:String) : void
      {
         if(§521423188612318874123423632234§)
         {
            §override for native§ = param1;
            return;
         }
         if(§import catch switch§ == param1)
         {
            return;
         }
         §import catch switch§ = param1;
         §5214237069237082123423632234§("state");
      }
      
      public function set §return switch include§(param1:Boolean) : void
      {
         §else set case§ = param1;
      }
      
      protected function §for package static§(param1:MouseEvent) : void
      {
         if(param1.type == "mouseDown")
         {
            §case const final§("down");
            §else while class§();
         }
         else if(param1.type == "rollOver" || param1.type == "mouseUp")
         {
            §case const final§("over");
            §521423125602312573123423632234§();
         }
         else if(param1.type == "rollOut")
         {
            §case const final§("up");
            §521423125602312573123423632234§();
         }
      }
      
      protected function §true super get§(param1:TimerEvent) : void
      {
         if(!§else set case§)
         {
            §521423125602312573123423632234§();
            return;
         }
         if(§521423133582313371123423632234§.currentCount == 1)
         {
            §521423133582313371123423632234§.delay = 35;
         }
         dispatchEvent(new Event("buttonDown",true));
      }
      
      protected function drawBackground() : void
      {
         var _loc2_:String = enabled ? §import catch switch§ : "disabled";
         if(selected)
         {
            _loc2_ = "selected" + _loc2_.substr(0,1).toUpperCase() + _loc2_.substr(1);
         }
         _loc2_ += "Skin";
         var _loc1_:DisplayObject = §with set dynamic§;
         §with set dynamic§ = §continue while case§(§default catch false§(_loc2_));
         addChildAt(§with set dynamic§,0);
         if(_loc1_ != null && _loc1_ != §with set dynamic§)
         {
            removeChild(_loc1_);
         }
      }
      
      public function set §5214238624238637123423632234§(param1:Boolean) : void
      {
         §521423188612318874123423632234§ = param1;
         if(param1 == false)
         {
            §case const final§(§override for native§);
         }
         else
         {
            §override for native§ = §import catch switch§;
         }
      }
      
      public function set selected(param1:Boolean) : void
      {
         if(§const with§ == param1)
         {
            return;
         }
         §const with§ = param1;
         §5214237069237082123423632234§("state");
      }
      
      public function get §return switch include§() : Boolean
      {
         return §else set case§;
      }
      
      protected function drawLayout() : void
      {
         §with set dynamic§.width = width;
         §with set dynamic§.height = height;
      }
   }
}

