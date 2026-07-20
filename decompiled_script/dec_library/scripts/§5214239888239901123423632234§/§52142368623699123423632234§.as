package §5214239888239901123423632234§
{
   import §521423124962312509123423632234§.§521423112892311302123423632234§;
   import §521423134212313434123423632234§.§5214235404235417123423632234§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §52142368623699123423632234§ extends §const catch var§
   {
      
      private static const §5214235405235418123423632234§:int = 25;
      
      private static const §class function class§:int = 5;
      
      public static const §5214235354235367123423632234§:int = 3;
      
      private static const §use override§:int = 10;
      
      private static const §switch catch false§:int = 5;
      
      private static const §5214233147233160123423632234§:int = 2;
      
      protected var §return package switch§:§5214235404235417123423632234§;
      
      private var §521423124482312461123423632234§:Sprite;
      
      private var §finally else§:Sprite;
      
      private var §for var native§:int;
      
      private var §52142344323456123423632234§:int;
      
      private var §5214231649231662123423632234§:Vector.<DisplayObject> = new Vector.<DisplayObject>();
      
      public function §52142368623699123423632234§()
      {
         super();
         this.§521423124482312461123423632234§ = new Sprite();
         this.§finally else§ = new Sprite();
         this.§521423124482312461123423632234§.addChild(this.§finally else§);
         this.§return package switch§ = new §5214235404235417123423632234§();
         §521423112892311302123423632234§.§5214235873235886123423632234§(this.§return package switch§);
         this.§return package switch§.§for super super§ = 0;
         this.§return package switch§.§class use§ = 2;
         this.§return package switch§.source = this.§521423124482312461123423632234§;
         this.§return package switch§.§function const package§();
         this.§return package switch§.addEventListener("mouseWheel",§import catch dynamic§,true);
         addChild(this.§return package switch§);
      }
      
      private static function §import catch dynamic§(param1:MouseEvent) : void
      {
         param1.delta *= 2;
      }
      
      override public function get height() : Number
      {
         return this.§52142344323456123423632234§;
      }
      
      override public function get width() : Number
      {
         return this.§for var native§;
      }
      
      override public function §false use var§() : void
      {
         this.§return package switch§.removeEventListener("mouseWheel",§import catch dynamic§,true);
         this.§return package switch§ = null;
         super.§false use var§();
      }
      
      protected function §52142341723430123423632234§(param1:DisplayObject) : void
      {
         this.§5214231649231662123423632234§[§5214231649231662123423632234§.length] = param1;
         this.§521423124482312461123423632234§.addChild(param1);
      }
      
      private function §5214236156236169123423632234§(param1:int) : void
      {
         this.§finally else§.graphics.lineStyle(1,16777215,0);
         this.§finally else§.graphics.beginFill(16777215,0);
         this.§finally else§.graphics.drawRect(0,0,1,10);
         this.§finally else§.graphics.endFill();
         this.§finally else§.x = 25;
         this.§finally else§.y = param1;
      }
      
      override public function §return catch dynamic§() : void
      {
         this.render(751,456);
      }
      
      public function render(param1:int, param2:int) : void
      {
         this.§for var native§ = param1;
         this.§52142344323456123423632234§ = param2;
         this.§return package switch§.y = 5;
         this.§return package switch§.setSize(param1 + 5,param2 - 5 * 2);
         var _loc4_:int = 0;
         for each(var _loc3_ in this.§5214231649231662123423632234§)
         {
            _loc4_ += _loc3_.height;
         }
         this.§5214236156236169123423632234§(_loc4_);
         this.§return package switch§.§function const package§();
      }
   }
}

