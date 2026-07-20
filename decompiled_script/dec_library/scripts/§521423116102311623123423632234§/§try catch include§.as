package §521423116102311623123423632234§
{
   import flash.display.Sprite;
   
   public class §try catch include§ extends Sprite
   {
      
      protected var §5214231216231229123423632234§:int = 3;
      
      protected var §521423172712317284123423632234§:Sprite = new Sprite();
      
      protected var §var var static§:Number;
      
      public function §try catch include§()
      {
         super();
         addChild(this.§521423172712317284123423632234§);
      }
      
      protected function §get while null§(param1:§5214233093233106123423632234§) : void
      {
         param1.y = this.§521423172712317284123423632234§.numChildren > 0 ? int(this.§521423172712317284123423632234§.height + this.§5214231216231229123423632234§) : 0;
         this.§521423172712317284123423632234§.addChild(param1);
      }
      
      public function §5214232830232843123423632234§(param1:Boolean = false) : §5214233093233106123423632234§
      {
         var _loc2_:int = this.§521423172712317284123423632234§.numChildren;
         if(_loc2_ == 0)
         {
            return null;
         }
         var _loc4_:§5214233093233106123423632234§ = §5214233093233106123423632234§(this.§521423172712317284123423632234§.getChildAt(0));
         this.§var var static§ = int(_loc4_.height + _loc4_.y + this.§5214231216231229123423632234§);
         this.§521423172712317284123423632234§.removeChild(_loc4_);
         _loc2_--;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§521423172712317284123423632234§.getChildAt(_loc3_).y = this.§521423172712317284123423632234§.getChildAt(_loc3_).y - this.§var var static§;
            _loc3_++;
         }
         return _loc4_;
      }
      
      protected function §5214239954239967123423632234§(param1:§5214233093233106123423632234§) : void
      {
         param1.y = 0;
         param1.alpha = 1;
         this.§521423172712317284123423632234§.addChildAt(param1,0);
         var _loc2_:int = this.§521423172712317284123423632234§.numChildren;
         var _loc3_:int = 1;
         while(_loc3_ < _loc2_)
         {
            this.§521423172712317284123423632234§.getChildAt(_loc3_).y = this.§521423172712317284123423632234§.getChildAt(_loc3_).y + (int(param1.height + this.§5214231216231229123423632234§));
            _loc3_++;
         }
      }
   }
}

