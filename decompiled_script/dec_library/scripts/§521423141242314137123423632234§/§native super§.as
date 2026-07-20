package §521423141242314137123423632234§
{
   import §521423150222315035123423632234§.§include use override§;
   import §5214237710237723123423632234§.§5214239806239819123423632234§;
   import §implements package with§.§521423158182315831123423632234§;
   import §static catch do§.§static set in§;
   
   public class §native super§ extends §include use override§
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      public static var §5214235666235679123423632234§:Vector.<§5214239806239819123423632234§>;
      
      private static const §if function null§:int = 2;
      
      public static var §use use set§:Vector.<Number> = new <Number>[1];
      
      protected var §for var native§:int = 800;
      
      private var §final package if§:Vector.<§521423158182315831123423632234§>;
      
      public function §native super§()
      {
         var _loc2_:int = 0;
         var _loc3_:§521423158182315831123423632234§ = null;
         §final package if§ = new Vector.<§521423158182315831123423632234§>();
         super();
         §5214235666235679123423632234§ = Vector.<§5214239806239819123423632234§>([new §5214239806239819123423632234§(§521423164582316471123423632234§.§521423157602315773123423632234§("CLAN_MEMBER_NAME"),"left",2)]);
         var _loc1_:int = int(§5214235666235679123423632234§.length);
         _loc2_ = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = new §521423158182315831123423632234§(§5214235666235679123423632234§[_loc2_].align);
            _loc3_.label = §5214235666235679123423632234§[_loc2_].text;
            _loc3_.§521423141032314116123423632234§(§5214235666235679123423632234§[_loc2_].§use package case§);
            _loc3_.height = 18;
            addChild(_loc3_);
            this.§final package if§.push(_loc3_);
            _loc2_++;
         }
         this.align();
      }
      
      protected function align() : void
      {
         var _loc3_:int = 0;
         var _loc4_:§521423158182315831123423632234§ = null;
         var _loc2_:int = int(§5214235666235679123423632234§.length);
         var _loc1_:Number = 1;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.§final package if§[_loc3_];
            _loc4_.width = §use use set§[_loc3_] * (this.§for var native§ + 2 - 2 * (§use use set§.length + 1));
            _loc4_.x = _loc1_;
            _loc4_.y = 1;
            if(_loc3_ != _loc2_ - 1)
            {
               _loc1_ += _loc4_.width + 2;
            }
            _loc3_++;
         }
         this.§final package if§[this.§final package if§.length - 1].width = this.§for var native§ + 3 - _loc1_ - 2 * 2;
      }
      
      override public function set width(param1:Number) : void
      {
         this.§for var native§ = Math.floor(param1);
         this.align();
      }
   }
}

