package §5214236397236410123423632234§
{
   import §521423101572310170123423632234§.§true use get§;
   import §5214231107231120123423632234§.§521423192192319232123423632234§;
   import §5214231107231120123423632234§.§finally finally class§;
   import §5214231107231120123423632234§.§switch package var§;
   import §521423165552316568123423632234§.§default var function§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import §static catch do§.§static set in§;
   import §switch var else§.§dynamic finally package§;
   
   public class §5214233215233228123423632234§
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      private var §use super function§:§finally finally class§;
      
      private var §override finally throw§:§true use get§;
      
      private var §5214233422233435123423632234§:Function;
      
      public function §5214233215233228123423632234§()
      {
         super();
         §521423164582316471123423632234§ = §static set in§(§default var function§.§import use include§().§5214231532231545123423632234§(§static set in§));
      }
      
      private function §5214238542238555123423632234§() : void
      {
         var _loc1_:§switch package var§ = null;
         if(this.§use super function§.§521423109662310979123423632234§ != null)
         {
            for each(_loc1_ in this.§use super function§.§521423109662310979123423632234§)
            {
               §521423164582316471123423632234§.§include var override§(_loc1_.§static function catch§,_loc1_.value);
            }
         }
         if(this.§use super function§.§null set false§ != null && this.§use super function§.§null set false§.length > 0)
         {
            this.§521423156022315615123423632234§();
         }
         this.§5214233422233435123423632234§();
      }
      
      private function §521423120572312070123423632234§(param1:Event) : void
      {
         var _loc2_:Vector.<BitmapData> = this.§override finally throw§.§null set false§;
         this.§override finally throw§ = null;
         var _loc3_:Vector.<§521423192192319232123423632234§> = this.§use super function§.§null set false§;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            §521423164582316471123423632234§.§finally switch default§(_loc3_[_loc4_].§static function catch§,_loc2_[_loc4_]);
            _loc4_++;
         }
      }
      
      private function §521423156022315615123423632234§() : void
      {
         var _loc1_:Vector.<ByteArray> = new Vector.<ByteArray>();
         for each(var _loc2_ in this.§use super function§.§null set false§)
         {
            _loc1_[_loc1_.length] = _loc2_.value;
         }
         this.§override finally throw§ = new §true use get§();
         this.§override finally throw§.addEventListener("complete",this.§521423120572312070123423632234§);
         this.§override finally throw§.§extends var class§(_loc1_,5);
      }
      
      public function §521423121222312135123423632234§(param1:String, param2:Function) : void
      {
         this.§5214233422233435123423632234§ = param2;
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.dataFormat = "binary";
         _loc3_.addEventListener("complete",this.§5214234464234477123423632234§);
         _loc3_.load(new URLRequest(param1));
      }
      
      private function §5214234464234477123423632234§(param1:Event) : void
      {
         var _loc2_:§dynamic finally package§ = §dynamic finally package§(§default var function§.§import use include§().§5214231532231545123423632234§(§dynamic finally package§));
         var _loc3_:ByteArray = URLLoader(param1.target).data;
         _loc3_.uncompress();
         _loc3_.endian = "bigEndian";
         this.§use super function§ = §finally finally class§(_loc2_.§5214238550238563123423632234§("521423133282313341123423632234.52142314523158123423632234").§5214239183239196123423632234§(_loc3_));
         this.§5214238542238555123423632234§();
      }
   }
}

