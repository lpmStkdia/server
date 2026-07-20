package §521423100722310085123423632234§
{
   import §521423138512313864123423632234§.§switch while do§;
   import §521423150222315035123423632234§.§include use override§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import §static catch do§.§static set in§;
   import §static false§.§include function if§;
   
   public class §null finally class§ extends §include use override§
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      private static const §5214233412233425123423632234§:int = 25;
      
      private static const §521423172330123423632234§:int = 22;
      
      private const §throw var return§:int = 11;
      
      private var §5214233106233119123423632234§:§switch while do§;
      
      private var §const for else§:Bitmap;
      
      private var §const finally default§:Bitmap;
      
      public function §null finally class§(param1:BitmapData = null, param2:String = null)
      {
         super();
         this.§5214233106233119123423632234§ = new §switch while do§();
         addChild(this.§5214233106233119123423632234§);
         if(param1 != null)
         {
            this.§5214234668234681123423632234§(param1);
         }
         else if(param2 != null)
         {
         }
      }
      
      public static function §5214234615234628123423632234§(param1:String, param2:int = -1, param3:int = -1) : §null finally class§
      {
         var _loc4_:§null finally class§ = new §null finally class§(§521423164582316471123423632234§.§function const finally§(param1),param1);
         _loc4_.width = param2;
         _loc4_.height = param3;
         return _loc4_;
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214233106233119123423632234§.width = param1;
         this.resize();
      }
      
      override public function get height() : Number
      {
         return this.§5214233106233119123423632234§.height;
      }
      
      override public function get width() : Number
      {
         return this.§5214233106233119123423632234§.width;
      }
      
      private function resize() : void
      {
         if(this.§const finally default§ != null)
         {
            if(this.§const for else§.width > this.§const for else§.height)
            {
               this.§const finally default§.x = this.§5214233106233119123423632234§.width - this.§const finally default§.width >> 1;
               this.§const finally default§.y = -25;
               this.§const for else§.x = this.§5214233106233119123423632234§.width - this.§const for else§.width >> 1;
               this.§const for else§.y = 5 - (22 + this.§const for else§.height >> 1);
            }
            else
            {
               this.§const finally default§.x = -25;
               this.§const finally default§.y = this.§5214233106233119123423632234§.height - this.§const finally default§.height >> 1;
               this.§const for else§.x = 5 - (22 + this.§const for else§.width >> 1);
               this.§const for else§.y = this.§5214233106233119123423632234§.height - this.§const for else§.height >> 1;
            }
         }
      }
      
      public function §override var if§(param1:String) : void
      {
         this.§5214234668234681123423632234§(§521423164582316471123423632234§.§function const finally§(param1));
      }
      
      override public function set height(param1:Number) : void
      {
         this.§5214233106233119123423632234§.height = param1;
         this.resize();
      }
      
      public function §5214234668234681123423632234§(param1:BitmapData) : void
      {
         this.§const for else§ = new Bitmap(param1);
         if(this.§const for else§.width + 11 * 1.5 < §include function if§.§521423159582315971123423632234§.width)
         {
            this.§const finally default§ = new Bitmap(§include function if§.§521423159582315971123423632234§);
         }
         else
         {
            this.§const finally default§ = new Bitmap(§include function if§.§521423124822312495123423632234§);
         }
         addChild(this.§const finally default§);
         addChild(this.§const for else§);
         this.resize();
      }
   }
}

