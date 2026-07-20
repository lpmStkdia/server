package §var while try§
{
   import §521423115552311568123423632234§.§521423113502311363123423632234§;
   import §521423115552311568123423632234§.§5214234016234029123423632234§;
   import §521423127632312776123423632234§.§52142371123724123423632234§;
   import §5214234310234323123423632234§.§break while override§;
   import §5214234814234827123423632234§.§with super if§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import §static set override§.§521423110152311028123423632234§;
   
   public class §function for class§ extends §521423113502311363123423632234§
   {
      
      private var §break for with§:DisplayObject;
      
      private var §override catch use§:Bitmap;
      
      private var §if catch for§:§52142371123724123423632234§ = new §52142371123724123423632234§();
      
      public function §function for class§()
      {
         super();
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
      
      protected function §521423170162317029123423632234§(param1:Object) : Sprite
      {
         var _loc4_:§521423110152311028123423632234§ = null;
         var _loc2_:§break while override§ = null;
         var _loc3_:§with super if§ = null;
         _loc2_ = null;
         var _loc5_:Sprite = new Sprite();
         _loc2_ = new §break while override§();
         _loc2_.autoSize = "none";
         _loc2_.alpha = param1.rang > 0 ? 0.5 : 1;
         _loc2_.text = param1.gameName;
         _loc2_.height = 20;
         _loc2_.width = §for var native§ - 20;
         _loc2_.x = 12;
         _loc2_.y = 0;
         if(param1.rang > 0)
         {
            _loc4_ = new §521423110152311028123423632234§(param1.rang);
            _loc4_.x = -2;
            _loc4_.y = 2;
            _loc5_.addChild(_loc4_);
         }
         _loc5_.addChild(_loc2_);
         if(param1.additionalCrystalsPercent > 0)
         {
            _loc2_.color = 16048128;
            _loc3_ = new §with super if§();
            _loc3_.§include var override§("+" + param1.additionalCrystalsPercent + "%");
            _loc3_.x = _loc2_.x + _loc2_.textWidth + 4;
            _loc5_.addChild(_loc3_);
         }
         return _loc5_;
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
      
      override protected function drawLayout() : void
      {
         super.drawLayout();
         §with set dynamic§.width = width - 6;
         §with set dynamic§.height = height;
      }
   }
}

