package §521423136342313647123423632234§
{
   import §521423138512313864123423632234§.§if with§;
   import §521423138512313864123423632234§.§switch while do§;
   import §5214231835231848123423632234§.§default var do§;
   import §5214234310234323123423632234§.§521423123992312412123423632234§;
   import §5214234310234323123423632234§.§break while override§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §if while catch§.§break var set§;
   import §null const else§.§521423177422317755123423632234§;
   import §static catch do§.§static set in§;
   
   public class §override for import§ extends §521423177422317755123423632234§
   {
      
      private static const §521423179082317921123423632234§:BitmapData = new §break var set§(0,0);
      
      private var §521423164582316471123423632234§:§static set in§;
      
      private var §override switch with§:§521423123992312412123423632234§;
      
      private var §521423102232310236123423632234§:§break while override§;
      
      private var §5214233106233119123423632234§:§switch while do§;
      
      private var §in super get§:§break while override§;
      
      private var §5214236925236938123423632234§:§if with§;
      
      private var icon:Bitmap;
      
      private var §521423184392318452123423632234§:String;
      
      public function §override for import§(param1:§static set in§)
      {
         var _loc2_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         _loc2_ = NaN;
         super();
         this.§521423164582316471123423632234§ = param1;
         var _loc7_:Number = 300;
         var _loc8_:Number = 12;
         _loc5_ = 10;
         _loc2_ = -2;
         var _loc6_:Number = 47;
         _loc3_ = 33;
         _loc4_ = 100;
         this.icon = new Bitmap(§521423179082317921123423632234§);
         this.icon.x = 23;
         this.icon.y = 23;
         this.§in super get§ = new §break while override§();
         this.§in super get§.color = 5898035;
         this.§in super get§.multiline = true;
         this.§in super get§.autoSize = "left";
         this.§in super get§.x = this.icon.x + this.icon.width + _loc8_ - 4;
         this.§in super get§.y = _loc8_ + _loc8_ - 3;
         this.§in super get§.text = "Unknown";
         this.§in super get§.selectable = true;
         if(this.§in super get§.y + this.§in super get§.height > this.icon.y + this.icon.height)
         {
            _loc6_ += this.§in super get§.y + this.§in super get§.height - this.icon.y - this.icon.height;
         }
         this.§5214233106233119123423632234§ = new §switch while do§(_loc7_,_loc8_ + _loc6_ + _loc5_ + _loc3_ + _loc5_ + _loc2_ + _loc3_ + _loc8_);
         this.§5214236925236938123423632234§ = new §if with§(_loc7_ - _loc8_ * 2,_loc6_,795149);
         this.§5214236925236938123423632234§.x = _loc8_;
         this.§5214236925236938123423632234§.y = _loc8_;
         addChild(this.§5214233106233119123423632234§);
         this.§5214233106233119123423632234§.addChild(this.§5214236925236938123423632234§);
         this.§5214233106233119123423632234§.addChild(this.icon);
         this.§5214233106233119123423632234§.addChild(this.§in super get§);
         this.§override switch with§ = new §521423123992312412123423632234§();
         this.§override switch with§.label = param1.§521423157602315773123423632234§("REENTER_TO_GAME");
         this.§override switch with§.x = _loc8_ + 1;
         this.§override switch with§.y = _loc8_ + _loc6_ + _loc5_;
         this.§override switch with§.width += 48;
         this.§override switch with§.addEventListener("click",this.§5214239157239170123423632234§);
         this.§5214233106233119123423632234§.addChild(this.§override switch with§);
         this.§521423102232310236123423632234§ = new §break while override§();
         this.§521423102232310236123423632234§.htmlText = "<a href=\'event:haveAcc\'><font color=\'#31FE01\'><u>" + param1.§521423157602315773123423632234§("CAUSES_AND_SOLUTIONS") + "</u></font></a>";
         this.§521423102232310236123423632234§.x = _loc7_ - _loc8_ - _loc4_ - 1;
         this.§521423102232310236123423632234§.y = _loc8_ + _loc6_ + _loc5_ + _loc3_ + _loc5_ + _loc2_;
         this.§521423102232310236123423632234§.addEventListener("link",this.§const package switch§);
         this.§5214233106233119123423632234§.addChild(this.§521423102232310236123423632234§);
         this.§5214232720232733123423632234§();
      }
      
      public function §5214236898236911123423632234§(param1:String) : void
      {
         this.§521423184392318452123423632234§ = param1;
      }
      
      private function §5214232720232733123423632234§() : void
      {
         this.§5214233106233119123423632234§.x = §class function package§.stage.width - this.§5214233106233119123423632234§.width >> 1;
         this.§5214233106233119123423632234§.y = §class function package§.stage.height - this.§5214233106233119123423632234§.height >> 1;
      }
      
      private function §521423156982315711123423632234§() : void
      {
         this.§5214236925236938123423632234§.width = 12 + this.icon.width + 8 + this.§in super get§.width + 20;
         this.§5214236925236938123423632234§.height = Math.max(this.icon.height,this.§in super get§.height) + 20;
         this.§5214233106233119123423632234§.width = this.§5214236925236938123423632234§.width + 24;
         this.§5214233106233119123423632234§.height = 12 + this.§5214236925236938123423632234§.height + 12 + this.§override switch with§.height + 12 + this.§521423102232310236123423632234§.height + 14 - 10;
         if(this.§in super get§.height < this.icon.height)
         {
            this.§in super get§.y = this.icon.y + (this.icon.height - this.§in super get§.textHeight >> 1) - 3;
         }
         this.§override switch with§.x = this.§5214233106233119123423632234§.width - this.§override switch with§.width >> 1;
         this.§override switch with§.y = this.§5214236925236938123423632234§.y + this.§5214236925236938123423632234§.height + 12 - 4;
         this.§521423102232310236123423632234§.x = this.§5214233106233119123423632234§.width - this.§521423102232310236123423632234§.width >> 1;
         this.§521423102232310236123423632234§.y = this.§override switch with§.y + this.§override switch with§.height + 12 - 7;
         this.§5214232720232733123423632234§();
      }
      
      private function §5214239157239170123423632234§(param1:MouseEvent = null) : void
      {
         §default var do§.§5214234454234467123423632234§();
      }
      
      private function §const package switch§(param1:TextEvent) : void
      {
         navigateToURL(new URLRequest(this.§521423184392318452123423632234§),"_blank");
      }
      
      public function §521423110392311052123423632234§(param1:String) : void
      {
         this.§in super get§.text = param1;
         this.§521423156982315711123423632234§();
      }
   }
}

