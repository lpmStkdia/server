package §521423191972319210123423632234§
{
   import §521423188072318820123423632234§.§5214239013239026123423632234§;
   import flash.display.Sprite;
   import §static catch do§.§static set in§;
   
   public class §521423178872317900123423632234§ extends Sprite
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      public static var §use use set§:Vector.<Number> = new Vector.<Number>();
      
      protected var §case switch default§:Vector.<String>;
      
      protected var §521423138722313885123423632234§:int = 8;
      
      protected var §native finally true§:int = 8;
      
      protected var §for var native§:int = 800;
      
      public function §521423178872317900123423632234§()
      {
         var _loc1_:int = 0;
         var _loc2_:§5214239013239026123423632234§ = null;
         super();
         this.§case switch default§ = new <String>[§521423164582316471123423632234§.§521423157602315773123423632234§("STATISTICS_HEADER_NUMBER"),§521423164582316471123423632234§.§521423157602315773123423632234§("CLAN_USER_CLAN_NAME"),§521423164582316471123423632234§.§521423157602315773123423632234§("CLAN_USER_CLAN_TAG"),§521423164582316471123423632234§.§521423157602315773123423632234§("CLAN_FOUNDER"),§521423164582316471123423632234§.§521423157602315773123423632234§("CLAN_USER_CLAN_NUMBER_MEMBERS"),§521423164582316471123423632234§.§521423157602315773123423632234§("STATISTICS_HEADER_SCORE"),§521423164582316471123423632234§.§521423157602315773123423632234§("CLAN_USER_CREATION_DATE")];
         _loc1_ = 0;
         while(_loc1_ < this.§case switch default§.length)
         {
            _loc2_ = new §5214239013239026123423632234§(false);
            _loc2_.label = this.§case switch default§[_loc1_];
            _loc2_.height = 18;
            _loc2_.§521423160242316037123423632234§ = _loc1_;
            addChild(_loc2_);
            _loc1_++;
         }
         this.§continue use const§();
      }
      
      override public function set width(param1:Number) : void
      {
         this.§for var native§ = param1;
         this.§continue use const§();
      }
      
      protected function §continue use const§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         var _loc3_:§5214239013239026123423632234§ = null;
         §use use set§ = new <Number>[0,10,90,120,190,230,270,315];
         var _loc4_:Number = §use use set§[§use use set§.length - 1];
         _loc2_ = 0;
         while(_loc2_ < §use use set§.length)
         {
            §use use set§[_loc2_] = §use use set§[_loc2_] / _loc4_ * §for var native§;
            _loc2_++;
         }
         _loc1_ = 0;
         while(_loc1_ < this.§case switch default§.length)
         {
            _loc3_ = getChildAt(_loc1_) as §5214239013239026123423632234§;
            _loc3_.width = §use use set§[_loc1_ + 1] - §use use set§[_loc1_] - 1.5;
            _loc3_.x = §use use set§[_loc1_];
            _loc3_.selected = _loc1_ == this.§521423138722313885123423632234§;
            _loc1_++;
         }
      }
   }
}

