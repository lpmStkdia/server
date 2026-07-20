package §521423191972319210123423632234§
{
   import §521423115552311568123423632234§.§521423113502311363123423632234§;
   import §521423115552311568123423632234§.§5214234016234029123423632234§;
   import §521423118392311852123423632234§.§static catch catch§;
   import §521423138512313864123423632234§.§5214233024233037123423632234§;
   import §5214234310234323123423632234§.§break while override§;
   import §5214238765238778123423632234§.§final function dynamic§;
   import §5214238765238778123423632234§.§implements const const§;
   import §else while static§.§521423113812311394123423632234§;
   import §finally implements§.§5214236559236572123423632234§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §return super do§ extends §521423113502311363123423632234§
   {
      
      protected var §break for with§:DisplayObject;
      
      public function §return super do§()
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
      
      protected function §521423170162317029123423632234§(param1:Object) : Sprite
      {
         var _loc4_:§switch package else§ = param1 as §switch package else§;
         var _loc6_:Vector.<Number> = §521423178872317900123423632234§.§use use set§;
         var _loc2_:§static catch catch§ = _loc4_.§const finally include§;
         var _loc9_:Sprite = new Sprite();
         var _loc5_:§break while override§ = §521423103062310319123423632234§();
         var _loc7_:§break while override§ = §521423103062310319123423632234§();
         var _loc8_:§break while override§ = §521423103062310319123423632234§();
         _loc5_.text = _loc4_.§each package package§ < 0 ? " " : _loc4_.§each package package§.toString();
         _loc9_.addChild(_loc5_);
         _loc7_.text = _loc2_.name;
         _loc7_.x = _loc6_[1];
         _loc9_.addChild(_loc7_);
         _loc8_.autoSize = "none";
         _loc8_.height = 18;
         _loc8_.text = _loc2_.§5214236321236334123423632234§;
         _loc8_.x = _loc6_[2];
         _loc8_.width = §for var native§ - 520;
         _loc9_.addChild(_loc8_);
         var _loc3_:§521423113812311394123423632234§ = new §521423113812311394123423632234§(_loc2_.§521423187152318728123423632234§,false);
         _loc3_.x = _loc6_[3];
         _loc9_.addChild(_loc3_);
         var _loc10_:§break while override§ = §521423103062310319123423632234§();
         _loc10_.x = _loc6_[4];
         _loc10_.text = _loc2_.§each package var§.length.toString();
         _loc9_.addChild(_loc10_);
         _loc10_ = §521423103062310319123423632234§();
         _loc10_.width = 50;
         _loc10_.x = _loc6_[5];
         _loc10_.text = §5214233024233037123423632234§.§521423169102316923123423632234§(_loc2_.§import var each§,false);
         _loc9_.addChild(_loc10_);
         _loc10_ = §521423103062310319123423632234§();
         _loc10_.width = 40;
         _loc10_.x = _loc6_[6];
         _loc10_.text = §5214236559236572123423632234§.§521423118132311826123423632234§(new Date(Number(_loc2_.§5214232602232615123423632234§.toString())));
         _loc9_.addChild(_loc10_);
         return _loc9_;
      }
      
      protected function §521423106492310662123423632234§(param1:Boolean) : DisplayObject
      {
         return new Sprite();
      }
      
      override public function set data(param1:Object) : void
      {
         §else use null§ = param1;
         mouseEnabled = false;
         mouseChildren = true;
         buttonMode = useHandCursor = false;
         this.§break for with§ = this.§521423170162317029123423632234§(§else use null§);
         var _loc3_:DisplayObject = new §implements const const§();
         var _loc2_:DisplayObject = new §final function dynamic§();
         §with switch include§("upSkin",_loc3_);
         §with switch include§("downSkin",_loc3_);
         §with switch include§("overSkin",_loc3_);
         §with switch include§("selectedUpSkin",_loc2_);
         §with switch include§("selectedOverSkin",_loc2_);
         §with switch include§("selectedDownSkin",_loc2_);
         this.addEventListener("rollOver",this.§do finally finally§,false,0,true);
         this.addEventListener("rollOut",this.§finally while super§,false,0,true);
      }
      
      override public function set listData(param1:§5214234016234029123423632234§) : void
      {
         §5214231054231067123423632234§ = param1;
         if(this.§break for with§ != null)
         {
            §with switch include§("icon",this.§break for with§);
         }
      }
      
      private function §finally while super§(param1:MouseEvent) : void
      {
         super.selected = false;
      }
      
      private function §521423103062310319123423632234§() : §break while override§
      {
         var _loc1_:§break while override§ = new §break while override§();
         _loc1_.color = 5898034;
         _loc1_.align = "left";
         _loc1_.autoSize = "left";
         return _loc1_;
      }
      
      private function §do finally finally§(param1:MouseEvent) : void
      {
         super.selected = true;
      }
   }
}

