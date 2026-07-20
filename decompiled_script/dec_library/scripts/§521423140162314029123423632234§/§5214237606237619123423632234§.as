package §521423140162314029123423632234§
{
   import §5214234310234323123423632234§.§break while override§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import §null var class§.§521423161802316193123423632234§;
   import §null var class§.§each switch final§;
   import §null var class§.§function for static§;
   import §null var class§.§with package case§;
   
   public class §5214237606237619123423632234§ extends Sprite
   {
      
      internal static const §521423162122316225123423632234§:BitmapData = new §function for static§(0,0);
      
      internal static const §finally finally use§:BitmapData = new §with package case§(0,0);
      
      internal static const §5214236640236653123423632234§:BitmapData = new §521423161802316193123423632234§(0,0);
      
      internal static const §super for native§:BitmapData = new §each switch final§(0,0);
      
      public var §5214238586238599123423632234§:Bitmap;
      
      private var §class package use§:Bitmap;
      
      private var §5214235314235327123423632234§:Bitmap;
      
      private var §5214234127234140123423632234§:Bitmap;
      
      private var §throw finally true§:Vector.<Bitmap>;
      
      private var §try while each§:Boolean;
      
      private var §52142368123694123423632234§:Boolean;
      
      private var §5214233090233103123423632234§:Boolean;
      
      public var §521423193992319412123423632234§:§break while override§;
      
      public function §5214237606237619123423632234§(param1:BitmapData = null)
      {
         super();
         this.§class package use§ = new Bitmap(§finally finally use§);
         addChild(this.§class package use§);
         this.§5214235314235327123423632234§ = new Bitmap(§5214236640236653123423632234§);
         addChild(this.§5214235314235327123423632234§);
         this.§5214234127234140123423632234§ = new Bitmap(§super for native§);
         addChild(this.§5214234127234140123423632234§);
         this.§5214238586238599123423632234§ = new Bitmap(param1 != null ? param1 : §521423162122316225123423632234§);
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
      
      private function §521423143192314332123423632234§(param1:Bitmap) : void
      {
         for each(var _loc2_ in this.§throw finally true§)
         {
            _loc2_.visible = false;
         }
         param1.visible = true;
      }
      
      override public function get height() : Number
      {
         return §class package use§.height;
      }
      
      private function §521423117602311773123423632234§() : void
      {
         removeEventListener("mouseOver",this.§521423151022315115123423632234§);
         removeEventListener("mouseOut",this.§521423151022315115123423632234§);
         removeEventListener("mouseDown",this.§521423151022315115123423632234§);
         removeEventListener("mouseUp",this.§521423151022315115123423632234§);
      }
      
      private function §521423138212313834123423632234§() : void
      {
         addEventListener("mouseOver",this.§521423151022315115123423632234§);
         addEventListener("mouseOut",this.§521423151022315115123423632234§);
         addEventListener("mouseDown",this.§521423151022315115123423632234§);
         addEventListener("mouseUp",this.§521423151022315115123423632234§);
      }
      
      private function §521423111142311127123423632234§() : void
      {
         this.§try while each§ = !this.§try while each§;
         this.§5214238586238599123423632234§.visible = this.§try while each§;
         dispatchEvent(new §for super final§("CheckBoxStateChangeEvent"));
      }
      
      public function get §case for class§() : Boolean
      {
         return this.§try while each§;
      }
      
      public function set label(param1:String) : void
      {
         this.§521423193992319412123423632234§.text = param1;
      }
      
      private function §521423151022315115123423632234§(param1:MouseEvent) : void
      {
         this.§5214238586238599123423632234§.y = 0;
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
               if(this.§try while each§)
               {
                  this.§5214238586238599123423632234§.y = 2;
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
               this.alpha = 0.5;
            }
         }
      }
      
      public function §final const each§(param1:Boolean) : void
      {
         if(this.§try while each§ != param1)
         {
            this.§try while each§ = param1;
            this.§5214238586238599123423632234§.visible = this.§try while each§;
         }
      }
      
      public function set §case for class§(param1:Boolean) : void
      {
         if(this.§try while each§ != param1)
         {
            this.§521423111142311127123423632234§();
         }
      }
   }
}

