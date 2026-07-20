package §521423134212313434123423632234§
{
   import §521423105672310580123423632234§.§dynamic switch super§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §5214235404235417123423632234§ extends §break while super§
   {
      
      private static var §native catch super§:Object = {
         "upSkin":§try const var§,
         "disabledSkin":"ScrollPane_disabledSkin"
      };
      
      protected var §package super const§:Number;
      
      protected var §5214232113232126123423632234§:Number;
      
      protected var §throw switch dynamic§:Object = "";
      
      protected var §521423164262316439123423632234§:Number;
      
      protected var §521423166412316654123423632234§:Boolean = false;
      
      protected var §package var null§:DisplayObject;
      
      protected var §else finally import§:Sprite;
      
      protected var §super function use§:Number;
      
      public function §5214235404235417123423632234§()
      {
         super();
      }
      
      public static function getStyleDefinition() : Object
      {
         return §native catch super§;
      }
      
      protected function §static const return§(param1:Event) : void
      {
         §function const package§();
         var _loc2_:Number = §default const in§();
         §if const default§();
         §do switch get§.§catch for const§(§false switch dynamic§,0,§5214232183232196123423632234§ ? §5214239328239341123423632234§ : §try while native§ - §false switch dynamic§,§false switch dynamic§);
         §52142355623569123423632234§.§catch for const§(_loc2_,0,§final const var§ - _loc2_,_loc2_);
         dispatchEvent(param1);
      }
      
      override protected function §continue use const§() : void
      {
         if(§switch finally final§("styles"))
         {
            drawBackground();
         }
         if(§switch finally final§("state"))
         {
            §5214238288238301123423632234§();
         }
         super.§continue use const§();
      }
      
      override protected function drawLayout() : void
      {
         super.drawLayout();
         §const use with§ = §else finally import§.scrollRect;
         §const use with§.width = §false switch dynamic§;
         §const use with§.height = §throw package default§;
         §else finally import§.scrollRect = §const use with§;
         §else finally import§.x = §else finally import§.y = 0;
      }
      
      public function set §null finally finally§(param1:Boolean) : void
      {
         §521423166412316654123423632234§ = param1;
         §5214237069237082123423632234§("state");
      }
      
      protected function §5214236935236948123423632234§() : void
      {
         if(§else finally import§.numChildren == 0)
         {
            return;
         }
         §else finally import§.removeChildAt(0);
         §package var null§ = null;
      }
      
      public function get source() : Object
      {
         return §throw switch dynamic§;
      }
      
      public function §function const package§() : void
      {
         var _loc1_:DisplayObject = §else finally import§.getChildAt(0);
         §521423176862317699123423632234§(_loc1_.width,_loc1_.height);
      }
      
      override protected function §continue const get§(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Rectangle = §else finally import§.scrollRect;
         _loc3_.y = param1;
         §else finally import§.scrollRect = _loc3_;
      }
      
      public function get §null finally finally§() : Boolean
      {
         return §521423166412316654123423632234§;
      }
      
      protected function §5214238288238301123423632234§() : void
      {
         if(§521423166412316654123423632234§)
         {
            §else finally import§.addEventListener("mouseDown",§5214232661232674123423632234§,false,0,true);
            stage.addEventListener("mouseUp",§null package const§,false,0,true);
         }
         else
         {
            §else finally import§.removeEventListener("mouseDown",§5214232661232674123423632234§);
            stage.removeEventListener("mouseUp",§null package const§);
            removeEventListener("mouseMove",§finally super import§);
         }
         §else finally import§.buttonMode = §521423166412316654123423632234§;
      }
      
      override protected function §use case§() : void
      {
         super.§use case§();
         §else finally import§ = new Sprite();
         addChild(§else finally import§);
         §else finally import§.scrollRect = §const use with§;
         §5214233699233712123423632234§ = 2;
         §do package use§ = 2;
      }
      
      protected function §null package const§(param1:MouseEvent) : void
      {
         stage.removeEventListener("mouseMove",§finally super import§);
      }
      
      public function set source(param1:Object) : void
      {
         §5214236935236948123423632234§();
         §throw switch dynamic§ = param1;
         if(§throw switch dynamic§ == "" || §throw switch dynamic§ == null)
         {
            return;
         }
         §package var null§ = §continue while case§(param1);
         if(§package var null§ != null)
         {
            §else finally import§.addChild(§package var null§);
            dispatchEvent(new Event("init"));
            §function const package§();
         }
      }
      
      protected function §5214232661232674123423632234§(param1:MouseEvent) : void
      {
         if(!enabled)
         {
            return;
         }
         §5214232113232126123423632234§ = mouseX;
         §super function use§ = mouseY;
         §package super const§ = §5214237324237337123423632234§;
         §521423164262316439123423632234§ = §extends finally throw§;
         stage.addEventListener("mouseMove",§finally super import§,false,0,true);
      }
      
      override protected function §5214231399231412123423632234§(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Rectangle = §else finally import§.scrollRect;
         _loc3_.x = param1;
         §else finally import§.scrollRect = _loc3_;
      }
      
      override protected function drawBackground() : void
      {
         var _loc1_:DisplayObject = §with set dynamic§;
         §with set dynamic§ = §continue while case§(§default catch false§(enabled ? "upSkin" : "disabledSkin"));
         §with set dynamic§.width = width;
         §with set dynamic§.height = height;
         addChildAt(§with set dynamic§,0);
         if(_loc1_ != null && _loc1_ != §with set dynamic§)
         {
            removeChild(_loc1_);
         }
      }
      
      override protected function §5214238200238213123423632234§(param1:§dynamic switch super§) : void
      {
         dispatchEvent(param1);
         super.§5214238200238213123423632234§(param1);
      }
      
      protected function §finally super import§(param1:MouseEvent) : void
      {
         var _loc2_:Number = §521423164262316439123423632234§ - (mouseY - §super function use§);
         §implements catch break§.§5214239865239878123423632234§(_loc2_);
         §continue const get§(§implements catch break§.§class break§,true);
         var _loc3_:Number = §package super const§ - (mouseX - §5214232113232126123423632234§);
         §5214236884236897123423632234§.§5214239865239878123423632234§(_loc3_);
         §5214231399231412123423632234§(§5214236884236897123423632234§.§class break§,true);
      }
      
      protected function §default const in§() : Number
      {
         return height - (§5214233699233712123423632234§ == 1 || §5214233699233712123423632234§ == 2 && §5214239328239341123423632234§ > 0 ? 15 : 0);
      }
   }
}

