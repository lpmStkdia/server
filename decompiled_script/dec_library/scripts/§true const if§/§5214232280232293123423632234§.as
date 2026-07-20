package §true const if§
{
   import flash.display.DisplayObject;
   
   public class §5214232280232293123423632234§ extends §super var false§
   {
      
      public function §5214232280232293123423632234§()
      {
         super();
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
         var _loc3_:int = param1.y;
         param1.y = _loc2_.y + int(_loc2_.height) + §521423104312310444123423632234§() + param1.y;
         height = _loc2_.y + int(_loc2_.height) + §521423104312310444123423632234§() + _loc3_ + int(param1.height);
         width = Math.max(int(width),param1.x + §521423168472316860123423632234§(param1));
      }
      
      private function §import set default§() : int
      {
         var _loc2_:int = 0;
         for each(var _loc1_ in §5214231649231662123423632234§)
         {
            _loc2_ = Math.max(_loc2_,_loc1_.x + §521423168472316860123423632234§(_loc1_));
         }
         return _loc2_;
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
            width = this.§import set default§();
            height = §5214231649231662123423632234§[§5214231649231662123423632234§.length - 1].y + int(§5214231649231662123423632234§[§5214231649231662123423632234§.length - 1].height);
            return;
         }
         var _loc3_:int = §5214231649231662123423632234§[param1].y - param2.y;
         _loc4_ = param1;
         while(_loc4_ < §5214231649231662123423632234§.length)
         {
            §5214231649231662123423632234§[_loc4_].y -= _loc3_;
            _loc4_++;
         }
         height = §5214231649231662123423632234§[§5214231649231662123423632234§.length - 1].y + int(§5214231649231662123423632234§[§5214231649231662123423632234§.length - 1].height);
         width = this.§import set default§();
      }
   }
}

