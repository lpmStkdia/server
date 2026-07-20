package §5214234814234827123423632234§
{
   import §521423138512313864123423632234§.§5214233024233037123423632234§;
   import §521423138512313864123423632234§.§if with§;
   import §521423138512313864123423632234§.§switch while do§;
   import §5214234310234323123423632234§.§521423123992312412123423632234§;
   import §5214234310234323123423632234§.§break while override§;
   import §5214236035236048123423632234§.§521423169262316939123423632234§;
   import §52142376123774123423632234§.§5214232508232521123423632234§;
   import §52142376123774123423632234§.§const package null§;
   import §52142376123774123423632234§.§import var set§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.utils.getTimer;
   import §get package null§.§try use break§;
   import §null const else§.§521423177422317755123423632234§;
   import §static catch do§.§static set in§;
   
   public class §for catch static§ extends §521423177422317755123423632234§ implements §5214232508232521123423632234§, §const package null§
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      private var §5214233106233119123423632234§:§switch while do§;
      
      private var §get use dynamic§:§521423169262316939123423632234§;
      
      private var preview:Bitmap;
      
      private var §try function implements§:§if with§;
      
      private var §dynamic for super§:§break while override§;
      
      private var §521423146862314699123423632234§:§break while override§;
      
      private var §521423121842312197123423632234§:§break while override§;
      
      private var §catch continue§:Bitmap;
      
      public var §catch set for§:§521423123992312412123423632234§;
      
      public var §package package const§:§521423123992312412123423632234§;
      
      private var §extends catch if§:int;
      
      private var §521423183712318384123423632234§:int;
      
      private const §continue switch each§:int = 11;
      
      private const §5214236815236828123423632234§:int = 7;
      
      private const §break catch package§:Point = new Point(164,106);
      
      private const §5214231973231986123423632234§:Point = new Point(104,33);
      
      private var §throw static§:§import var set§;
      
      public function §for catch static§(param1:String, param2:int, param3:BitmapData, param4:int, param5:String, param6:int = -1, param7:Boolean = false)
      {
         super();
         if(param3.width > 200)
         {
            this.§break catch package§.x = param3.width;
            this.§break catch package§.y = param3.height;
         }
         this.§extends catch if§ = Math.max(this.§5214231973231986123423632234§.x * 2 + 11 * 2 + 7,this.§break catch package§.x + 11 * 4);
         this.§5214233106233119123423632234§ = new §switch while do§(this.§extends catch if§,0);
         addChild(this.§5214233106233119123423632234§);
         this.§try function implements§ = new §if with§(0,0,795149);
         this.§try function implements§.x = 11;
         this.§try function implements§.y = 11;
         this.§try function implements§.width = this.§extends catch if§ - 11 * 2;
         this.§try function implements§.height = this.§break catch package§.y + 11 * 2;
         addChild(this.§try function implements§);
         this.preview = new Bitmap(param3);
         addChild(this.preview);
         this.preview.x = this.§try function implements§.x + int((this.§extends catch if§ - 11 * 2 - this.§break catch package§.x) * 0.5);
         this.preview.y = 11 * 2;
         if(param4 != -1)
         {
            this.§get use dynamic§ = new §521423169262316939123423632234§(param4);
            addChild(this.§get use dynamic§);
            this.§get use dynamic§.x = this.§extends catch if§ - 11 - 7 - this.§get use dynamic§.width + 2;
            this.§get use dynamic§.y = 11 + 7 - 1;
         }
         this.§dynamic for super§ = new §break while override§();
         addChild(this.§dynamic for super§);
         this.§dynamic for super§.align = "center";
         this.§dynamic for super§.htmlText = param5;
         this.§dynamic for super§.x = this.§extends catch if§ - this.§dynamic for super§.width >> 1;
         this.§dynamic for super§.width = this.§extends catch if§ - 11 * 2;
         this.§dynamic for super§.y = this.§try function implements§.y + this.§break catch package§.y + 11 * 2 + 7;
         this.§521423121842312197123423632234§ = new §break while override§();
         addChild(this.§521423121842312197123423632234§);
         if(param4 > 0)
         {
            this.§521423121842312197123423632234§.text = "\"" + param1 + "\" " + §521423164582316471123423632234§.§521423157602315773123423632234§("GARAGE_CONFIRM_ALERT_COST_PREFIX");
         }
         else if(param3.width > 200)
         {
            this.§521423121842312197123423632234§.htmlText = param1 + " " + §521423164582316471123423632234§.§521423157602315773123423632234§("GARAGE_CONFIRM_ALERT_COST_PREFIX");
         }
         else
         {
            this.§521423121842312197123423632234§.text = "\"" + param1 + "\" " + (param6 > 1 ? "(" + param6 + ") " : "") + §521423164582316471123423632234§.§521423157602315773123423632234§("GARAGE_CONFIRM_ALERT_COST_PREFIX");
         }
         this.§catch continue§ = §try use break§.§5214235189235202123423632234§();
         addChild(this.§catch continue§);
         this.§521423146862314699123423632234§ = new §break while override§();
         addChild(this.§521423146862314699123423632234§);
         this.§521423146862314699123423632234§.text = §5214233024233037123423632234§.§521423169102316923123423632234§(param2,false);
         var _loc8_:int = this.§521423121842312197123423632234§.width + this.§521423146862314699123423632234§.width + this.§catch continue§.width + 2;
         this.§521423121842312197123423632234§.x = this.§extends catch if§ - _loc8_ >> 1;
         this.§521423121842312197123423632234§.y = this.§dynamic for super§.y + this.§dynamic for super§.height + 11;
         this.§catch continue§.x = this.§521423121842312197123423632234§.x + this.§521423121842312197123423632234§.width + 2;
         this.§catch continue§.y = this.§521423121842312197123423632234§.y + 5;
         this.§521423146862314699123423632234§.x = this.§catch continue§.x + this.§catch continue§.width;
         this.§521423146862314699123423632234§.y = this.§521423121842312197123423632234§.y;
         this.§521423183712318384123423632234§ = this.§521423121842312197123423632234§.y + this.§521423121842312197123423632234§.height + 11 * 2 + this.§5214231973231986123423632234§.y;
         this.§package package const§ = new §521423123992312412123423632234§();
         addChild(this.§package package const§);
         this.§package package const§.label = §521423164582316471123423632234§.§521423157602315773123423632234§("GARAGE_CONFIRM_ALERT_CANCEL_BUTTON_TEXT");
         this.§package package const§.x = this.§extends catch if§ - this.§5214231973231986123423632234§.x - 3;
         this.§package package const§.y = this.§521423183712318384123423632234§ - 11 - this.§5214231973231986123423632234§.y + 2;
         this.§catch set for§ = new §521423123992312412123423632234§();
         addChild(this.§catch set for§);
         if(param7)
         {
            this.§catch set for§.enable = false;
            this.§throw static§ = new §import var set§();
            this.§throw static§.§package set default§(§5214232508232521123423632234§,this);
            this.§throw static§.§package set default§(§const package null§,this);
            this.§catch set for§.label = §521423164582316471123423632234§.§521423157602315773123423632234§("GARAGE_CONFIRM_ALERT_CONFIRM_BUTTON_TEXT") + " (3)";
            this.§throw static§.§else finally continue§(3000 + getTimer());
         }
         else
         {
            this.§catch set for§.label = §521423164582316471123423632234§.§521423157602315773123423632234§("GARAGE_CONFIRM_ALERT_CONFIRM_BUTTON_TEXT");
         }
         this.§catch set for§.x = 11;
         this.§catch set for§.y = this.§521423183712318384123423632234§ - 11 - this.§5214231973231986123423632234§.y + 2;
         this.§5214233106233119123423632234§.height = this.§521423183712318384123423632234§;
      }
      
      public function §5214238089238102123423632234§(param1:§import var set§) : void
      {
         this.§catch set for§.label = §521423164582316471123423632234§.§521423157602315773123423632234§("GARAGE_CONFIRM_ALERT_CONFIRM_BUTTON_TEXT") + " (" + param1.§try var super§() + ")";
      }
      
      public function §5214231604231617123423632234§(param1:§import var set§, param2:Boolean) : void
      {
         this.§catch set for§.enable = true;
         this.§catch set for§.label = §521423164582316471123423632234§.§521423157602315773123423632234§("GARAGE_CONFIRM_ALERT_CONFIRM_BUTTON_TEXT");
      }
   }
}

