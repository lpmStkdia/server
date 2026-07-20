package §dynamic for case§
{
   import §521423148322314845123423632234§.§dynamic use while§;
   import §521423188072318820123423632234§.§continue const const§;
   import §5214234310234323123423632234§.§break while override§;
   import §continue switch case§.§dynamic const break§;
   import §continue switch case§.§each var else§;
   import §extends use break§.§521423125792312592123423632234§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import §static catch do§.§static set in§;
   
   public class §catch while while§ extends §continue const const§
   {
      
      public static var §class function package§:§each var else§;
      
      public static var §521423137302313743123423632234§:§521423125792312592123423632234§;
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      private static const §try use import§:String = "{time}";
      
      private static const §5214233506233519123423632234§:BitmapData = new §dynamic use while§(0,0);
      
      private var §521423140122314025123423632234§:§break while override§;
      
      private var §5214235210235223123423632234§:String;
      
      private var §521423115172311530123423632234§:int;
      
      private var §5214235480235493123423632234§:Boolean;
      
      public function §catch while while§()
      {
         super();
         this.§5214239350239363123423632234§();
      }
      
      public function §var package class§() : void
      {
         if(!this.§5214235480235493123423632234§)
         {
            return;
         }
         this.§5214235480235493123423632234§ = false;
         if(this.parent != null)
         {
            this.parent.removeChild(this);
         }
         §class function package§.stage.removeEventListener("resize",this.§use use static§);
      }
      
      public function §false use var§() : void
      {
         this.§var package class§();
         this.§521423140122314025123423632234§ = null;
      }
      
      public function §return catch dynamic§(param1:int) : void
      {
         if(this.§5214235480235493123423632234§)
         {
            return;
         }
         this.§5214235480235493123423632234§ = true;
         this.§in for each§ = param1;
         §521423137302313743123423632234§.§continue var continue§().addChild(this);
         this.§use use static§();
         §class function package§.stage.addEventListener("resize",this.§use use static§);
      }
      
      public function set §in for each§(param1:int) : void
      {
         if(this.§521423115172311530123423632234§ == param1)
         {
            return;
         }
         this.§521423115172311530123423632234§ = param1;
         var _loc2_:int = this.§521423115172311530123423632234§ / 60;
         this.§521423115172311530123423632234§ -= _loc2_ * 60;
         var _loc3_:String = this.§521423115172311530123423632234§ < 10 ? "0" + this.§521423115172311530123423632234§ : this.§521423115172311530123423632234§.toString();
         this.§521423140122314025123423632234§.text = this.§5214235210235223123423632234§.replace("{time}",_loc2_ + ":" + _loc3_);
         this.§521423140122314025123423632234§.x = width - this.§521423140122314025123423632234§.width >> 1;
      }
      
      private function §5214239350239363123423632234§() : void
      {
         this.§5214235210235223123423632234§ = §521423164582316471123423632234§.§521423157602315773123423632234§("REARM_SELFDISTRUCTION");
         var _loc1_:int = 33;
         var _loc2_:int = 33;
         var _loc6_:int = 5;
         var _loc7_:int = 16;
         var _loc4_:Bitmap = new Bitmap(§5214233506233519123423632234§);
         addChild(_loc4_);
         _loc4_.y = _loc1_ - 5;
         var _loc5_:int = _loc4_.y + _loc4_.height + 2 * _loc6_;
         var _loc3_:§break while override§ = new §break while override§();
         _loc3_.§5214239166239179123423632234§ = _loc7_;
         _loc3_.text = §521423164582316471123423632234§.§521423157602315773123423632234§("REARM_APPLY");
         _loc3_.y = _loc5_;
         addChild(_loc3_);
         width = _loc3_.textWidth;
         _loc5_ += _loc3_.height;
         this.§521423140122314025123423632234§ = new §break while override§();
         this.§521423140122314025123423632234§.§5214239166239179123423632234§ = _loc7_;
         this.§521423140122314025123423632234§.autoSize = "left";
         this.§521423140122314025123423632234§.text = this.§5214235210235223123423632234§.replace("{time}"," 99:99");
         this.§521423140122314025123423632234§.y = _loc5_;
         addChild(this.§521423140122314025123423632234§);
         if(width < this.§521423140122314025123423632234§.textWidth)
         {
            width = this.§521423140122314025123423632234§.textWidth;
         }
         width += 2 * _loc2_;
         _loc4_.x = width - _loc4_.width >> 1;
         _loc3_.x = width - _loc3_.width >> 1;
         height = _loc5_ + this.§521423140122314025123423632234§.height + _loc1_ - 5;
      }
      
      private function §use use static§(param1:Event = null) : void
      {
         this.x = §class function package§.stage.stageWidth / §dynamic const break§.§5214231303231316123423632234§ - this.width >> 1;
         this.y = §class function package§.stage.stageHeight / §dynamic const break§.§5214231303231316123423632234§ - this.height >> 1;
      }
   }
}

