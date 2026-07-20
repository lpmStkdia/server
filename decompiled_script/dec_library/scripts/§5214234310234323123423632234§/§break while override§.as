package §5214234310234323123423632234§
{
   import §521423138512313864123423632234§.§finally function return§;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   
   public class §break while override§ extends §finally function return§
   {
      
      private var _autoSize:String;
      
      private var §52142377023783123423632234§:Boolean;
      
      public function §break while override§()
      {
         super();
         sharpness = 40;
         thickness = 70;
         this._autoSize = super.autoSize;
         this.§52142377023783123423632234§ = true;
      }
      
      override public function set autoSize(param1:String) : void
      {
         super.autoSize = param1;
         this._autoSize = param1;
      }
      
      private function §var for if§(param1:MouseEvent) : void
      {
         Mouse.cursor = "ibeam";
      }
      
      private function §while finally function§() : void
      {
         if(super.selectable && this.§52142377023783123423632234§)
         {
            addEventListener("mouseOver",this.§var for if§);
            addEventListener("mouseOut",this.§5214234784234797123423632234§);
         }
         else if(hasEventListener("mouseOver"))
         {
            removeEventListener("mouseOver",this.§var for if§);
            removeEventListener("mouseOut",this.§5214234784234797123423632234§);
         }
      }
      
      public function get §in finally import§() : Boolean
      {
         return this.§52142377023783123423632234§;
      }
      
      override public function set htmlText(param1:String) : void
      {
         var _loc2_:Number = NaN;
         super.autoSize = this._autoSize;
         super.htmlText = param1;
         if(super.autoSize == "center")
         {
            _loc2_ = super.width;
            super.autoSize = "none";
            super.width = Math.ceil(_loc2_) + 1;
         }
      }
      
      override public function set selectable(param1:Boolean) : void
      {
         super.selectable = param1;
         this.§while finally function§();
      }
      
      public function set §in finally import§(param1:Boolean) : void
      {
         this.§52142377023783123423632234§ = param1;
         this.§while finally function§();
      }
      
      private function §5214234784234797123423632234§(param1:MouseEvent) : void
      {
         Mouse.cursor = "auto";
      }
   }
}

