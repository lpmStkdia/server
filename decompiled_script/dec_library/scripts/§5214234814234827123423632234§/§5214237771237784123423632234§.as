package §5214234814234827123423632234§
{
   import §521423100722310085123423632234§.§null finally class§;
   import §521423138512313864123423632234§.§if with§;
   import §5214234310234323123423632234§.§521423123992312412123423632234§;
   import §5214234310234323123423632234§.§break while override§;
   import §5214236035236048123423632234§.§null use throw§;
   import §continue const try§.§521423120222312035123423632234§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Point;
   import §null const else§.§521423177422317755123423632234§;
   import §static catch do§.§static set in§;
   
   public class §5214237771237784123423632234§ extends §521423177422317755123423632234§
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      private var §5214233106233119123423632234§:§null finally class§;
      
      private var §5214231867231880123423632234§:§if with§;
      
      public var §extends function throw§:§521423123992312412123423632234§;
      
      private var §521423169472316960123423632234§:§break while override§;
      
      private var §import package extends§:Point;
      
      private var §extends catch if§:int = 450;
      
      private const §continue switch each§:int = 12;
      
      private const §while var with§:int = 9;
      
      private const §5214231973231986123423632234§:Point = new Point(104,33);
      
      private const §import finally include§:int = 8;
      
      private var §import while default§:Bitmap;
      
      private var §5214239624239637123423632234§:Sprite;
      
      public function §5214237771237784123423632234§(param1:String, param2:Vector.<§521423120222312035123423632234§>)
      {
         var _loc8_:int = 0;
         var _loc9_:§521423148292314842123423632234§ = null;
         var _loc7_:§break while override§ = null;
         super();
         var _loc3_:§null use throw§ = new §null use throw§(11);
         var _loc5_:Boolean = (param2.length & 1) == 0;
         if(param2.length == 1)
         {
            _loc8_ = 1;
         }
         else if(param2.length < 5)
         {
            _loc8_ = 2;
         }
         else
         {
            _loc8_ = 3;
         }
         var _loc6_:Sprite = new Sprite();
         this.§5214239624239637123423632234§ = new Sprite();
         this.§import while default§ = new Bitmap();
         _loc6_.addChild(this.§import while default§);
         this.§extends catch if§ = _loc3_.width + 12 * 2 + 9 * 2 + (_loc3_.width + 8) * (_loc8_ - 1);
         this.§521423169472316960123423632234§ = new §break while override§();
         this.§521423169472316960123423632234§.wordWrap = true;
         this.§521423169472316960123423632234§.multiline = true;
         this.§521423169472316960123423632234§.text = param1;
         this.§521423169472316960123423632234§.§5214239166239179123423632234§ = 12;
         this.§521423169472316960123423632234§.color = 5898034;
         this.§521423169472316960123423632234§.x = 12 * 2;
         this.§521423169472316960123423632234§.y = 12 * 2;
         this.§521423169472316960123423632234§.width = this.§extends catch if§ - 12 * 4;
         this.§import package extends§ = new Point(this.§extends catch if§,this.§521423169472316960123423632234§.height + this.§5214231973231986123423632234§.y + 12 * 3 + 9 * 3);
         this.§5214233106233119123423632234§ = §null finally class§.§5214234615234628123423632234§("HEADER_CONGRATULATION",this.§import package extends§.x,this.§import package extends§.y);
         addChild(this.§5214233106233119123423632234§);
         this.§5214231867231880123423632234§ = new §if with§(0,0,795149);
         addChild(this.§5214231867231880123423632234§);
         this.§5214231867231880123423632234§.x = 12;
         this.§5214231867231880123423632234§.y = 12;
         this.§5214231867231880123423632234§.width = this.§import package extends§.x - 12 * 2;
         this.§5214231867231880123423632234§.height = this.§import package extends§.y - 12 - 9 * 2 - this.§5214231973231986123423632234§.y + 2;
         addChild(this.§521423169472316960123423632234§);
         addChild(this.§5214239624239637123423632234§);
         var _loc4_:int = 0;
         while(_loc4_ < param2.length)
         {
            _loc3_ = new §null use throw§(11);
            this.§5214239624239637123423632234§.addChild(_loc3_);
            _loc9_ = new §521423148292314842123423632234§(param2[_loc4_].§5214239396239409123423632234§,_loc3_.width,_loc3_.height);
            this.§5214239624239637123423632234§.addChild(_loc9_);
            _loc3_.x = (!_loc5_ && _loc4_ > param2.length - _loc8_ ? _loc3_.width + 8 >> 1 : 0) + int(_loc4_ % _loc8_) * (_loc3_.width + 8);
            _loc3_.y = (_loc3_.height + 8) * (int(_loc4_ / _loc8_));
            _loc9_.x = _loc3_.x;
            _loc9_.y = _loc3_.y;
            _loc7_ = new §break while override§();
            this.§5214239624239637123423632234§.addChild(_loc7_);
            _loc7_.§5214239166239179123423632234§ = 16;
            _loc7_.color = 5898034;
            _loc7_.text = "×" + param2[_loc4_].count.toString();
            _loc7_.x = _loc3_.x + _loc3_.width - _loc7_.width - 15;
            _loc7_.y = _loc3_.y + _loc3_.height - _loc7_.height - 10;
            _loc4_++;
         }
         this.§import package extends§.y += this.§5214239624239637123423632234§.height;
         this.§extends function throw§ = new §521423123992312412123423632234§();
         addChild(this.§extends function throw§);
         this.§extends function throw§.label = §521423164582316471123423632234§.§521423157602315773123423632234§("FREE_BONUSES_WINDOW_BUTTON_CLOSE_TEXT");
         this.§extends function throw§.y = this.§import package extends§.y - 9 - this.§5214231973231986123423632234§.y - 2;
         this.§include catch function§();
         addChild(_loc6_);
         this.§5214233106233119123423632234§.height = this.§import package extends§.y;
         this.§5214233106233119123423632234§.width = this.§import package extends§.x;
      }
      
      public function get §default const return§() : Bitmap
      {
         return this.§import while default§;
      }
      
      public function set §for set finally§(param1:BitmapData) : void
      {
         this.§import while default§.bitmapData = param1;
         this.§import package extends§.y = this.§import package extends§.y + this.§import while default§.height + 9 - 1;
         this.§extends catch if§ = this.§import package extends§.x = Math.max(this.§import package extends§.x,this.§import while default§.width + 12 * 2 + 9 * 2);
         this.§5214233106233119123423632234§.height = this.§import package extends§.y;
         this.§5214233106233119123423632234§.width = this.§import package extends§.x;
         this.§include catch function§();
         this.§import while default§.x = this.§extends catch if§ - this.§import while default§.width >> 1;
         this.§import while default§.y = this.§5214231867231880123423632234§.y + this.§5214231867231880123423632234§.height - 9 - this.§import while default§.height - 1;
         this.§extends function throw§.y = this.§import package extends§.y - 9 - this.§5214231973231986123423632234§.y - 2;
      }
      
      private function §include catch function§() : void
      {
         this.§521423169472316960123423632234§.width = this.§extends catch if§ - 12 * 4;
         this.§5214239624239637123423632234§.y = this.§521423169472316960123423632234§.y + this.§521423169472316960123423632234§.height + 12;
         this.§5214239624239637123423632234§.x = this.§import package extends§.x - this.§5214239624239637123423632234§.width >> 1;
         this.§5214231867231880123423632234§.width = this.§import package extends§.x - 12 * 2;
         this.§5214231867231880123423632234§.height = this.§import package extends§.y - 12 - 9 * 2 - this.§5214231973231986123423632234§.y + 2;
         this.§extends function throw§.x = this.§import package extends§.x - this.§5214231973231986123423632234§.x >> 1;
      }
   }
}

