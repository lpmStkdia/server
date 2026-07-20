package §5214233864233877123423632234§
{
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.filters.GlowFilter;
   
   public class §521423168242316837123423632234§ extends Sprite
   {
      
      private const §521423139622313975123423632234§:int = 45;
      
      private var §class var use§:Shape = new Shape();
      
      private var value:Number;
      
      private var color:uint;
      
      private var §while const in§:uint;
      
      private var §with switch switch§:int;
      
      private var §521423186252318638123423632234§:Number;
      
      private var §5214235514235527123423632234§:Boolean;
      
      public function §521423168242316837123423632234§(param1:uint, param2:uint, param3:int, param4:Number, param5:Boolean = false)
      {
         super();
         this.color = param1;
         this.§while const in§ = param2;
         this.§with switch switch§ = param3;
         this.§521423186252318638123423632234§ = param4;
         this.§5214235514235527123423632234§ = param5;
         this.§class var use§.filters = [new GlowFilter(0,0.6,3,3,2,3)];
         addChild(this.§class var use§);
      }
      
      public function §continue use const§() : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc1_:Graphics = this.§class var use§.graphics;
         _loc1_.clear();
         _loc1_.moveTo(0,0 - this.§with switch switch§);
         var _loc2_:int = 45 * this.value;
         _loc1_.moveTo(0,0 - this.§with switch switch§);
         _loc1_.lineStyle(this.§521423186252318638123423632234§,this.§while const in§);
         _loc3_ = 45;
         while(_loc3_ >= 0)
         {
            _loc4_ = _loc3_ * 2 * 3.141592653589793 / 180;
            if(_loc3_ == _loc2_ - 1)
            {
               _loc1_.lineStyle(this.§521423186252318638123423632234§,this.color);
            }
            _loc1_.lineTo(0 - Math.cos(_loc4_) * this.§with switch switch§ * (this.§5214235514235527123423632234§ ? -1 : 1),0 - Math.sin(_loc4_) * this.§with switch switch§);
            _loc3_--;
         }
      }
      
      public function §5214236856236869123423632234§(param1:Number) : void
      {
         this.value = Math.max(0,Math.min(1,param1));
         this.§continue use const§();
      }
   }
}

