package §implements super else§
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class §const use native§ extends Sprite
   {
      
      private var §for var native§:int = 100;
      
      public function §const use native§(param1:Boolean)
      {
         var _loc2_:DisplayObject = null;
         super();
         if(param1)
         {
            _loc2_ = new §in super extends§();
         }
         else
         {
            _loc2_ = new §5214232245232258123423632234§();
         }
         addChild(_loc2_);
         this.resize();
      }
      
      override public function set width(param1:Number) : void
      {
         this.§for var native§ = param1;
         this.resize();
      }
      
      protected function resize() : void
      {
         var _loc1_:DisplayObject = getChildAt(0) as DisplayObject;
         _loc1_.width = this.§for var native§ - 3;
         _loc1_.height = 18;
      }
   }
}

