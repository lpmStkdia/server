package §dynamic for case§
{
   import §521423138512313864123423632234§.§finally function return§;
   import §521423188072318820123423632234§.§continue const const§;
   import flash.display.Bitmap;
   import §with var final§.§throw switch import§;
   
   public class §5214233193233206123423632234§ extends §continue const const§
   {
      
      private var §521423124092312422123423632234§:§finally function return§;
      
      private var §521423115172311530123423632234§:int;
      
      private var §521423128352312848123423632234§:String;
      
      public function §5214233193233206123423632234§(param1:String, param2:String, param3:String)
      {
         super();
         var _loc9_:int = param3.indexOf("{time}");
         if(_loc9_ >= 0)
         {
            §521423128352312848123423632234§ = param3.substring(0,_loc9_);
         }
         else
         {
            §521423128352312848123423632234§ = param3 + " ";
         }
         var _loc7_:int = 33;
         var _loc12_:int = 33;
         var _loc5_:int = 5;
         var _loc8_:int = 16;
         var _loc6_:Bitmap = new Bitmap(new §throw switch import§(0,0));
         addChild(_loc6_);
         _loc6_.y = _loc7_;
         var _loc4_:int = _loc6_.y + _loc6_.height + 2 * _loc5_;
         var _loc10_:§finally function return§ = new §finally function return§();
         _loc10_.§5214239166239179123423632234§ = _loc8_;
         _loc10_.text = param1;
         _loc10_.y = _loc4_;
         addChild(_loc10_);
         width = _loc10_.textWidth;
         _loc4_ += _loc10_.height + _loc5_;
         var _loc11_:§finally function return§ = new §finally function return§();
         _loc11_.§5214239166239179123423632234§ = _loc8_;
         _loc11_.text = param2;
         _loc11_.y = _loc4_;
         addChild(_loc11_);
         if(width < _loc11_.textWidth)
         {
            width = _loc11_.textWidth;
         }
         _loc4_ += _loc11_.height + _loc5_;
         this.§521423124092312422123423632234§ = new §finally function return§();
         this.§521423124092312422123423632234§.§5214239166239179123423632234§ = _loc8_;
         this.§521423124092312422123423632234§.autoSize = "left";
         this.§521423124092312422123423632234§.text = param3 + " 99:99";
         this.§521423124092312422123423632234§.y = _loc4_;
         addChild(this.§521423124092312422123423632234§);
         if(width < this.§521423124092312422123423632234§.textWidth)
         {
            width = this.§521423124092312422123423632234§.textWidth;
         }
         width += 2 * _loc12_;
         _loc6_.x = width - _loc6_.width >> 1;
         _loc10_.x = width - _loc10_.width >> 1;
         _loc11_.x = width - _loc11_.width >> 1;
         height = _loc4_ + this.§521423124092312422123423632234§.height + _loc7_ - 5;
      }
      
      public function set §in for each§(param1:int) : void
      {
         if(this.§521423115172311530123423632234§ == param1)
         {
            return;
         }
         this.§521423115172311530123423632234§ = param1;
         var _loc3_:int = this.§521423115172311530123423632234§ / 60;
         this.§521423115172311530123423632234§ -= _loc3_ * 60;
         var _loc2_:String = this.§521423115172311530123423632234§ < 10 ? "0" + this.§521423115172311530123423632234§ : this.§521423115172311530123423632234§.toString();
         this.§521423124092312422123423632234§.text = §521423128352312848123423632234§ + _loc3_ + ":" + _loc2_;
         this.§521423124092312422123423632234§.x = width - this.§521423124092312422123423632234§.width >> 1;
      }
   }
}

