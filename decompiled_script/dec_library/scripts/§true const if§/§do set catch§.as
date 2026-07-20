package §true const if§
{
   import flash.display.DisplayObject;
   
   public class §do set catch§ extends §super var false§
   {
      
      public function §do set catch§()
      {
         super();
      }
      
      private function §static switch try§() : int
      {
         var _loc1_:int = 0;
         for each(var _loc2_ in §5214231649231662123423632234§)
         {
            _loc1_ = Math.max(_loc1_,_loc2_.y + _loc2_.height);
         }
         return _loc1_;
      }
      
      override protected function §5214238514238527123423632234§(param1:int, param2:DisplayObject) : void
      {
         var _loc4_:int = 0;
         if(param1 <= 0)
         {
            width = 0;
            height = 0;
            return;
         }
         if(param1 == §5214231649231662123423632234§.length)
         {
            height = this.§static switch try§();
            width = §5214231649231662123423632234§[§5214231649231662123423632234§.length - 1].x - §521423168472316860123423632234§(§5214231649231662123423632234§[§5214231649231662123423632234§.length - 1]);
            return;
         }
         var _loc3_:int = §5214231649231662123423632234§[param1].x - param2.x;
         _loc4_ = param1;
         while(_loc4_ < §5214231649231662123423632234§.length)
         {
            §5214231649231662123423632234§[_loc4_].x -= _loc3_;
            _loc4_++;
         }
         width = §5214231649231662123423632234§[§5214231649231662123423632234§.length - 1].x + §521423168472316860123423632234§(§5214231649231662123423632234§[§5214231649231662123423632234§.length - 1]);
         height = this.§static switch try§();
      }
      
      override protected function §521423174702317483123423632234§(param1:DisplayObject) : void
      {
         if(§5214231649231662123423632234§.length < 2)
         {
            height = param1.y + int(param1.height);
            width = param1.x + §521423168472316860123423632234§(param1);
            return;
         }
         var _loc2_:DisplayObject = §5214231649231662123423632234§[§5214231649231662123423632234§.length - 2];
         var _loc5_:int = §521423168472316860123423632234§(_loc2_);
         var _loc3_:int = §521423168472316860123423632234§(param1);
         var _loc4_:int = param1.x;
         param1.x = _loc2_.x + _loc5_ + §521423104312310444123423632234§() + _loc4_;
         height = Math.max(int(height),param1.y + int(param1.height));
         width = _loc2_.x + _loc5_ + §521423104312310444123423632234§() + _loc4_ + _loc3_;
      }
   }
}

