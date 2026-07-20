package §5214231529231542123423632234§
{
   import §521423150222315035123423632234§.§include use override§;
   import §5214238675238688123423632234§.§finally set package§;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import §implements package with§.§521423158182315831123423632234§;
   import §static catch do§.§static set in§;
   
   public class §each while throw§ extends §include use override§
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      private static var §5214235666235679123423632234§:Vector.<§5214239806239819123423632234§>;
      
      public static var §final switch§:§each while throw§;
      
      private static const §5214233587233600123423632234§:Number = 2;
      
      private static var §5214238032238045123423632234§:Vector.<Number> = new <Number>[0.16,0.13,0.08,0.08,0.07,0.04,0.09,0.11,0.08,0.08];
      
      private var §5214232270232283123423632234§:Vector.<Number>;
      
      private var §while function import§:Vector.<Number>;
      
      protected var §for var native§:Number = 840;
      
      private var §final use switch§:int = 1;
      
      private var §super finally function§:Boolean = true;
      
      public function §each while throw§()
      {
         var _loc2_:int = 0;
         var _loc3_:§521423158182315831123423632234§ = null;
         §5214232270232283123423632234§ = new Vector.<Number>();
         §while function import§ = new <Number>[5,4,3,2,6,8,1];
         super();
         §final switch§ = this;
         §5214235666235679123423632234§ = new <§5214239806239819123423632234§>[new §5214239806239819123423632234§(§521423164582316471123423632234§.§521423157602315773123423632234§("CLAN_MEMBER_NAME"),"left",2,170),new §5214239806239819123423632234§(§521423164582316471123423632234§.§521423157602315773123423632234§("CLAN_MEMBER_POSITION"),"left",2,100),new §5214239806239819123423632234§(§521423164582316471123423632234§.§521423157602315773123423632234§("CLAN_MEMBER_COLUMN_EXPERIENCE"),"left",2,67),new §5214239806239819123423632234§(§521423164582316471123423632234§.§521423157602315773123423632234§("CLAN_MEMBER_COLUMN_DESTROYED"),"left",2,82),new §5214239806239819123423632234§(§521423164582316471123423632234§.§521423157602315773123423632234§("CLAN_MEMBER_COLUMN_LOST"),"left",2,67),new §5214239806239819123423632234§(§521423164582316471123423632234§.§521423157602315773123423632234§("CLAN_MEMBER_COLUMN_KILL_DEATH_RATIO"),"left",2,20),new §5214239806239819123423632234§(§521423164582316471123423632234§.§521423157602315773123423632234§("CLAN_MEMBER_DAYS")
         ,"left",2,93),new §5214239806239819123423632234§(§521423164582316471123423632234§.§521423157602315773123423632234§("CLAN_MEMBER_LAST_VISIT"),"left",2,113),new §5214239806239819123423632234§(§521423164582316471123423632234§.§521423157602315773123423632234§("CLAN_SCORE_MEMBER"),"left",2,70),new §5214239806239819123423632234§(§521423164582316471123423632234§.§521423157602315773123423632234§("CLAN_WEEKLY_SCORE_MEMBER"),"left",2,75)];
         var _loc1_:int = int(§5214235666235679123423632234§.length);
         _loc2_ = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = new §521423158182315831123423632234§(§5214235666235679123423632234§[_loc2_].align);
            _loc3_.label = §5214235666235679123423632234§[_loc2_].text;
            _loc3_.§521423141032314116123423632234§(§5214235666235679123423632234§[_loc2_].§use package case§);
            _loc3_.height = 18;
            _loc3_.buttonMode = true;
            _loc3_.addEventListener("click",§if set break§);
            addChild(_loc3_);
            _loc2_++;
         }
         this.§finally set function§();
      }
      
      public static function §dynamic var§() : Number
      {
         return §native switch const§(1);
      }
      
      public static function §native switch const§(param1:int) : Number
      {
         if(§final switch§.getChildAt(param1).visible)
         {
            return Math.max(§final switch§.getChildAt(param1).width,§5214235666235679123423632234§[param1].§521423114062311419123423632234§);
         }
         return 0;
      }
      
      public static function §521423995231008123423632234§(param1:int) : Number
      {
         var _loc2_:DisplayObject = §final switch§.getChildAt(param1);
         return _loc2_.x;
      }
      
      private function §finally set function§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:§521423158182315831123423632234§ = null;
         var _loc1_:int = int(§5214235666235679123423632234§.length);
         _loc2_ = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = getChildAt(_loc2_) as §521423158182315831123423632234§;
            if(_loc2_ == §final use switch§)
            {
               _loc3_.label = §5214235666235679123423632234§[_loc2_].text + (§super finally function§ ? " ↓" : " ↑");
            }
            else
            {
               _loc3_.label = §5214235666235679123423632234§[_loc2_].text;
            }
            _loc2_++;
         }
      }
      
      private function §if set break§(param1:MouseEvent) : void
      {
         var _loc2_:int = getChildIndex(param1.currentTarget as DisplayObject);
         if(§final use switch§ == _loc2_)
         {
            §super finally function§ = !§super finally function§;
         }
         else
         {
            §super finally function§ = true;
         }
         §final use switch§ = _loc2_;
         §finally set function§();
         dispatchEvent(new §finally set package§("StatListUpdateSort",_loc2_,§super finally function§));
      }
      
      override public function set width(param1:Number) : void
      {
         §for var native§ = param1;
         this.resize();
      }
      
      protected function resize() : void
      {
         var _loc6_:int = 0;
         var _loc8_:§521423158182315831123423632234§ = null;
         var _loc3_:Number = NaN;
         §5214232270232283123423632234§ = new Vector.<Number>();
         var _loc4_:int = 0;
         if(§for var native§ <= 985)
         {
            _loc4_ = 5 - (§for var native§ - 585) / 80;
         }
         §5214232270232283123423632234§ = §while function import§.slice(0,_loc4_);
         var _loc1_:Number = 0;
         _loc6_ = 0;
         while(_loc6_ < §5214235666235679123423632234§.length)
         {
            if(§5214232270232283123423632234§.indexOf(_loc6_) < 0)
            {
               _loc1_ += §5214238032238045123423632234§[_loc6_];
            }
            _loc6_++;
         }
         var _loc5_:Number = 0;
         var _loc7_:Vector.<Number> = new Vector.<Number>();
         _loc6_ = 0;
         while(_loc6_ < §5214235666235679123423632234§.length)
         {
            _loc7_[_loc6_] = §5214238032238045123423632234§[_loc6_] / _loc1_;
            _loc5_ += _loc7_[_loc6_];
            _loc6_++;
         }
         var _loc2_:int = 1;
         _loc6_ = 0;
         while(_loc6_ < §5214235666235679123423632234§.length)
         {
            _loc8_ = getChildAt(_loc6_) as §521423158182315831123423632234§;
            if(§5214232270232283123423632234§.indexOf(_loc6_) < 0)
            {
               _loc8_.y = 1;
               _loc8_.x = _loc2_;
               _loc3_ = _loc7_[_loc6_] / _loc5_ * (§for var native§ + 2 - 2 * (§5214238032238045123423632234§.length - §5214232270232283123423632234§.length + 1));
               _loc8_.width = Math.max(_loc3_,§5214235666235679123423632234§[_loc6_].§521423114062311419123423632234§);
               if(_loc6_ < §5214235666235679123423632234§.length - 1)
               {
                  _loc2_ += _loc8_.width + 2;
               }
               _loc8_.visible = true;
            }
            else
            {
               _loc8_.visible = false;
            }
            _loc6_++;
         }
         getChildAt(numChildren - 1).width = §for var native§ + 3 - _loc2_ - 2 * 2;
      }
   }
}

