package §521423138512313864123423632234§
{
   import §521423150222315035123423632234§.§include use override§;
   import §5214238675238688123423632234§.§package use break§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import §include super switch§.§521423187302318743123423632234§;
   import §include super switch§.§5214235191235204123423632234§;
   
   public class §5214235605235618123423632234§ extends §include use override§
   {
      
      protected var §521423180512318064123423632234§:§5214235191235204123423632234§ = new §5214235191235204123423632234§();
      
      protected var §if for include§:§521423187302318743123423632234§ = new §521423187302318743123423632234§();
      
      protected var §finally for if§:int = 30;
      
      protected var §include use const§:int;
      
      protected var §521423151872315200123423632234§:Sprite;
      
      public var §for var native§:int;
      
      protected var §5214238706238719123423632234§:Number = 0;
      
      protected var §521423109472310960123423632234§:Number = 100;
      
      protected var §in set each§:Number = 0;
      
      protected var §521423152852315298123423632234§:Number = 10;
      
      public function §5214235605235618123423632234§()
      {
         super();
         addChild(this.§521423180512318064123423632234§);
         addChild(this.§if for include§);
         this.§if for include§.width = this.§finally for if§;
         addEventListener("addedToStage",this.§521423138002313813123423632234§);
         addEventListener("removedFromStage",this.§52142328423297123423632234§);
      }
      
      override public function set width(param1:Number) : void
      {
         this.§for var native§ = param1;
         this.§521423180512318064123423632234§.width = this.§for var native§;
      }
      
      public function set §break function if§(param1:Number) : void
      {
         this.§5214238706238719123423632234§ = param1;
         this.§521423180512318064123423632234§.§break function if§ = this.§5214238706238719123423632234§;
      }
      
      protected function §false finally§(param1:MouseEvent) : void
      {
         if(param1 != null)
         {
            stage.removeEventListener("mouseMove",this.§set use switch§);
         }
         this.§521423151872315200123423632234§ = null;
      }
      
      public function set value(param1:Number) : void
      {
         this.§in set each§ = param1;
         this.§5214234906234919123423632234§();
      }
      
      public function set §521423104002310413123423632234§(param1:Number) : void
      {
         this.§521423152852315298123423632234§ = param1;
         this.§521423180512318064123423632234§.§521423104002310413123423632234§ = this.§521423152852315298123423632234§;
      }
      
      protected function §52142328423297123423632234§(param1:Event) : void
      {
         stage.removeEventListener("mouseUp",this.§false finally§);
         stage.removeEventListener("mouseMove",this.§set use switch§);
      }
      
      protected function §set use switch§(param1:MouseEvent) : void
      {
         this.§if for include§.x += this.§if for include§.mouseX - this.§include use const§;
         if(this.§if for include§.x < 0)
         {
            this.§if for include§.x = 0;
         }
         if(this.§if for include§.x > this.§for var native§ - this.§finally for if§)
         {
            this.§if for include§.x = this.§for var native§ - this.§finally for if§;
         }
         var _loc2_:Number = this.§5214238706238719123423632234§ + this.§if for include§.x * (this.§521423109472310960123423632234§ - this.§5214238706238719123423632234§) / (width - this.§finally for if§);
         this.§in set each§ = _loc2_;
         dispatchEvent(new §package use break§(_loc2_));
      }
      
      public function get §break function if§() : Number
      {
         return this.§5214238706238719123423632234§;
      }
      
      protected function §finally catch package§(param1:MouseEvent) : void
      {
         this.§521423151872315200123423632234§ = Sprite(param1.currentTarget);
         stage.addEventListener("mouseMove",this.§set use switch§);
         this.§include use const§ = this.§521423151872315200123423632234§.mouseX;
      }
      
      public function set §false catch default§(param1:Number) : void
      {
         this.§521423109472310960123423632234§ = param1;
         this.§521423180512318064123423632234§.§false catch default§ = this.§521423109472310960123423632234§;
      }
      
      protected function §521423138002313813123423632234§(param1:Event) : void
      {
         this.§if for include§.addEventListener("mouseDown",this.§finally catch package§);
         stage.addEventListener("mouseUp",this.§false finally§);
      }
      
      public function get §false catch default§() : Number
      {
         return this.§521423109472310960123423632234§;
      }
      
      protected function §5214234906234919123423632234§() : void
      {
         this.§if for include§.x = int((this.§in set each§ - this.§5214238706238719123423632234§) * (this.§for var native§ - this.§finally for if§) / (this.§521423109472310960123423632234§ - this.§5214238706238719123423632234§));
      }
      
      public function get value() : Number
      {
         return this.§in set each§;
      }
   }
}

