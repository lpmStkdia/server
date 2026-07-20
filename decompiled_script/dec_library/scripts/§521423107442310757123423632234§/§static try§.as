package §521423107442310757123423632234§
{
   import §521423165552316568123423632234§.§default var function§;
   import §5214234310234323123423632234§.§break while override§;
   import §5214234310234323123423632234§.§finally switch get§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.filters.BlurFilter;
   import flash.filters.DropShadowFilter;
   import §for in§.§521423117672311780123423632234§;
   import §static catch do§.§static set in§;
   
   public class §static try§ extends Sprite
   {
      
      private var label:§break while override§;
      
      private var §5214235247235260123423632234§:Bitmap;
      
      public var §521423104352310448123423632234§:§finally switch get§;
      
      public var §do super§:§521423117672311780123423632234§;
      
      private var §super super for§:Bitmap;
      
      private const §native use switch§:int = 10;
      
      private const §5214236598236611123423632234§:int = 21;
      
      public function §static try§()
      {
         if(!_loc1_)
         {
            label = new §break while override§();
            if(!_loc1_)
            {
               super();
            }
         }
      }
      
      override public function get height() : Number
      {
         return this.§521423104352310448123423632234§.y + this.§521423104352310448123423632234§.height;
      }
      
      public function set §return const catch§(param1:Bitmap) : void
      {
         this.§super super for§ = param1;
         this.§5214235247235260123423632234§.bitmapData = this.§super super for§.bitmapData;
         this.§521423104352310448123423632234§.value = "";
      }
      
      override public function set width(param1:Number) : void
      {
         this.label.width = param1 - this.label.x;
         this.§5214235247235260123423632234§.width = param1;
         this.§521423104352310448123423632234§.width = param1;
         this.§do super§.x = this.§5214235247235260123423632234§.x + this.§5214235247235260123423632234§.width - this.§do super§.width - 10;
         this.§5214235247235260123423632234§.y = this.label.y + this.label.height + 10;
         this.§521423104352310448123423632234§.y = this.§5214235247235260123423632234§.y + this.§5214235247235260123423632234§.height + 10;
         this.§do super§.y = this.§5214235247235260123423632234§.y + 10 + 3;
      }
      
      public function §catch for switch§() : void
      {
         if(!_loc1_)
         {
            this.§import function class§();
         }
      }
      
      public function §5214237740237753123423632234§(param1:Boolean) : void
      {
         while(true)
         {
            if(!_loc2_)
            {
               this.§521423104352310448123423632234§.enable = param1;
               if(_loc2_)
               {
                  break;
               }
            }
            this.§do super§.doubleClickEnabled = param1;
            if(!_loc3_)
            {
               break;
            }
            §§goto(addr0033);
         }
         this.§do super§.mouseEnabled = param1;
         addr0033:
      }
      
      public function §import function class§() : void
      {
         if(!_loc4_)
         {
            this.label = new §break while override§();
            if(!_loc3_)
            {
               this.label.multiline = true;
               if(!_loc3_)
               {
                  this.label.wordWrap = true;
               }
            }
         }
         var _loc1_:§static set in§ = §static set in§(§default var function§.§import use include§().§5214231532231545123423632234§(§static set in§));
         this.label.text = _loc1_.§521423157602315773123423632234§("STRING_CAPTCHA_FORM_TITLE");
         if(!_loc3_)
         {
            this.label.y = -8;
            addChild(this.label);
            this.§5214235247235260123423632234§ = new Bitmap(new BitmapData(285,50,true,0));
         }
         this.§5214235247235260123423632234§.filters = [new BlurFilter(2,2),new DropShadowFilter(0,45,0,1,4,4,2)];
         this.§5214235247235260123423632234§.x = 2;
         addChild(this.§5214235247235260123423632234§);
         this.§521423104352310448123423632234§ = new §finally switch get§();
         this.§521423104352310448123423632234§.tabIndex = 5;
         this.§521423104352310448123423632234§.§5214237954237967123423632234§ = ".0-9a-zA-z_\\-";
         addChild(this.§521423104352310448123423632234§);
         while(true)
         {
            if(stage != null)
            {
               stage.focus = this.§521423104352310448123423632234§.§5214234618234631123423632234§;
               if(_loc4_)
               {
                  break;
               }
            }
            this.§do super§ = new §521423117672311780123423632234§();
            break;
         }
         this.§do super§.buttonMode = this.§do super§.useHandCursor = true;
         if(!_loc4_)
         {
            addChild(this.§do super§);
            if(!_loc4_)
            {
               this.width = 275;
            }
         }
      }
   }
}

