package §52142311423127123423632234§
{
   import §521423101572310170123423632234§.§521423134722313485123423632234§;
   import §521423101572310170123423632234§.§5214237009237022123423632234§;
   import §521423115552311568123423632234§.§521423113502311363123423632234§;
   import §521423115552311568123423632234§.§5214234016234029123423632234§;
   import flash.display.DisplayObject;
   import §implements use var§.§5214232504232517123423632234§;
   
   public class §extends super catch§ extends §521423113502311363123423632234§ implements §521423134722313485123423632234§
   {
      
      private static var §native catch super§:Object = {
         "upSkin":null,
         "downSkin":null,
         "overSkin":null,
         "disabledSkin":null,
         "selectedDisabledSkin":null,
         "selectedUpSkin":null,
         "selectedDownSkin":null,
         "selectedOverSkin":null
      };
      
      private var §break for with§:DisplayObject;
      
      private var §5214232524232537123423632234§:DisplayObject;
      
      public function §extends super catch§()
      {
         super();
         this.buttonMode = true;
         this.useHandCursor = true;
      }
      
      public function §521423169932317006123423632234§(param1:§5214237009237022123423632234§, param2:String) : void
      {
      }
      
      public function §null use else§(param1:§5214237009237022123423632234§) : void
      {
      }
      
      override protected function drawBackground() : void
      {
      }
      
      override protected function drawIcon() : void
      {
         var _loc2_:DisplayObject = icon;
         var _loc1_:String = enabled ? §import catch switch§ : "disabled";
         if(selected)
         {
            _loc1_ = "selected" + _loc1_.substr(0,1).toUpperCase() + _loc1_.substr(1);
         }
         _loc1_ += "Icon";
         var _loc3_:Object = §default catch false§(_loc1_);
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
            addChildAt(icon,0);
         }
         if(_loc2_ != null && _loc2_ != icon && _loc2_.parent == this)
         {
            removeChild(_loc2_);
         }
      }
      
      public function §in finally return§(param1:§5214237009237022123423632234§, param2:String) : void
      {
      }
      
      override protected function drawLayout() : void
      {
      }
      
      override public function set data(param1:Object) : void
      {
         §else use null§ = param1;
         this.§break for with§ = param1.iconNormal;
         this.§5214232524232537123423632234§ = param1.iconSelected;
      }
      
      override public function set listData(param1:§5214234016234029123423632234§) : void
      {
         var _loc2_:§5214232504232517123423632234§ = §else use null§.dat.preview as §5214232504232517123423632234§;
         if(_loc2_ != null)
         {
            if(_loc2_.data == null)
            {
               _loc2_.§extends finally import§(this);
            }
         }
         §5214231054231067123423632234§ = param1;
         if(this.§break for with§ != null && this.§5214232524232537123423632234§ != null)
         {
            §with switch include§("icon",this.§break for with§);
            §with switch include§("selectedUpIcon",this.§5214232524232537123423632234§);
            §with switch include§("selectedOverIcon",this.§5214232524232537123423632234§);
            §with switch include§("selectedDownIcon",this.§5214232524232537123423632234§);
         }
      }
      
      public function §implements catch do§(param1:§5214237009237022123423632234§) : void
      {
      }
   }
}

