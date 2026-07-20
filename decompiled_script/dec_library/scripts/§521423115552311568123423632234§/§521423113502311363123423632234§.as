package §521423115552311568123423632234§
{
   import §5214237876237889123423632234§.§521423156272315640123423632234§;
   import flash.events.MouseEvent;
   
   public class §521423113502311363123423632234§ extends §521423156272315640123423632234§ implements §521423108402310853123423632234§
   {
      
      private static var §native catch super§:Object = {
         "upSkin":"CellRenderer_upSkin",
         "downSkin":"CellRenderer_downSkin",
         "overSkin":"CellRenderer_overSkin",
         "disabledSkin":"CellRenderer_disabledSkin",
         "selectedDisabledSkin":"CellRenderer_selectedDisabledSkin",
         "selectedUpSkin":"CellRenderer_selectedUpSkin",
         "selectedDownSkin":"CellRenderer_selectedDownSkin",
         "selectedOverSkin":"CellRenderer_selectedOverSkin"
      };
      
      protected var §5214231054231067123423632234§:§5214234016234029123423632234§;
      
      protected var §else use null§:Object;
      
      public function §521423113502311363123423632234§()
      {
         super();
         §5214233244233257123423632234§ = true;
      }
      
      public static function getStyleDefinition() : Object
      {
         return §native catch super§;
      }
      
      override public function get selected() : Boolean
      {
         return super.selected;
      }
      
      public function set listData(param1:§5214234016234029123423632234§) : void
      {
         §5214231054231067123423632234§ = param1;
         §with switch include§("icon",§5214231054231067123423632234§.icon);
      }
      
      override protected function §5214232141232154123423632234§(param1:MouseEvent) : void
      {
      }
      
      override public function setSize(param1:Number, param2:Number) : void
      {
         super.setSize(param1,param2);
      }
      
      override public function set selected(param1:Boolean) : void
      {
         super.selected = param1;
      }
      
      public function set data(param1:Object) : void
      {
         §else use null§ = param1;
      }
      
      public function get listData() : §5214234016234029123423632234§
      {
         return §5214231054231067123423632234§;
      }
      
      override protected function drawLayout() : void
      {
         if(icon != null)
         {
            icon.x = 5;
            icon.y = Math.round(height - icon.height >> 1);
         }
         §with set dynamic§.width = width;
         §with set dynamic§.height = height;
      }
      
      public function get data() : Object
      {
         return §else use null§;
      }
   }
}

