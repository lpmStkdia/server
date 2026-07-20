package §override use package§
{
   import §521423104422310455123423632234§.§521423166812316694123423632234§;
   import §521423116102311623123423632234§.§5214233093233106123423632234§;
   import §521423138512313864123423632234§.§finally function return§;
   import §521423142552314268123423632234§.§521423129732312986123423632234§;
   import §521423142552314268123423632234§.§521423150202315033123423632234§;
   import §521423158132315826123423632234§.§5214236809236822123423632234§;
   import §else while static§.§const function try§;
   import §implements package get§.§5214231395231408123423632234§;
   
   public class §case var get§ extends §5214233093233106123423632234§
   {
      
      private static var §break switch function§:Vector.<§521423150202315033123423632234§> = new Vector.<§521423150202315033123423632234§>();
      
      private static var §521423124832312496123423632234§:Vector.<§finally function return§> = new Vector.<§finally function return§>();
      
      private var §each package throw§:§521423150202315033123423632234§;
      
      private var §5214233213233226123423632234§:§521423150202315033123423632234§;
      
      private var label:§finally function return§;
      
      public function §case var get§(param1:§5214236809236822123423632234§, param2:String, param3:§5214236809236822123423632234§ = null)
      {
         super();
         if(param1 != null)
         {
            this.§each package throw§ = §5214236211236224123423632234§(param1.§5214231844231857123423632234§);
            this.§each package throw§.addEventListener("ChatUpdateEvent.UPDATE",this.§5214235027235040123423632234§);
            this.§each package throw§.§default super finally§(§5214231395231408123423632234§.§521423149932315006123423632234§(param1.§do const finally§,false),true);
            this.§each package throw§.x = width + 4;
            addChild(this.§each package throw§);
         }
         this.§if set final§(param2);
         if(param3 != null)
         {
            this.§5214233213233226123423632234§ = §5214236211236224123423632234§(param3.§5214231844231857123423632234§);
            this.§5214233213233226123423632234§.addEventListener("ChatUpdateEvent.UPDATE",this.§5214235027235040123423632234§);
            this.§5214233213233226123423632234§.§default super finally§(§5214231395231408123423632234§.§521423149932315006123423632234§(param3.§do const finally§,false),true);
            this.§5214233213233226123423632234§.x = width + 4;
            addChild(this.§5214233213233226123423632234§);
         }
      }
      
      private static function §5214236211236224123423632234§(param1:String) : §521423150202315033123423632234§
      {
         var _loc2_:§521423150202315033123423632234§ = §break switch function§.length > 0 ? §break switch function§.pop() : null;
         if(_loc2_ != null)
         {
            _loc2_.§521423167782316791123423632234§(param1);
         }
         else
         {
            _loc2_ = new §521423129732312986123423632234§(param1);
         }
         return _loc2_;
      }
      
      private static function §import for for§(param1:String) : §finally function return§
      {
         var _loc2_:§finally function return§ = §521423124832312496123423632234§.length > 0 ? §521423124832312496123423632234§.pop() : new §finally function return§();
         _loc2_.text = param1;
         return _loc2_;
      }
      
      private function §5214235027235040123423632234§(param1:§const function try§) : void
      {
         this.§each package throw§.x = 4;
         this.label.x = this.§each package throw§.width + 4;
         if(this.§5214233213233226123423632234§ != null)
         {
            this.§5214233213233226123423632234§.x = this.label.x + this.label.width + 4;
         }
         dispatchEvent(new §521423166812316694123423632234§("updateUid",this));
      }
      
      public function §521423129592312972123423632234§() : void
      {
         var _loc1_:int = int(§break switch function§.length);
         if(this.§each package throw§ != null)
         {
            this.§each package throw§.removeEventListener("ChatUpdateEvent.UPDATE",this.§5214235027235040123423632234§);
            removeChild(this.§each package throw§);
            §break switch function§[_loc1_] = this.§each package throw§;
            _loc1_++;
         }
         if(this.§5214233213233226123423632234§ != null)
         {
            this.§5214233213233226123423632234§.removeEventListener("ChatUpdateEvent.UPDATE",this.§5214235027235040123423632234§);
            removeChild(this.§5214233213233226123423632234§);
            §break switch function§[_loc1_] = this.§5214233213233226123423632234§;
         }
         §5214231231231244123423632234§.removeChild(this.label);
         §521423124832312496123423632234§[§521423124832312496123423632234§.length] = this.label;
      }
      
      private function §if set final§(param1:String) : void
      {
         this.label = §import for for§(param1);
         this.label.x = width + 4;
         §5214231231231244123423632234§.addChild(this.label);
      }
   }
}

