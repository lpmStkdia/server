package §521423188072318820123423632234§
{
   import §5214238675238688123423632234§.§finally set package§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.setTimeout;
   import §static catch do§.§static set in§;
   
   public class §5214237914237927123423632234§ extends Sprite
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      protected var §use use set§:Vector.<int>;
      
      protected var §case switch default§:Vector.<String>;
      
      protected var §521423138722313885123423632234§:int = 1;
      
      protected var §native finally true§:int = 1;
      
      protected var §for var native§:int = 800;
      
      public function §5214237914237927123423632234§()
      {
         var _loc2_:§5214239013239026123423632234§ = null;
         §use use set§ = new Vector.<int>(0);
         super();
         this.§case switch default§ = new <String>[§521423164582316471123423632234§.§521423157602315773123423632234§("REFERAL_STATISTICS_HEADER_CALLSIGN"),§521423164582316471123423632234§.§521423157602315773123423632234§("REFERAL_STATISTICS_HEADER_INCOME")];
         var _loc1_:int = 0;
         while(_loc1_ < 2)
         {
            _loc2_ = new §5214239013239026123423632234§(_loc1_ == 1);
            _loc2_.label = this.§case switch default§[_loc1_];
            _loc2_.height = 18;
            _loc2_.§521423160242316037123423632234§ = _loc1_;
            addChild(_loc2_);
            _loc2_.addEventListener("click",this.§use function const§);
            _loc1_++;
         }
         this.§continue use const§();
         setTimeout(dispatchEvent,0,new §finally set package§("StatListUpdateSort",this.§521423138722313885123423632234§));
      }
      
      override public function set width(param1:Number) : void
      {
         this.§for var native§ = param1;
         this.§continue use const§();
      }
      
      protected function §use function const§(param1:MouseEvent) : void
      {
         var _loc2_:§5214239013239026123423632234§ = param1.currentTarget as §5214239013239026123423632234§;
         this.§521423138722313885123423632234§ = _loc2_.§521423160242316037123423632234§;
         if(this.§521423138722313885123423632234§ != this.§native finally true§)
         {
            this.§continue use const§();
            dispatchEvent(new §finally set package§("StatListUpdateSort",this.§521423138722313885123423632234§));
            this.§native finally true§ = this.§521423138722313885123423632234§;
         }
      }
      
      protected function §continue use const§() : void
      {
         var _loc1_:§5214239013239026123423632234§ = null;
         var _loc2_:int = this.§for var native§ - 345;
         this.§use use set§ = new <int>[0,this.§for var native§ - 120,this.§for var native§ - 1];
         var _loc3_:int = 0;
         while(_loc3_ < 2)
         {
            _loc1_ = getChildAt(_loc3_) as §5214239013239026123423632234§;
            _loc1_.width = this.§use use set§[_loc3_ + 1] - this.§use use set§[_loc3_] - 2;
            _loc1_.x = this.§use use set§[_loc3_];
            _loc1_.selected = _loc3_ == this.§521423138722313885123423632234§;
            _loc3_++;
         }
      }
   }
}

