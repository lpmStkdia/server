package §5214234814234827123423632234§
{
   import §521423115552311568123423632234§.§521423113502311363123423632234§;
   import §521423115552311568123423632234§.§5214234016234029123423632234§;
   import §521423138512313864123423632234§.§5214233024233037123423632234§;
   import §521423188072318820123423632234§.§return package super§;
   import §521423188072318820123423632234§.§throw package class§;
   import §5214234310234323123423632234§.§break while override§;
   import §else while static§.§521423113812311394123423632234§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class §each import§ extends §521423113502311363123423632234§
   {
      
      protected var §break for with§:DisplayObject;
      
      public function §each import§()
      {
         super();
      }
      
      protected function §521423106492310662123423632234§(param1:Boolean) : DisplayObject
      {
         return new Sprite();
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
         if(this.§break for with§ != null)
         {
            §with switch include§("icon",this.§break for with§);
         }
      }
      
      override protected function drawBackground() : void
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
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:DisplayObject = null;
         _loc2_ = null;
         _loc3_ = null;
         §else use null§ = param1;
         _loc2_ = new §throw package class§();
         _loc3_ = new §return package super§();
         this.mouseChildren = true;
         this.useHandCursor = false;
         this.buttonMode = false;
         §break for with§ = this.§521423170162317029123423632234§(§else use null§);
         §with switch include§("upSkin",_loc2_);
         §with switch include§("downSkin",_loc2_);
         §with switch include§("overSkin",_loc2_);
         §with switch include§("selectedUpSkin",_loc3_);
         §with switch include§("selectedOverSkin",_loc3_);
         §with switch include§("selectedDownSkin",_loc3_);
      }
      
      protected function §521423170162317029123423632234§(param1:Object) : Sprite
      {
         var _loc4_:§break while override§ = null;
         var _loc2_:Sprite = null;
         var _loc3_:§521423113812311394123423632234§ = null;
         _loc2_ = new Sprite();
         _loc3_ = new §521423113812311394123423632234§(param1.userId);
         _loc3_.§5214234389234402123423632234§ = true;
         _loc3_.§default super finally§(16777215);
         _loc3_.x = -3;
         _loc3_.y = -1;
         _loc2_.addChild(_loc3_);
         _loc4_ = new §break while override§();
         _loc4_.autoSize = "none";
         _loc4_.align = "right";
         _loc4_.width = 90;
         _loc4_.x = §for var native§ - 100;
         _loc4_.text = param1.income > -1 ? §5214233024233037123423632234§.§521423169102316923123423632234§(param1.income,false) : "null";
         _loc4_.y = -1;
         _loc2_.addChild(_loc4_);
         return _loc2_;
      }
   }
}

