package §5214237876237889123423632234§
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §521423156272315640123423632234§ extends §5214237930237943123423632234§
   {
      
      private static var §native catch super§:Object = {"icon":null};
      
      protected var §false switch import§:Boolean = false;
      
      protected var icon:DisplayObject;
      
      public function §521423156272315640123423632234§()
      {
         super();
      }
      
      public static function getStyleDefinition() : Object
      {
         return §native catch super§;
      }
      
      override protected function §continue use const§() : void
      {
         if(§switch finally final§("styles","state"))
         {
            drawBackground();
            drawIcon();
            §5214237069237082123423632234§("size",false);
         }
         if(§switch finally final§("size"))
         {
            drawLayout();
         }
         §521423123632312376123423632234§();
      }
      
      protected function drawIcon() : void
      {
         var _loc1_:DisplayObject = icon;
         var _loc2_:String = enabled ? §import catch switch§ : "disabled";
         if(selected)
         {
            _loc2_ = "selected" + _loc2_.substr(0,1).toUpperCase() + _loc2_.substr(1);
         }
         _loc2_ += "Icon";
         var _loc3_:Object = §default catch false§(_loc2_);
         if(_loc3_ == null)
         {
            _loc3_ = §default catch false§("icon");
         }
         if(_loc3_ != null)
         {
            icon = §continue while case§(_loc3_);
         }
         if(icon != null)
         {
            addChildAt(icon,1);
         }
         if(_loc1_ != null && _loc1_ != icon)
         {
            removeChild(_loc1_);
         }
      }
      
      override public function get selected() : Boolean
      {
         return §false switch import§ ? §const with§ : false;
      }
      
      protected function §5214232141232154123423632234§(param1:MouseEvent) : void
      {
         selected = !selected;
         dispatchEvent(new Event("change",true));
      }
      
      override public function set selected(param1:Boolean) : void
      {
         §const with§ = param1;
         if(§false switch import§)
         {
            §5214237069237082123423632234§("state");
         }
      }
      
      override protected function §use case§() : void
      {
         super.§use case§();
      }
      
      public function set §5214233244233257123423632234§(param1:Boolean) : void
      {
         if(!param1 && super.selected)
         {
            selected = false;
         }
         §false switch import§ = param1;
         if(§false switch import§)
         {
            addEventListener("click",§5214232141232154123423632234§,false,0,true);
         }
         else
         {
            removeEventListener("click",§5214232141232154123423632234§);
         }
         §5214237069237082123423632234§("state");
      }
      
      public function get §5214233244233257123423632234§() : Boolean
      {
         return §false switch import§;
      }
   }
}

