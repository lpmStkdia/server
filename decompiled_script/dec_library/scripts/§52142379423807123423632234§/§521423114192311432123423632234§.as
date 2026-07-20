package §52142379423807123423632234§
{
   import §5214234310234323123423632234§.§521423123992312412123423632234§;
   import §5214234310234323123423632234§.§break while override§;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import flash.text.TextLineMetrics;
   import §get package null§.§try use break§;
   import §include var try§.§for while class§;
   import §static catch do§.§static set in§;
   
   public class §521423114192311432123423632234§ extends §for while class§
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      private static const §521423130602313073123423632234§:int = 96;
      
      private var §5214233017233030123423632234§:§break while override§;
      
      private var §521423186492318662123423632234§:§521423123992312412123423632234§;
      
      private var §5214236232236245123423632234§:Bitmap;
      
      public function §521423114192311432123423632234§()
      {
         super();
      }
      
      override protected function §override package continue§() : void
      {
         §var package class§();
      }
      
      override protected function §5214239350239363123423632234§() : void
      {
         super.§5214239350239363123423632234§();
         this.§5214233017233030123423632234§ = new §break while override§();
         this.§5214233017233030123423632234§.color = 5898034;
         this.§5214233017233030123423632234§.mouseEnabled = false;
         addChild(this.§5214233017233030123423632234§);
         this.§5214233017233030123423632234§.htmlText = §521423150652315078123423632234§;
         this.§5214236232236245123423632234§ = §try use break§.§5214235189235202123423632234§();
         addChild(this.§5214236232236245123423632234§);
         this.§521423186492318662123423632234§ = new §521423123992312412123423632234§();
         this.§521423186492318662123423632234§.width = 96;
         this.§521423186492318662123423632234§.label = §521423164582316471123423632234§.§521423157602315773123423632234§("CLOSE_LABEL");
         addChild(this.§521423186492318662123423632234§);
         §5214237419237432123423632234§ = false;
      }
      
      protected function §52142390323916123423632234§(param1:int, param2:int) : String
      {
         var _loc3_:String = String(param1);
         if(param2 > 0)
         {
            _loc3_ = "<font color=\"#f3c800\">" + (String(param1 + param2)) + "</font>";
         }
         return _loc3_;
      }
      
      override protected function §native const get§() : void
      {
         super.§native const get§();
         this.§521423186492318662123423632234§.addEventListener("click",this.§true set dynamic§);
      }
      
      private function §true set dynamic§(param1:MouseEvent) : void
      {
         this.§override package continue§();
      }
      
      override protected function resize() : void
      {
         this.§5214233017233030123423632234§.x = 11 + 9;
         this.§5214233017233030123423632234§.y = 11 + 7;
         var _loc1_:TextLineMetrics = this.§5214233017233030123423632234§.getLineMetrics(this.§5214233017233030123423632234§.numLines - 1);
         this.§5214236232236245123423632234§.x = int(this.§5214233017233030123423632234§.x + _loc1_.width + 5);
         this.§5214236232236245123423632234§.y = this.§5214233017233030123423632234§.y + this.§5214233017233030123423632234§.height - 14;
         §in while return§ = this.§5214233017233030123423632234§.y + this.§5214233017233030123423632234§.height - 3;
         var _loc2_:int = this.§5214233017233030123423632234§.x + this.§5214233017233030123423632234§.width + 11 * 2;
         if(_loc2_ > §for var native§)
         {
            §for var native§ = _loc2_;
         }
         this.§521423186492318662123423632234§.x = §for var native§ - this.§521423186492318662123423632234§.width - 11;
         this.§521423186492318662123423632234§.y = §in while return§ + 16;
         §52142344323456123423632234§ = this.§521423186492318662123423632234§.y + this.§521423186492318662123423632234§.height + 11 + 1;
         super.resize();
      }
      
      override protected function §5214235152235165123423632234§() : void
      {
         super.§5214235152235165123423632234§();
         this.§521423186492318662123423632234§.removeEventListener("click",this.§true set dynamic§);
      }
   }
}

