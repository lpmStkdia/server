package §var while try§
{
   import §521423115552311568123423632234§.§521423113502311363123423632234§;
   import §521423115552311568123423632234§.§5214234016234029123423632234§;
   import §521423127632312776123423632234§.§52142371123724123423632234§;
   import §5214234310234323123423632234§.§break while override§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class §521423179372317950123423632234§ extends §521423113502311363123423632234§
   {
      
      private var §break for with§:DisplayObject;
      
      private var §override catch use§:Bitmap;
      
      private var §if catch for§:§52142371123724123423632234§ = new §52142371123724123423632234§();
      
      public function §521423179372317950123423632234§()
      {
         super();
      }
      
      protected function §521423170162317029123423632234§(param1:Object) : Sprite
      {
         var _loc3_:Sprite = null;
         var _loc2_:§break while override§ = null;
         _loc3_ = new Sprite();
         _loc2_ = new §break while override§();
         _loc2_.autoSize = "none";
         _loc2_.color = 16777215;
         _loc2_.alpha = 1;
         _loc2_.text = param1.gameName;
         _loc2_.height = 20;
         _loc2_.width = §for var native§ - 20;
         _loc2_.x = -3;
         _loc2_.y = 0;
         _loc3_.addChild(_loc2_);
         return _loc3_;
      }
      
      override public function set data(param1:Object) : void
      {
         this.§override catch use§ = new Bitmap(new BitmapData(1,1,true,0));
         §else use null§ = param1;
         §with switch include§("upSkin",this.§override catch use§);
         §with switch include§("downSkin",this.§if catch for§);
         §with switch include§("overSkin",this.§if catch for§);
         §with switch include§("selectedUpSkin",this.§override catch use§);
         §with switch include§("selectedOverSkin",this.§if catch for§);
         §with switch include§("selectedDownSkin",this.§if catch for§);
      }
      
      override protected function drawLayout() : void
      {
         super.drawLayout();
         §with set dynamic§.width = width - 6;
         §with set dynamic§.height = height;
      }
      
      override protected function drawIcon() : void
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
         if(_loc1_ != null && _loc1_ != icon && _loc1_.parent == this)
         {
            removeChild(_loc1_);
         }
      }
      
      override public function set listData(param1:§5214234016234029123423632234§) : void
      {
         §5214231054231067123423632234§ = param1;
         this.§break for with§ = this.§521423170162317029123423632234§(§else use null§);
         if(this.§break for with§ != null)
         {
            §with switch include§("icon",this.§break for with§);
         }
      }
   }
}

