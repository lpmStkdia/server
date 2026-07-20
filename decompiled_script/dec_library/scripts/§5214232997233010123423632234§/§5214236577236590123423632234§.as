package §5214232997233010123423632234§
{
   import §521423115552311568123423632234§.§521423113502311363123423632234§;
   import §521423115552311568123423632234§.§5214234016234029123423632234§;
   import flash.display.DisplayObject;
   import §implements use var§.§5214232504232517123423632234§;
   import §var switch try§.§5214235726235739123423632234§;
   import §var switch try§.§5214238393238406123423632234§;
   
   public class §5214236577236590123423632234§ extends §521423113502311363123423632234§ implements §5214238393238406123423632234§
   {
      
      private var §break for with§:DisplayObject;
      
      private var §5214232524232537123423632234§:DisplayObject;
      
      public function §5214236577236590123423632234§()
      {
         super();
         this.buttonMode = true;
         this.useHandCursor = true;
      }
      
      override protected function drawLayout() : void
      {
      }
      
      private function §extends finally import§() : void
      {
         var _loc1_:§5214232504232517123423632234§ = §else use null§.preview as §5214232504232517123423632234§;
         if(_loc1_ != null && (_loc2_.§null set case§ & 1) == 0)
         {
            _loc1_.§extends finally import§(new §5214235726235739123423632234§(this));
         }
      }
      
      override protected function drawBackground() : void
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
         this.§extends finally import§();
         §5214231054231067123423632234§ = param1;
         if(this.§break for with§ != null && this.§5214232524232537123423632234§ != null)
         {
            §with switch include§("icon",this.§break for with§);
            §with switch include§("selectedUpIcon",this.§5214232524232537123423632234§);
            §with switch include§("selectedOverIcon",this.§5214232524232537123423632234§);
            §with switch include§("selectedDownIcon",this.§5214232524232537123423632234§);
         }
      }
      
      public function §import finally switch§(param1:§5214232504232517123423632234§) : void
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
   }
}

