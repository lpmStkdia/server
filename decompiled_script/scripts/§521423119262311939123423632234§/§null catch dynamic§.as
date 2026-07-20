package §521423119262311939123423632234§
{
   import §521423123502312363123423632234§.§5214233061233074123423632234§;
   import §5214234445234458123423632234§.§521423122492312262123423632234§;
   import §5214234814234827123423632234§.§521423160462316059123423632234§;
   import §5214234814234827123423632234§.§with switch implements§;
   import §5214237746237759123423632234§.§case switch else§;
   import §5214238675238688123423632234§.§const var implements§;
   import §catch set implements§.§implements extends§;
   import §continue switch case§.§each var else§;
   import §extends set else§.§521423133642313377123423632234§;
   import §extends set else§.§super var implements§;
   import §extends set else§.§use while each§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.LocationChangeEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.media.StageWebView;
   import platform.client.fp10.core.model.impl.Model;
   import §static catch do§.§static set in§;
   import §super package break§.§while while const§;
   import §switch set extends§.§521423139142313927123423632234§;
   import §try super catch§.§521423165502316563123423632234§;
   
   public class §null catch dynamic§ extends §super var implements§ implements §521423133642313377123423632234§, §implements extends§
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      public static var §include package finally§:§while while const§;
      
      public static var §5214236170236183123423632234§:§521423139142313927123423632234§;
      
      public static var §class function package§:§each var else§;
      
      public static var §with const for§:§521423122492312262123423632234§;
      
      public static var §521423181972318210123423632234§:§case switch else§;
      
      private var §521423185212318534123423632234§:§with switch implements§;
      
      private var webpanelWV:StageWebView;
      
      private var webpanelX:Number;
      
      private var webpanelY:Number;
      
      private var webpanelW:Number;
      
      private var webpanelH:Number;
      
      private var webpanelPct:Boolean;
      
      public function §null catch dynamic§()
      {
         super();
      }
      
      private static function §override while set§(param1:Vector.<String>) : Vector.<String>
      {
         var _loc2_:Object = null;
         var _loc4_:RegExp = /(\w|[_.\-])+@((\w|-)+\.)+\w{2,4}+/;
         var _loc5_:Vector.<String> = new Vector.<String>();
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ = _loc4_.exec(param1[_loc3_]);
            if(_loc2_ == null)
            {
               _loc5_.push(param1[_loc3_]);
            }
            _loc3_++;
         }
         return _loc5_;
      }
      
      public function §finally package break§() : void
      {
      }
      
      private function §5214231579231592123423632234§(param1:MouseEvent = null) : void
      {
         this.§521423185212318534123423632234§.removeEventListener("ReferalWindowEventSendMail",this.§5214234169234182123423632234§);
         this.§521423185212318534123423632234§.§extends function throw§.removeEventListener("click",this.§5214231579231592123423632234§);
         §include package finally§.§var const else§(this.§521423185212318534123423632234§);
         §with const for§.§override catch get§();
         this.§521423185212318534123423632234§ = null;
      }
      
      public function §with var for§(param1:Vector.<String>, param2:String) : void
      {
         §finally set implements§.§native use with§(param1,param2);
      }
      
      public function §5214231664231677123423632234§() : void
      {
         var _loc1_:§5214233061233074123423632234§ = §5214236170236183123423632234§.§521423150302315043123423632234§();
         _loc1_.§521423124802312493123423632234§.addEventListener("Close",this.§5214239117239130123423632234§);
      }
      
      public function §default set static§() : void
      {
      }
      
      private function §5214234169234182123423632234§(param1:§521423160462316059123423632234§) : void
      {
         var _loc2_:Vector.<String> = Vector.<String>(param1.§while finally override§.split(","));
         var _loc3_:Vector.<String> = §override while set§(_loc2_);
         if(_loc3_.length > 0)
         {
            if(_loc3_.length == 1)
            {
               §5214236170236183123423632234§.§in use function§(§521423164582316471123423632234§.§521423157602315773123423632234§("REFERAL_WINDOW_ADDRESS_NOT_VALID_ALERT_TEXT").replace("%1",_loc3_[0]));
            }
            else
            {
               §5214236170236183123423632234§.§in use function§(§521423164582316471123423632234§.§521423157602315773123423632234§("REFERAL_WINDOW_ADDRESSES_NOT_VALID_ALERT_TEXT").replace("%1",_loc3_.join(", ")));
            }
         }
         else
         {
            this.§with var for§(_loc2_,this.§521423185212318534123423632234§.§catch finally include§.§5214234618234631123423632234§.text.length ? this.§521423185212318534123423632234§.§catch finally include§.§5214234618234631123423632234§.text : §521423165502316563123423632234§(platform.client.fp10.core.model.impl.Model.§5214238154238167123423632234§.§521423185532318566123423632234§(§521423165502316563123423632234§)).getName());
         }
      }
      
      public function §5214237620237633123423632234§(param1:String) : void
      {
         §5214236170236183123423632234§.§in use function§(param1);
      }
      
      private function webpanelClose(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 27)
         {
            if(this.webpanelWV != null)
            {
               this.webpanelWV.stage = null;
               this.webpanelWV.dispose();
               this.webpanelWV = null;
            }
         }
      }
      
      private function webpanelResize(param1:Event) : void
      {
         if(this.webpanelWV == null)
         {
            return;
         }
         var _loc2_:int = §class function package§.stage.stageWidth;
         var _loc3_:int = §class function package§.stage.stageHeight;
         if(this.webpanelPct)
         {
            var _loc4_:* = _loc2_ * this.webpanelW / 100;
         }
         else
         {
            _loc4_ = this.webpanelW;
            if(_loc4_ <= 0)
            {
               _loc4_ = _loc2_;
            }
         }
         if(this.webpanelPct)
         {
            var _loc5_:* = _loc3_ * this.webpanelH / 100;
         }
         else
         {
            _loc5_ = this.webpanelH;
            if(_loc5_ <= 0)
            {
               _loc5_ = _loc3_;
            }
         }
         if(this.webpanelX >= 0)
         {
            if(this.webpanelPct)
            {
               var _loc6_:Number = _loc2_ * this.webpanelX / 100;
            }
            else
            {
               _loc6_ = this.webpanelX;
            }
         }
         else
         {
            _loc6_ = (_loc2_ - _loc4_) / 2;
         }
         if(this.webpanelY >= 0)
         {
            if(this.webpanelPct)
            {
               var _loc7_:Number = _loc3_ * this.webpanelY / 100;
            }
            else
            {
               _loc7_ = this.webpanelY;
            }
         }
         else
         {
            _loc7_ = (_loc3_ - _loc5_) / 2;
         }
         this.webpanelWV.viewPort = new Rectangle(_loc6_,_loc7_,_loc4_,_loc5_);
      }
      
      private function webpanelNav(param1:LocationChangeEvent) : void
      {
         if(param1.location.indexOf("wpclose") >= 0)
         {
            param1.preventDefault();
            if(this.webpanelWV != null)
            {
               this.webpanelWV.stage = null;
               this.webpanelWV.dispose();
               this.webpanelWV = null;
            }
         }
      }
      
      public function §5214231803231816123423632234§(param1:Vector.<§use while each§>, param2:String, param3:String, param4:String) : void
      {
         var _loc5_:Object = JSON.parse(param2);
         if(_loc5_.close)
         {
            if(this.webpanelWV != null)
            {
               this.webpanelWV.stage = null;
               this.webpanelWV.dispose();
               this.webpanelWV = null;
            }
            return;
         }
         this.webpanelX = int(_loc5_.x);
         this.webpanelY = int(_loc5_.y);
         this.webpanelW = int(_loc5_.w);
         this.webpanelH = int(_loc5_.h);
         this.webpanelPct = Boolean(_loc5_.pct);
         if(this.webpanelWV != null)
         {
            this.webpanelResize(null);
            return;
         }
         this.webpanelWV = new StageWebView();
         this.webpanelWV.stage = §class function package§.stage;
         this.webpanelWV.addEventListener("locationChanging",this.webpanelNav);
         §class function package§.stage.addEventListener("resize",this.webpanelResize);
         this.webpanelWV.loadURL(_loc5_.url);
         this.webpanelResize(null);
      }
      
      private function §5214239117239130123423632234§(param1:§const var implements§) : void
      {
         if(param1.§use const override§ == "Referal")
         {
            if(this.§521423185212318534123423632234§ == null)
            {
               §finally set implements§.§finally function throw§();
            }
            else
            {
               §5214236170236183123423632234§.§false finally with§();
            }
         }
      }
      
      public function §else for case§() : void
      {
      }
      
      public function §each switch in§() : void
      {
         §5214236170236183123423632234§.§in use function§(§521423164582316471123423632234§.§521423157602315773123423632234§("INVITATION_HAS_BEEN_SENT_ALERT_TEXT"));
         this.§521423185212318534123423632234§.§throw switch static§();
      }
   }
}

