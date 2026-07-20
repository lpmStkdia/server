package §implements use var§
{
   import §521423101572310170123423632234§.§521423134722313485123423632234§;
   import §521423101572310170123423632234§.§5214237009237022123423632234§;
   import §521423101572310170123423632234§.§package switch get§;
   import §521423101572310170123423632234§.§true use get§;
   import §5214231107231120123423632234§.§521423192192319232123423632234§;
   import §5214231107231120123423632234§.§finally finally class§;
   import §5214231107231120123423632234§.§switch package var§;
   import §521423165552316568123423632234§.§default var function§;
   import §5214231835231848123423632234§.§521423156122315625123423632234§;
   import flash.display.BitmapData;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import §static catch do§.§static set in§;
   import §switch var else§.§dynamic finally package§;
   
   public class §dynamic catch for§ extends §5214237009237022123423632234§
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      private var §use super function§:§finally finally class§;
      
      private var §override finally throw§:§true use get§;
      
      public function §dynamic catch for§(param1:§package switch get§)
      {
         super(param1);
      }
      
      private function §function finally extends§(param1:Event) : void
      {
         §5214237869237882123423632234§.§null use else§(this);
      }
      
      protected function §for set try§(param1:ErrorEvent) : void
      {
         §5214237869237882123423632234§.§in finally return§(this,param1.toString());
      }
      
      private function §521423120572312070123423632234§(param1:Event) : void
      {
         var _loc4_:int = 0;
         var _loc2_:Vector.<BitmapData> = this.§override finally throw§.§null set false§;
         this.§override finally throw§ = null;
         var _loc5_:Vector.<§521423192192319232123423632234§> = this.§use super function§.§null set false§;
         var _loc3_:int = int(_loc2_.length);
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            §521423164582316471123423632234§.§finally switch default§(_loc5_[_loc4_].§static function catch§,_loc2_[_loc4_]);
            _loc4_++;
         }
         this.§521423108502310863123423632234§();
      }
      
      private function §521423156022315615123423632234§() : void
      {
         §include set while§ = "Building images";
         var _loc2_:Vector.<ByteArray> = new Vector.<ByteArray>();
         for each(var _loc1_ in this.§use super function§.§null set false§)
         {
            _loc2_[_loc2_.length] = _loc1_.value;
         }
         this.§override finally throw§ = new §true use get§();
         this.§override finally throw§.addEventListener("complete",this.§521423120572312070123423632234§);
         this.§override finally throw§.§extends var class§(_loc2_,5);
      }
      
      private function §521423178882317901123423632234§() : String
      {
         return "localized.data_" + §521423164582316471123423632234§.§5214235381235394123423632234§;
      }
      
      override public function §null use set§(param1:String, param2:§521423134722313485123423632234§) : void
      {
         this.§521423128472312860123423632234§ = param1;
         this.§5214237869237882123423632234§ = param2;
         var _loc3_:§521423156122315625123423632234§ = new §521423156122315625123423632234§();
         _loc3_.dataFormat = "binary";
         _loc3_.addEventListener("open",this.§function finally extends§);
         _loc3_.addEventListener("complete",this.§5214234464234477123423632234§);
         _loc3_.addEventListener("ioError",this.§for set try§);
         _loc3_.addEventListener("securityError",this.§for set try§);
         _loc3_.load(new URLRequest(param1 + this.§521423178882317901123423632234§()));
      }
      
      protected function §5214234464234477123423632234§(param1:Event) : void
      {
         var _loc2_:§dynamic finally package§ = §dynamic finally package§(§default var function§.§import use include§().§5214231532231545123423632234§(§dynamic finally package§));
         var _loc3_:ByteArray = URLLoader(param1.target).data;
         _loc3_.uncompress();
         _loc3_.endian = "bigEndian";
         this.§use super function§ = §finally finally class§(_loc2_.§5214238550238563123423632234§("521423133282313341123423632234.52142314523158123423632234").§5214239183239196123423632234§(_loc3_));
         this.§5214238542238555123423632234§();
      }
      
      private function §5214238542238555123423632234§() : void
      {
         if(this.§use super function§.§521423109662310979123423632234§ != null)
         {
            for each(var _loc1_ in this.§use super function§.§521423109662310979123423632234§)
            {
               §521423164582316471123423632234§.§include var override§(_loc1_.§static function catch§,_loc1_.value);
            }
         }
         if(this.§use super function§.§null set false§ != null && this.§use super function§.§null set false§.length > 0)
         {
            this.§521423156022315615123423632234§();
         }
         else
         {
            this.§521423108502310863123423632234§();
         }
      }
   }
}

