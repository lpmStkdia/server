package §521423123502312363123423632234§
{
   import §521423150222315035123423632234§.§include use override§;
   import §5214234310234323123423632234§.§521423123992312412123423632234§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §switch set import§ extends §include use override§
   {
      
      private static const §521423119622311975123423632234§:int = 100;
      
      private static const §finally include§:int = 30;
      
      private static const §521423105252310538123423632234§:int = 11;
      
      public static const §5214231371231384123423632234§:String = "LEFT";
      
      public static const §continue var if§:String = "RIGHT";
      
      private var §const finally continue§:Dictionary = new Dictionary();
      
      private var selected:§521423123992312412123423632234§;
      
      private var §521423187932318806123423632234§:§include use override§ = new §include use override§();
      
      private var §5214237281237294123423632234§:§include use override§ = new §include use override§();
      
      private var §5214237886237899123423632234§:int;
      
      private var §for var native§:int;
      
      private var §52142344323456123423632234§:int;
      
      private var §throw use if§:String;
      
      public function §switch set import§(param1:String = "LEFT")
      {
         super();
         this.§throw use if§ = param1;
         addChild(this.§521423187932318806123423632234§);
         addChild(this.§5214237281237294123423632234§);
         addEventListener("addedToStage",this.§get var break§);
         addEventListener("removedFromStage",this.§try function false§);
      }
      
      override public function set height(param1:Number) : void
      {
         this.§52142344323456123423632234§ = param1;
         this.§use use static§();
      }
      
      public function §false use var§() : void
      {
         var _loc1_:§include use override§ = this.§const finally continue§[this.selected];
         if(this.§5214237281237294123423632234§.contains(_loc1_))
         {
            this.§5214237281237294123423632234§.removeChild(_loc1_);
         }
         if(this.§5214237281237294123423632234§ != null && contains(this.§5214237281237294123423632234§))
         {
            removeChild(this.§5214237281237294123423632234§);
         }
         if(this.§521423187932318806123423632234§ != null && contains(this.§521423187932318806123423632234§))
         {
            removeChild(this.§521423187932318806123423632234§);
         }
         _loc1_ = null;
      }
      
      override public function set width(param1:Number) : void
      {
         this.§for var native§ = param1;
         this.§use use static§();
      }
      
      override public function get height() : Number
      {
         return this.§52142344323456123423632234§;
      }
      
      private function §521423155452315558123423632234§(param1:MouseEvent) : void
      {
         var _loc2_:§521423123992312412123423632234§ = §521423123992312412123423632234§(param1.currentTarget);
         this.§class var null§(_loc2_);
      }
      
      private function §get var break§(param1:Event) : void
      {
         stage.addEventListener("resize",this.§use use static§);
         this.§use use static§();
      }
      
      override public function get width() : Number
      {
         return this.§for var native§;
      }
      
      public function §get switch final§(param1:int) : void
      {
         this.§class var null§(§521423123992312412123423632234§(this.§521423187932318806123423632234§.getChildAt(param1)));
      }
      
      private function §try function false§(param1:Event) : void
      {
         stage.removeEventListener("resize",this.§use use static§);
      }
      
      public function §5214239203239216123423632234§(param1:String, param2:§include use override§, param3:Class) : Object
      {
         var _loc4_:§521423123992312412123423632234§ = new param3();
         _loc4_.label = param1;
         _loc4_.width = 100;
         _loc4_.addEventListener("click",this.§521423155452315558123423632234§);
         this.§521423187932318806123423632234§.addChild(_loc4_);
         this.§const finally continue§[_loc4_] = param2;
         this.§use use static§();
         return _loc4_;
      }
      
      private function §class var null§(param1:§521423123992312412123423632234§) : void
      {
         if(this.selected != null)
         {
            this.selected.enable = true;
            this.§5214237281237294123423632234§.removeChild(this.§const finally continue§[this.selected]);
         }
         param1.enable = false;
         var _loc2_:§include use override§ = this.§const finally continue§[param1];
         this.§5214237281237294123423632234§.addChild(_loc2_);
         this.selected = param1;
         this.§use use static§();
      }
      
      public function §use use static§(param1:Event = null) : void
      {
         var _loc4_:int = 0;
         var _loc2_:DisplayObject = null;
         var _loc3_:int = 0;
         var _loc5_:§include use override§ = null;
         this.§5214237886237899123423632234§ = this.width / (11 + 100);
         _loc4_ = 0;
         while(_loc4_ < this.§521423187932318806123423632234§.numChildren)
         {
            _loc2_ = this.§521423187932318806123423632234§.getChildAt(_loc4_);
            _loc2_.width = 100;
            _loc3_ = 11;
            if(_loc4_ + 1 > this.§5214237886237899123423632234§)
            {
               _loc3_ = 2 * 11 + _loc2_.height;
            }
            if(this.§throw use if§ == "LEFT")
            {
               _loc2_.x = 11 + _loc4_ % this.§5214237886237899123423632234§ * (_loc2_.width + 11);
            }
            else
            {
               _loc2_.x = this.width - _loc2_.width - 11 - _loc4_ % this.§5214237886237899123423632234§ * (_loc2_.width + 11);
            }
            _loc2_.y = _loc3_;
            _loc4_++;
         }
         this.§5214237281237294123423632234§.y = 30 + 2 * 11;
         if(this.selected != null)
         {
            _loc5_ = this.§const finally continue§[this.selected];
            _loc5_.width = this.width;
            _loc5_.height = this.height - (30 + 2 * 11);
         }
      }
   }
}

