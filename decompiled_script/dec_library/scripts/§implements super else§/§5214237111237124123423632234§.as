package §implements super else§
{
   import §5214231305231318123423632234§.§521423172822317295123423632234§;
   import §5214237710237723123423632234§.§521423194222319435123423632234§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class §5214237111237124123423632234§ extends Sprite
   {
      
      protected var §use use set§:Vector.<Number>;
      
      protected var §for var native§:int = 100;
      
      public function §5214237111237124123423632234§(param1:Boolean, param2:Boolean = false)
      {
         var _loc4_:DisplayObject = null;
         this.§use use set§ = new Vector.<Number>();
         super();
         var _loc5_:int = int(§521423194222319435123423632234§.§5214235666235679123423632234§.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc5_)
         {
            if(param1)
            {
               if(param2)
               {
                  _loc4_ = new §in super extends§();
               }
               else
               {
                  _loc4_ = new §5214232245232258123423632234§();
               }
            }
            else if(param2)
            {
               _loc4_ = new §521423101292310142123423632234§();
            }
            else
            {
               _loc4_ = new §import for return§();
            }
            addChild(_loc4_);
            _loc3_++;
         }
         this.resize();
      }
      
      protected function resize() : void
      {
         var _loc1_:DisplayObject = null;
         if(§521423172822317295123423632234§.§521423162492316262123423632234§)
         {
            this.§use use set§ = Vector.<Number>([0,this.§for var native§ - 224,this.§for var native§ - 1]);
         }
         else
         {
            this.§use use set§ = Vector.<Number>([0,this.§for var native§ - 233,this.§for var native§ - 1]);
         }
         var _loc2_:int = int(§521423194222319435123423632234§.§5214235666235679123423632234§.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = getChildAt(_loc3_) as DisplayObject;
            _loc1_.width = this.§use use set§[_loc3_ + 1] - this.§use use set§[_loc3_] - 2;
            _loc1_.height = 18;
            _loc1_.x = this.§use use set§[_loc3_];
            _loc3_++;
         }
         graphics.clear();
         graphics.beginFill(16711680,0);
         graphics.drawRect(0,0,this.§for var native§ - 1,18);
         graphics.endFill();
      }
      
      override public function set width(param1:Number) : void
      {
         this.§for var native§ = param1;
         this.resize();
      }
   }
}

