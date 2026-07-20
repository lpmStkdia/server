package §5214237710237723123423632234§
{
   import §521423115552311568123423632234§.§521423113502311363123423632234§;
   import §521423115552311568123423632234§.§5214234016234029123423632234§;
   import §521423121102312123123423632234§.§implements var var§;
   import §5214234736234749123423632234§.§dynamic set return§;
   import §else while static§.§521423113812311394123423632234§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import §implements super else§.§const use native§;
   
   public class §dynamic set continue§ extends §521423113502311363123423632234§
   {
      
      public static var §implements switch try§:§implements var var§;
      
      private var §try var dynamic§:DisplayObject;
      
      private var §with var set§:§521423113812311394123423632234§;
      
      private var §521423139072313920123423632234§:§dynamic set return§;
      
      public function §dynamic set continue§()
      {
         super();
      }
      
      private function resize() : void
      {
         this.§521423139072313920123423632234§.x = §for var native§ - this.§521423139072313920123423632234§.width - 6;
      }
      
      private function §while var case§(param1:MouseEvent) : void
      {
         §implements switch try§.§5214236836236849123423632234§(this.§with var set§.§5214231844231857123423632234§,this.§with var set§.uid);
      }
      
      private function §5214237068237081123423632234§(param1:Object) : Sprite
      {
         var _loc2_:Sprite = new Sprite();
         if(param1.id != null)
         {
            this.§with var set§ = new §521423113812311394123423632234§(param1.id);
            this.§with var set§.§default super finally§(5898034);
            this.§with var set§.x = -3;
            this.§with var set§.y = -1;
            _loc2_.addChild(this.§with var set§);
         }
         return _loc2_;
      }
      
      override protected function drawBackground() : void
      {
         var _loc1_:String = enabled ? §import catch switch§ : "disabled";
         if(selected)
         {
            _loc1_ = "selected" + _loc1_.substr(0,1).toUpperCase() + _loc1_.substr(1);
         }
         _loc1_ += "Skin";
         var _loc2_:DisplayObject = §with set dynamic§;
         §with set dynamic§ = §continue while case§(§default catch false§(_loc1_));
         addChildAt(§with set dynamic§,0);
         if(_loc2_ != null && _loc2_ != §with set dynamic§)
         {
            removeChild(_loc2_);
         }
      }
      
      override public function set listData(param1:§5214234016234029123423632234§) : void
      {
         §5214231054231067123423632234§ = param1;
         if(this.§try var dynamic§ != null)
         {
            §with switch include§("icon",this.§try var dynamic§);
         }
      }
      
      override public function set selected(param1:Boolean) : void
      {
      }
      
      private function §do finally finally§(param1:MouseEvent) : void
      {
         this.§521423139072313920123423632234§.visible = true;
         super.selected = true;
      }
      
      private function §finally while super§(param1:MouseEvent) : void
      {
         this.§521423139072313920123423632234§.visible = false;
         super.selected = false;
      }
      
      private function §use use static§(param1:Event) : void
      {
         this.resize();
      }
      
      override public function set data(param1:Object) : void
      {
         §else use null§ = param1;
         mouseEnabled = false;
         mouseChildren = true;
         useHandCursor = false;
         buttonMode = false;
         var _loc2_:§const use native§ = new §const use native§(false);
         var _loc3_:§const use native§ = new §const use native§(true);
         §with switch include§("upSkin",_loc2_);
         §with switch include§("downSkin",_loc2_);
         §with switch include§("overSkin",_loc2_);
         §with switch include§("selectedUpSkin",_loc3_);
         §with switch include§("selectedOverSkin",_loc3_);
         §with switch include§("selectedDownSkin",_loc3_);
         this.§try var dynamic§ = this.§5214237068237081123423632234§(§else use null§);
         if(this.§521423139072313920123423632234§ == null)
         {
            this.§521423139072313920123423632234§ = new §dynamic set return§(1);
            addChild(this.§521423139072313920123423632234§);
         }
         this.§521423139072313920123423632234§.visible = false;
         this.addEventListener("resize",this.§use use static§,false,0,true);
         this.addEventListener("rollOver",this.§do finally finally§,false,0,true);
         this.addEventListener("rollOut",this.§finally while super§,false,0,true);
         this.resize();
         this.§521423139072313920123423632234§.addEventListener("click",this.§while var case§,false,0,true);
      }
   }
}

