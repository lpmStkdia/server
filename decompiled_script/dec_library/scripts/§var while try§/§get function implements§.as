package §var while try§
{
   import §5214234310234323123423632234§.§break while override§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.display.Sprite;
   
   public class §get function implements§ extends §function for class§
   {
      
      public function §get function implements§()
      {
         super();
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Bitmap = new Bitmap(new BitmapData(1,1,true,0));
         var _loc3_:Shape = new Shape();
         _loc3_.graphics.beginFill(1447446,0.8);
         _loc3_.graphics.drawRoundRect(0,0,207,20,6,6);
         _loc3_.graphics.endFill();
         §else use null§ = param1;
         §with switch include§("upSkin",_loc2_);
         §with switch include§("downSkin",_loc3_);
         §with switch include§("overSkin",_loc3_);
         §with switch include§("selectedUpSkin",_loc2_);
         §with switch include§("selectedOverSkin",_loc3_);
         §with switch include§("selectedDownSkin",_loc3_);
      }
      
      override protected function §521423170162317029123423632234§(param1:Object) : Sprite
      {
         var _loc4_:Sprite = new Sprite();
         var _loc2_:§break while override§ = new §break while override§();
         _loc2_.autoSize = "none";
         _loc2_.color = 16777215;
         _loc2_.alpha = param1.rang > 0 ? 0.5 : 1;
         _loc2_.text = param1.gameName;
         _loc2_.height = 20;
         _loc2_.width = §for var native§ - 20;
         _loc2_.x -= 5;
         _loc4_.addChild(_loc2_);
         var _loc3_:§override null§ = new §override null§(param1);
         _loc3_.x = _loc4_.width - _loc3_.width + 5;
         _loc3_.y = 1;
         _loc4_.addChild(_loc3_);
         tabEnabled = false;
         mouseEnabled = false;
         mouseChildren = true;
         return _loc4_;
      }
   }
}

