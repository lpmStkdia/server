package §5214234814234827123423632234§
{
   import §521423100722310085123423632234§.§get set get§;
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
   
   public class §implements super package§ extends §521423177422317755123423632234§
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      private var §5214233106233119123423632234§:§get set get§;
      
      private var §5214231867231880123423632234§:§if with§;
      
      public var §extends function throw§:§521423123992312412123423632234§;
      
      private var §521423169472316960123423632234§:§break while override§;
      
      private var §import package extends§:Point;
      
      private var §extends catch if§:int = 450;
      
      private const §continue switch each§:int = 12;
      
      private const §while var with§:int = 9;
      
      private const §5214231973231986123423632234§:Point = new Point(104,33);
      
      private const §import finally include§:int = 8;
      
      private var §5214239624239637123423632234§:Sprite;
      
      public function §implements super package§(param1:BitmapData, param2:String, param3:Vector.<§521423120222312035123423632234§>)
      {
         var _loc12_:int = 0;
         var _loc10_:§521423148292314842123423632234§ = null;
         var _loc11_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§break while override§ = null;
         super();
         var _loc7_:§null use throw§ = new §null use throw§(11);
         if(param3.length == 1)
         {
            _loc12_ = 1;
         }
         else if(param3.length <= 4)
         {
            _loc12_ = 2;
         }
         else if(param3.length <= 6)
         {
            _loc12_ = 3;
         }
         else
         {
            _loc12_ = 4;
         }
         this.§5214239624239637123423632234§ = new Sprite();
         this.§extends catch if§ = _loc7_.width + 12 * 2 + 9 * 2 + (_loc7_.width + 8) * (_loc12_ - 1);
         this.§521423169472316960123423632234§ = new §break while override§();
         this.§521423169472316960123423632234§.wordWrap = true;
         this.§521423169472316960123423632234§.multiline = true;
         this.§521423169472316960123423632234§.text = param2;
         this.§521423169472316960123423632234§.§5214239166239179123423632234§ = 12;
         this.§521423169472316960123423632234§.color = 5898034;
         this.§521423169472316960123423632234§.x = 12 * 2;
         this.§521423169472316960123423632234§.y = 134;
         this.§521423169472316960123423632234§.width = this.§extends catch if§ - 12 * 4;
         this.§import package extends§ = new Point(this.§extends catch if§,110 + this.§521423169472316960123423632234§.height + this.§5214231973231986123423632234§.y + 12 * 3 + 9 * 3);
         this.§5214233106233119123423632234§ = new §get set get§();
         this.§5214233106233119123423632234§.width = this.§import package extends§.x;
         this.§5214233106233119123423632234§.height = this.§import package extends§.y;
         addChild(this.§5214233106233119123423632234§);
         this.§5214233106233119123423632234§.§continue switch class§ = §521423164582316471123423632234§.§521423157602315773123423632234§("GUI_LANG");
         this.§5214233106233119123423632234§.§5214238313238326123423632234§ = "WELCOME_BACK_HEADER";
         this.§5214231867231880123423632234§ = new §if with§(0,0,795149);
         addChild(this.§5214231867231880123423632234§);
         this.§5214231867231880123423632234§.x = 12;
         this.§5214231867231880123423632234§.y = 12;
         this.§5214231867231880123423632234§.width = this.§import package extends§.x - 12 * 2;
         this.§5214231867231880123423632234§.height = this.§import package extends§.y - 12 - 9 * 2 - this.§5214231973231986123423632234§.y + 2;
         var _loc5_:Bitmap = new Bitmap(param1);
         addChild(_loc5_);
         _loc5_.y = 30;
         _loc5_.x = (this.§5214231867231880123423632234§.width - _loc5_.width) / 2;
         addChild(this.§521423169472316960123423632234§);
         addChild(this.§5214239624239637123423632234§);
         var _loc4_:int = int(param3.length / _loc12_) + 1;
         var _loc6_:int = 0;
         while(_loc6_ < param3.length)
         {
            _loc7_ = new §null use throw§(11);
            this.§5214239624239637123423632234§.addChild(_loc7_);
            _loc10_ = new §521423148292314842123423632234§(param3[_loc6_].§5214239396239409123423632234§,_loc7_.width,_loc7_.height);
            this.§5214239624239637123423632234§.addChild(_loc10_);
            if(int(_loc6_ / _loc12_) + 1 == _loc4_)
            {
               _loc11_ = param3.length - (_loc4_ - 1) * _loc12_;
               _loc8_ = (_loc12_ - _loc11_) * (_loc7_.width + 8 >> 1);
               _loc7_.x = int(_loc6_ % _loc12_) * (_loc7_.width + 8) + _loc8_;
            }
            else
            {
               _loc7_.x = int(_loc6_ % _loc12_) * (_loc7_.width + 8);
            }
            _loc7_.y = (_loc7_.height + 8) * (int(_loc6_ / _loc12_));
            _loc10_.x = _loc7_.x;
            _loc10_.y = _loc7_.y;
            if(param3[_loc6_].count > 0)
            {
               _loc9_ = new §break while override§();
               this.§5214239624239637123423632234§.addChild(_loc9_);
               _loc9_.§5214239166239179123423632234§ = 16;
               _loc9_.color = 5898034;
               _loc9_.text = "×" + param3[_loc6_].count.toString();
               _loc9_.x = _loc7_.x + _loc7_.width - _loc9_.width - 15;
               _loc9_.y = _loc7_.y + _loc7_.height - _loc9_.height - 10;
            }
            _loc6_++;
         }
         this.§import package extends§.y += this.§5214239624239637123423632234§.height;
         this.§extends function throw§ = new §521423123992312412123423632234§();
         addChild(this.§extends function throw§);
         this.§extends function throw§.label = §521423164582316471123423632234§.§521423157602315773123423632234§("FREE_BONUSES_WINDOW_BUTTON_CLOSE_TEXT");
         this.§extends function throw§.y = this.§import package extends§.y - 9 - this.§5214231973231986123423632234§.y - 2;
         this.§include catch function§();
         this.§5214233106233119123423632234§.height = this.§import package extends§.y;
         this.§5214233106233119123423632234§.width = this.§import package extends§.x;
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

