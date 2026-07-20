package §use const if§
{
   import §521423150222315035123423632234§.§include use override§;
   import §implements package with§.§521423158182315831123423632234§;
   import §static catch do§.§static set in§;
   
   public class §52142330423317123423632234§ extends §include use override§
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      private static var §5214235666235679123423632234§:Vector.<String>;
      
      private static var §5214233587233600123423632234§:Number = 2;
      
      public static var §use use set§:Vector.<Number> = new <Number>[0.25,0.1,0.25,0.18,0.22];
      
      public function §52142330423317123423632234§()
      {
         var _loc2_:int = 0;
         var _loc3_:§521423158182315831123423632234§ = null;
         super();
         §5214235666235679123423632234§ = new <String>[§521423164582316471123423632234§.§521423157602315773123423632234§("CLAN_USER_CLAN_NAME"),§521423164582316471123423632234§.§521423157602315773123423632234§("CLAN_USER_CLAN_TAG"),§521423164582316471123423632234§.§521423157602315773123423632234§("CLAN_FOUNDER"),§521423164582316471123423632234§.§521423157602315773123423632234§("CLAN_USER_CLAN_NUMBER_MEMBERS"),§521423164582316471123423632234§.§521423157602315773123423632234§("CLAN_USER_CREATION_DATE")];
         var _loc1_:int = int(§5214235666235679123423632234§.length);
         _loc2_ = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = new §521423158182315831123423632234§("left");
            _loc3_.label = §5214235666235679123423632234§[_loc2_];
            _loc3_.height = 18;
            _loc3_.y = 1;
            addChild(_loc3_);
            _loc2_++;
         }
         this.resize(900 - 2 * 11);
      }
      
      override public function set width(param1:Number) : void
      {
         this.resize(param1);
      }
      
      protected function resize(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:§521423158182315831123423632234§ = null;
         var _loc3_:int = int(§5214235666235679123423632234§.length);
         var _loc2_:Number = §5214233587233600123423632234§ - 1;
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = getChildAt(_loc4_) as §521423158182315831123423632234§;
            _loc5_.width = §use use set§[_loc4_] * (param1 + 2 - §5214233587233600123423632234§ * (§use use set§.length + 1));
            _loc5_.x = _loc2_;
            _loc5_.y = 1;
            if(_loc4_ != _loc3_ - 1)
            {
               _loc2_ += _loc5_.width + §5214233587233600123423632234§;
            }
            _loc4_++;
         }
         getChildAt(numChildren - 1).width = param1 + 3 - _loc2_ - 2 * §5214233587233600123423632234§;
      }
   }
}

