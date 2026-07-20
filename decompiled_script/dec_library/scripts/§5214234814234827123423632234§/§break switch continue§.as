package §5214234814234827123423632234§
{
   import §521423138512313864123423632234§.§if with§;
   import §521423138512313864123423632234§.§switch while do§;
   import §5214234310234323123423632234§.§521423123992312412123423632234§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.display.Sprite;
   import §null catch override§.§continue while return§;
   import §null const else§.§521423177422317755123423632234§;
   import §static catch do§.§static set in§;
   
   public class §break switch continue§ extends §521423177422317755123423632234§
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      public var §extends function throw§:§521423123992312412123423632234§;
      
      public var §5214235370235383123423632234§:int;
      
      private const §continue switch each§:int = 12;
      
      private const §while var with§:int = 9;
      
      private var §5214231867231880123423632234§:Sprite;
      
      public function §break switch continue§(param1:BitmapData, param2:int, param3:int, param4:int, param5:int)
      {
         var _loc6_:Bitmap = null;
         var _loc7_:§continue while return§ = null;
         super();
         this.§5214235370235383123423632234§ = param2;
         var _loc14_:int = 42 + param1.width;
         var _loc13_:§switch while do§ = new §switch while do§();
         addChild(_loc13_);
         var _loc9_:§if with§ = new §if with§(_loc14_ - 12 * 2,0,795149);
         this.§5214231867231880123423632234§ = _loc9_;
         _loc13_.addChild(_loc9_);
         _loc9_.x = 12;
         _loc9_.y = 12;
         _loc6_ = new Bitmap(param1);
         _loc6_.x = (_loc9_.width - _loc6_.width) / 2;
         this.§each for implements§(_loc6_,12);
         var _loc12_:int = _loc9_.width * 0.8;
         if(param2 > 0)
         {
            _loc7_ = new §continue while return§(§521423164582316471123423632234§.§521423157602315773123423632234§("STRING_DONATION_ALERT_DONATED_CRYSTALS_TEXT"),param2);
            _loc7_.width = _loc12_;
            this.§521423174372317450123423632234§(_loc7_,_loc9_.width);
            this.§each for implements§(_loc7_,0);
         }
         if(param3 > 0)
         {
            _loc7_ = new §continue while return§(§521423164582316471123423632234§.§521423157602315773123423632234§("STRING_DONATION_ALERT_PACKAGE_BONUS_CRYSTALS_TEXT"),param3);
            _loc7_.width = _loc12_;
            this.§521423174372317450123423632234§(_loc7_,_loc9_.width);
            this.§each for implements§(_loc7_,-7);
         }
         if(param4 > 0)
         {
            _loc7_ = new §continue while return§(§521423164582316471123423632234§.§521423157602315773123423632234§("STRING_DONATION_ALERT_DOUBLE_CRYSTAL_CRYSTALS_TEXT"),param4);
            _loc7_.width = _loc12_;
            this.§521423174372317450123423632234§(_loc7_,_loc9_.width);
            this.§each for implements§(_loc7_,-7);
         }
         if(param5 > 0)
         {
            _loc7_ = new §continue while return§(§521423164582316471123423632234§.§521423157602315773123423632234§("DONATION_ALERT_PREMIUM_DAYS_TEXT"),param5,true);
            _loc7_.width = _loc12_;
            this.§521423174372317450123423632234§(_loc7_,_loc9_.width);
            this.§each for implements§(_loc7_,param2 > 0 ? -7 : 0);
         }
         var _loc11_:Shape = new Shape();
         _loc11_.graphics.beginFill(5898034);
         var _loc10_:int = 0;
         while(_loc10_ < _loc12_ - 5)
         {
            _loc11_.graphics.drawRect(_loc10_,0,1,1);
            _loc10_ += 3;
         }
         this.§521423174372317450123423632234§(_loc11_,_loc9_.width);
         this.§each for implements§(_loc11_,4);
         var _loc8_:int = param4 + param2 + param3;
         if(_loc8_ > 0)
         {
            _loc7_ = new §continue while return§(§521423164582316471123423632234§.§521423157602315773123423632234§("STRING_DONATION_ALERT_RECEIVED_CRYSTALS_TEXT"),_loc8_);
            _loc7_.width = _loc12_;
            this.§521423174372317450123423632234§(_loc7_,_loc9_.width);
            this.§each for implements§(_loc7_,1);
         }
         if(param5 > 0)
         {
            _loc7_ = new §continue while return§(§521423164582316471123423632234§.§521423157602315773123423632234§("DONATION_ALERT_RECEIVED_PREMIUM_TEXT"),param5,true);
            _loc7_.width = _loc12_;
            this.§521423174372317450123423632234§(_loc7_,_loc9_.width);
            this.§each for implements§(_loc7_,_loc8_ > 0 ? -7 : 1);
         }
         _loc9_.height += 12;
         this.§extends function throw§ = new §521423123992312412123423632234§();
         if(§521423164582316471123423632234§ != null)
         {
            this.§extends function throw§.label = §521423164582316471123423632234§.§521423157602315773123423632234§("FREE_BONUSES_WINDOW_BUTTON_CLOSE_TEXT");
         }
         this.§extends function throw§.y = _loc9_.x + _loc9_.height + 12;
         this.§521423174372317450123423632234§(this.§extends function throw§,_loc14_);
         _loc13_.addChild(this.§extends function throw§);
         _loc13_.height = this.§extends function throw§.y + this.§extends function throw§.height + 12;
         _loc13_.width = _loc14_;
         addChild(_loc13_);
      }
      
      private function §each for implements§(param1:DisplayObject, param2:int) : void
      {
         param1.y = this.§5214231867231880123423632234§.height + param2;
         this.§5214231867231880123423632234§.addChild(param1);
      }
      
      private function §521423174372317450123423632234§(param1:DisplayObject, param2:Number) : void
      {
         param1.x = int((param2 - param1.width) / 2);
      }
   }
}

