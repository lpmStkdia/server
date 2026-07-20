package §5214237710237723123423632234§
{
   import §5214234310234323123423632234§.§break while override§;
   import flash.display.Sprite;
   import §static catch do§.§static set in§;
   
   public class §521423194222319435123423632234§ extends Sprite
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      public static var §5214235666235679123423632234§:Vector.<§5214239806239819123423632234§>;
      
      protected var §use use set§:Vector.<Number>;
      
      protected var §for var native§:int = 800;
      
      private var §521423109342310947123423632234§:§break while override§;
      
      public function §521423194222319435123423632234§()
      {
         var _loc1_:§else switch case§ = null;
         §use use set§ = new Vector.<Number>();
         super();
         §5214235666235679123423632234§ = Vector.<§5214239806239819123423632234§>([new §5214239806239819123423632234§(§521423164582316471123423632234§.§521423157602315773123423632234§("FRIENDS_NAME"),"left",2),new §5214239806239819123423632234§(§521423164582316471123423632234§.§521423157602315773123423632234§("FRIENDS_BATTLE"),"left",2)]);
         var _loc2_:int = int(§5214235666235679123423632234§.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = new §else switch case§(§5214235666235679123423632234§[_loc3_].align);
            _loc1_.label = §5214235666235679123423632234§[_loc3_].text;
            _loc1_.§521423141032314116123423632234§(§5214235666235679123423632234§[_loc3_].§use package case§);
            _loc1_.height = 18;
            addChild(_loc1_);
            _loc3_++;
         }
         this.§521423109342310947123423632234§ = new §break while override§();
         this.§521423109342310947123423632234§.color = 860685;
         this.§521423109342310947123423632234§.mouseEnabled = false;
         this.§521423109342310947123423632234§.text = §521423164582316471123423632234§.§521423157602315773123423632234§("SERVER_LABEL_UPPERCASE");
         this.§521423109342310947123423632234§.autoSize = "none";
         this.§521423109342310947123423632234§.align = "right";
         this.§521423109342310947123423632234§.width = 100;
         addChild(this.§521423109342310947123423632234§);
         this.§continue use const§();
      }
      
      protected function §continue use const§() : void
      {
         var _loc1_:§else switch case§ = null;
         this.§use use set§ = new <Number>[0,this.§for var native§ / 2,this.§for var native§ - 1];
         var _loc2_:int = int(§5214235666235679123423632234§.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = getChildAt(_loc3_) as §else switch case§;
            _loc1_.width = this.§use use set§[_loc3_ + 1] - this.§use use set§[_loc3_] - 2;
            _loc1_.x = this.§use use set§[_loc3_];
            _loc3_++;
         }
         if(this.§521423109342310947123423632234§ != null)
         {
            this.§521423109342310947123423632234§.x = this.§for var native§ - this.§521423109342310947123423632234§.width - 6;
         }
      }
      
      override public function set width(param1:Number) : void
      {
         this.§for var native§ = param1;
         this.§continue use const§();
      }
   }
}

