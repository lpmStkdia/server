package §5214234814234827123423632234§
{
   import §521423100722310085123423632234§.§null finally class§;
   import §521423138512313864123423632234§.§if with§;
   import §521423158432315856123423632234§.§5214231885231898123423632234§;
   import §5214234310234323123423632234§.§521423123992312412123423632234§;
   import §5214234310234323123423632234§.§break while override§;
   import §continue switch case§.§each var else§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import §null const else§.§521423177422317755123423632234§;
   import §static catch do§.§static set in§;
   import §super package break§.§while while const§;
   import §with extends§.§5214234285234298123423632234§;
   
   public class §5214231421231434123423632234§ extends §521423177422317755123423632234§ implements §var for case§
   {
      
      public static var §class function package§:§each var else§;
      
      public static var §finally const while§:§while while const§;
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      private var §5214233125233138123423632234§:§5214231885231898123423632234§;
      
      private var §extends function throw§:§521423123992312412123423632234§;
      
      private const §continue switch each§:int = 12;
      
      private const §while var with§:int = 9;
      
      private const §5214231973231986123423632234§:Point = new Point(104,33);
      
      private const §import finally include§:int = 8;
      
      private const §521423114062311419123423632234§:int = 300;
      
      public function §5214231421231434123423632234§(param1:§5214231885231898123423632234§, param2:BitmapData, param3:BitmapData, param4:String = "", param5:String = "", param6:int = 0)
      {
         var _loc12_:Bitmap = null;
         var _loc8_:Bitmap = null;
         var _loc7_:int = 0;
         var _loc13_:§break while override§ = null;
         var _loc14_:§break while override§ = null;
         super();
         this.§5214233125233138123423632234§ = param1;
         _loc12_ = new Bitmap(param2);
         _loc8_ = new Bitmap(param3);
         _loc7_ = Math.max(_loc8_.width + 12 * 2 + 9 * 2,_loc12_.width + 12 * 2 + 9 * 2,300);
         var _loc11_:§null finally class§ = §null finally class§.§5214234615234628123423632234§("HEADER_ATTENTION",_loc7_,_loc12_.height);
         addChild(_loc11_);
         var _loc10_:§if with§ = new §if with§(0,0,795149);
         addChild(_loc10_);
         _loc10_.x = 12;
         _loc10_.y = 12;
         _loc8_.x = _loc7_ - _loc8_.width >> 1;
         _loc8_.y = 17;
         addChild(_loc8_);
         if(param4 != null && param4 != "")
         {
            _loc13_ = new §break while override§();
            _loc13_.align = "center";
            _loc13_.wordWrap = true;
            _loc13_.multiline = true;
            _loc13_.§5214239166239179123423632234§ = 13;
            _loc13_.htmlText = param4;
            _loc13_.color = 5898034;
            _loc13_.x = 12 * 2;
            _loc13_.y = _loc8_.y + _loc8_.height + 9 - 28;
            _loc13_.width = _loc7_ - 12 * 4;
            addChild(_loc13_);
         }
         _loc12_.x = _loc7_ - _loc12_.width >> 1;
         _loc12_.y = _loc13_.y + _loc13_.height + 9 - 5;
         addChild(_loc12_);
         if(param5 != null && param5 != "")
         {
            _loc14_ = new §break while override§();
            _loc14_.align = "center";
            _loc14_.wordWrap = true;
            _loc14_.multiline = true;
            _loc14_.§5214239166239179123423632234§ = 12;
            _loc14_.color = 5898034;
            _loc14_.htmlText = String(param5.split("\n")[0]);
            _loc14_.x = 12 * 2;
            _loc14_.y = _loc12_.y + _loc12_.height + 9 - 17;
            _loc14_.width = _loc7_ - 12 * 4;
            addChild(_loc14_);
         }
         this.§extends function throw§ = new §521423123992312412123423632234§();
         addChild(this.§extends function throw§);
         this.§extends function throw§.label = §521423164582316471123423632234§.§521423157602315773123423632234§("FREE_BONUSES_WINDOW_BUTTON_CLOSE_TEXT");
         var _loc9_:int = _loc8_.height + _loc12_.height + this.§extends function throw§.height + 9 * 3 + 12 * 3;
         if(_loc13_ != null)
         {
            _loc9_ += _loc13_.height + 9;
         }
         if(_loc14_ != null)
         {
            _loc9_ += _loc14_.height + 9;
         }
         _loc11_.height = _loc9_ - 5 - 28 - 7 - 17;
         this.§extends function throw§.y = _loc11_.height - 9 - 35;
         this.§extends function throw§.x = _loc11_.width - this.§extends function throw§.width >> 1;
         _loc10_.width = _loc11_.width - 12 * 2;
         _loc10_.height = _loc11_.height - 12 - 9 * 2 - this.§5214231973231986123423632234§.y + 2;
         this.§extends function throw§.addEventListener("click",this.§521423135682313581123423632234§);
         §finally const while§.§521423128252312838123423632234§(this);
      }
      
      private function §521423135682313581123423632234§(param1:MouseEvent = null) : void
      {
         this.§false use var§();
      }
      
      public function §false use var§() : void
      {
         var _loc1_:§5214234285234298123423632234§ = null;
         this.§extends function throw§.removeEventListener("click",this.§521423135682313581123423632234§);
         §finally const while§.§var const else§(this);
         if(this.§5214233125233138123423632234§ != null)
         {
            _loc1_ = new §5214234285234298123423632234§(this.§5214233125233138123423632234§);
            _loc1_.§5214239191239204123423632234§();
            this.§5214233125233138123423632234§ = null;
         }
      }
   }
}

