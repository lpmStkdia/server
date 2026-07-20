package §521423140162314029123423632234§
{
   import §5214234310234323123423632234§.§break while override§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import §null var class§.§5214235166235179123423632234§;
   
   public class §set use var§ extends Sprite
   {
      
      public static const §throw switch with§:int = 0;
      
      public static const §const set§:int = 1;
      
      public static const §for catch false§:int = 2;
      
      private static const §if var case§:BitmapData = new §5214235166235179123423632234§(0,0);
      
      public var §5214238586238599123423632234§:Bitmap;
      
      private var §class package use§:Bitmap;
      
      private var §5214235314235327123423632234§:Bitmap;
      
      private var §5214234127234140123423632234§:Bitmap;
      
      private var §throw finally true§:Vector.<Bitmap>;
      
      private var §5214232759232772123423632234§:int = 0;
      
      private var §52142368123694123423632234§:Boolean;
      
      private var §5214233090233103123423632234§:Boolean;
      
      public var §521423193992319412123423632234§:§break while override§;
      
      public function §set use var§(param1:BitmapData = null)
      {
         super();
         this.§class package use§ = new Bitmap(§5214237606237619123423632234§.§finally finally use§);
         addChild(this.§class package use§);
         this.§5214235314235327123423632234§ = new Bitmap(§5214237606237619123423632234§.§5214236640236653123423632234§);
         addChild(this.§5214235314235327123423632234§);
         this.§5214234127234140123423632234§ = new Bitmap(§5214237606237619123423632234§.§super for native§);
         addChild(this.§5214234127234140123423632234§);
         this.§5214238586238599123423632234§ = new Bitmap(param1 != null ? param1 : §5214237606237619123423632234§.§521423162122316225123423632234§,"auto",true);
         addChild(this.§5214238586238599123423632234§);
         this.§5214238586238599123423632234§.visible = false;
         this.§throw finally true§ = new <Bitmap>[this.§class package use§,this.§5214235314235327123423632234§,this.§5214234127234140123423632234§];
         tabEnabled = false;
         this.§521423143192314332123423632234§(this.§class package use§);
         this.enabled = true;
         this.§521423193992319412123423632234§ = new §break while override§();
         this.§521423193992319412123423632234§.x = 29;
         this.§521423193992319412123423632234§.y = 7;
         addChild(this.§521423193992319412123423632234§);
      }
      
      public function set label(param1:String) : void
      {
         this.§521423193992319412123423632234§.text = param1;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(this.§5214233090233103123423632234§ != param1)
         {
            this.§5214233090233103123423632234§ = param1;
            if(this.§5214233090233103123423632234§)
            {
               buttonMode = true;
               mouseEnabled = true;
               this.§521423138212313834123423632234§();
               this.alpha = 1;
            }
            else
            {
               buttonMode = false;
               this.§521423117602311773123423632234§();
               this.alpha = 0.7;
            }
         }
      }
      
      private function §521423138212313834123423632234§() : void
      {
         addEventListener("mouseOver",this.§521423151022315115123423632234§);
         addEventListener("mouseOut",this.§521423151022315115123423632234§);
         addEventListener("mouseDown",this.§521423151022315115123423632234§);
         addEventListener("mouseUp",this.§521423151022315115123423632234§);
      }
      
      private function §521423143192314332123423632234§(param1:Bitmap) : void
      {
         for each(var _loc2_ in this.§throw finally true§)
         {
            _loc2_.visible = false;
         }
         param1.visible = true;
      }
      
      private function §521423117602311773123423632234§() : void
      {
         removeEventListener("mouseOver",this.§521423151022315115123423632234§);
         removeEventListener("mouseOut",this.§521423151022315115123423632234§);
         removeEventListener("mouseDown",this.§521423151022315115123423632234§);
         removeEventListener("mouseUp",this.§521423151022315115123423632234§);
      }
      
      protected function §521423111142311127123423632234§() : void
      {
         switch(this.§5214232759232772123423632234§)
         {
            case 0:
               this.§5214232759232772123423632234§ = 1;
               break;
            case 1:
               this.§5214232759232772123423632234§ = 2;
               break;
            case 2:
               this.§5214232759232772123423632234§ = 0;
         }
         this.§521423109002310913123423632234§();
         dispatchEvent(new §for super final§("CheckBoxStateChangeEvent"));
      }
      
      private function §521423109002310913123423632234§() : void
      {
         this.§5214238586238599123423632234§.visible = this.§5214232759232772123423632234§ == 2 || this.§5214232759232772123423632234§ == 1;
         this.§5214238586238599123423632234§.scaleX = this.§5214238586238599123423632234§.scaleY = 1;
         if(this.§implements package in§ == 1)
         {
            this.§5214238586238599123423632234§.bitmapData = §if var case§;
         }
         else
         {
            this.§5214238586238599123423632234§.bitmapData = §5214237606237619123423632234§.§521423162122316225123423632234§;
         }
      }
      
      override public function get height() : Number
      {
         return §class package use§.height;
      }
      
      private function §521423151022315115123423632234§(param1:MouseEvent) : void
      {
         this.§5214238586238599123423632234§.y = this.§5214238586238599123423632234§.x;
         switch(param1.type)
         {
            case "mouseOver":
               this.§521423143192314332123423632234§(this.§5214234127234140123423632234§);
               break;
            case "mouseOut":
               this.§52142368123694123423632234§ = false;
               this.§521423143192314332123423632234§(this.§class package use§);
               break;
            case "mouseDown":
               if(this.§5214232759232772123423632234§ != 0)
               {
                  this.§5214238586238599123423632234§.y += 2;
               }
               this.§52142368123694123423632234§ = true;
               this.§521423143192314332123423632234§(this.§5214235314235327123423632234§);
               break;
            case "mouseUp":
               this.§521423143192314332123423632234§(this.§5214234127234140123423632234§);
               if(this.§52142368123694123423632234§)
               {
                  this.§52142368123694123423632234§ = false;
                  this.§521423111142311127123423632234§();
               }
         }
      }
      
      public function get §implements package in§() : int
      {
         return this.§5214232759232772123423632234§;
      }
      
      public function set §implements package in§(param1:int) : void
      {
         if(this.§5214232759232772123423632234§ != param1)
         {
            this.§5214232759232772123423632234§ = param1;
            this.§521423109002310913123423632234§();
            dispatchEvent(new §for super final§("CheckBoxStateChangeEvent"));
         }
      }
   }
}

