package §5214233864233877123423632234§
{
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   
   public class §521423179982318011123423632234§
   {
      
      private static var §native const break§:Matrix = new Matrix();
      
      private var §false catch default§:int;
      
      private var §521423163592316372123423632234§:int;
      
      private var §52142314123154123423632234§:int;
      
      private var §use catch package§:int;
      
      private var §try use set§:int;
      
      private var §521423121012312114123423632234§:int;
      
      private var §package super catch§:§import finally do§;
      
      private var §5214233487233500123423632234§:int;
      
      private var §finally const switch§:int;
      
      private var §with function null§:int;
      
      private var §class var use§:Shape = new Shape();
      
      private var x:int;
      
      private var y:int;
      
      private var §finally use class§:Rectangle;
      
      private var §case const override§:int = -1;
      
      public function §521423179982318011123423632234§(param1:int, param2:int, param3:int, param4:int, param5:§import finally do§)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§false catch default§ = param3;
         this.§521423163592316372123423632234§ = param4;
         this.§5214236798236811123423632234§(param5);
         this.§finally use class§ = new Rectangle(param1,param2,2 * this.§52142314123154123423632234§ + param4,this.§use catch package§);
      }
      
      private function §finally const null§(param1:Graphics, param2:uint, param3:BitmapData, param4:BitmapData) : void
      {
         var _loc5_:int = this.§521423163592316372123423632234§ - this.§5214233487233500123423632234§;
         §native const break§.tx = this.§try use set§;
         §native const break§.ty = this.§521423121012312114123423632234§;
         param1.beginBitmapFill(param3,§native const break§,false);
         param1.drawRect(this.§try use set§,this.§521423121012312114123423632234§,this.§5214233487233500123423632234§,this.§finally const switch§);
         param1.beginFill(param2);
         param1.drawRect(this.§try use set§ + this.§5214233487233500123423632234§,this.§521423121012312114123423632234§,_loc5_ - this.§5214233487233500123423632234§,this.§finally const switch§);
         §native const break§.tx = this.§try use set§ + _loc5_;
         param1.beginBitmapFill(param4,§native const break§,false);
         param1.drawRect(this.§try use set§ + _loc5_,this.§521423121012312114123423632234§,this.§5214233487233500123423632234§,this.§finally const switch§);
      }
      
      public function set §5214235714235727123423632234§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         else if(param1 > this.§false catch default§)
         {
            param1 = this.§false catch default§;
         }
         this.§with function null§ = param1;
      }
      
      public function §5214236798236811123423632234§(param1:§import finally do§) : void
      {
         if(this.§package super catch§ == param1)
         {
            return;
         }
         this.§case const override§ = -1;
         this.§package super catch§ = param1;
         this.§5214233487233500123423632234§ = param1.§in while native§.width;
         this.§finally const switch§ = param1.§in while native§.height;
         this.§52142314123154123423632234§ = param1.§5214236686236699123423632234§.width;
         this.§use catch package§ = param1.§5214238057238070123423632234§.height;
         this.§try use set§ = this.§52142314123154123423632234§ - this.§5214233487233500123423632234§;
         this.§521423121012312114123423632234§ = this.§use catch package§ - this.§finally const switch§ >> 1;
      }
      
      public function §continue use const§(param1:BitmapData) : Boolean
      {
         if(this.§case const override§ == this.§with function null§)
         {
            return false;
         }
         this.§case const override§ = this.§with function null§;
         var _loc2_:int = 0;
         var _loc4_:Graphics = this.§class var use§.graphics;
         _loc4_.clear();
         _loc4_.beginBitmapFill(this.§package super catch§.§5214236686236699123423632234§);
         _loc4_.drawRect(0,0,this.§52142314123154123423632234§,this.§use catch package§);
         _loc4_.beginBitmapFill(this.§package super catch§.§5214238057238070123423632234§);
         _loc4_.drawRect(this.§52142314123154123423632234§,0,this.§521423163592316372123423632234§ - 2 * this.§5214233487233500123423632234§,this.§use catch package§);
         _loc4_.beginBitmapFill(this.§package super catch§.§521423122152312228123423632234§);
         _loc4_.drawRect(this.§52142314123154123423632234§ + this.§521423163592316372123423632234§ - 2 * this.§5214233487233500123423632234§,0,this.§52142314123154123423632234§,this.§use catch package§);
         _loc4_.endFill();
         var _loc3_:int = this.§521423163592316372123423632234§ * this.§with function null§ / this.§false catch default§;
         var _loc5_:int = this.§521423163592316372123423632234§ - this.§5214233487233500123423632234§;
         if(_loc3_ >= this.§5214233487233500123423632234§)
         {
            if(_loc3_ == this.§521423163592316372123423632234§)
            {
               this.§finally const null§(_loc4_,this.§package super catch§.color,this.§package super catch§.§final use super§,this.§package super catch§.§521423173052317318123423632234§);
               _loc2_ = _loc3_;
            }
            else
            {
               §native const break§.tx = this.§try use set§;
               §native const break§.ty = this.§521423121012312114123423632234§;
               _loc4_.beginBitmapFill(this.§package super catch§.§final use super§,§native const break§,false);
               _loc4_.drawRect(this.§try use set§,this.§521423121012312114123423632234§,this.§5214233487233500123423632234§,this.§finally const switch§);
               if(_loc3_ > this.§5214233487233500123423632234§)
               {
                  if(_loc3_ > _loc5_)
                  {
                     _loc3_ = _loc5_;
                  }
                  _loc2_ = _loc3_;
                  _loc4_.beginFill(this.§package super catch§.color);
                  _loc4_.drawRect(this.§try use set§ + this.§5214233487233500123423632234§,this.§521423121012312114123423632234§,_loc3_ - this.§5214233487233500123423632234§,this.§finally const switch§);
               }
               else
               {
                  _loc2_ = this.§5214233487233500123423632234§;
               }
            }
         }
         if(_loc2_ == 0)
         {
            this.§finally const null§(_loc4_,this.§package super catch§.§try super extends§,this.§package super catch§.§in while native§,this.§package super catch§.§521423106482310661123423632234§);
         }
         else if(_loc2_ < this.§521423163592316372123423632234§)
         {
            _loc4_.beginFill(this.§package super catch§.§try super extends§);
            _loc4_.drawRect(this.§try use set§ + _loc2_,this.§521423121012312114123423632234§,_loc5_ - _loc2_,this.§finally const switch§);
            §native const break§.tx = this.§try use set§ + _loc5_;
            §native const break§.ty = this.§521423121012312114123423632234§;
            _loc4_.beginBitmapFill(this.§package super catch§.§521423106482310661123423632234§,§native const break§,false);
            _loc4_.drawRect(this.§try use set§ + _loc5_,this.§521423121012312114123423632234§,this.§5214233487233500123423632234§,this.§finally const switch§);
         }
         _loc4_.endFill();
         param1.fillRect(this.§finally use class§,0);
         §native const break§.tx = this.x;
         §native const break§.ty = this.y;
         param1.draw(this.§class var use§,§native const break§);
         return true;
      }
      
      public function get §5214235714235727123423632234§() : int
      {
         return this.§with function null§;
      }
      
      public function §521423156982315711123423632234§() : void
      {
         this.§case const override§ = -1;
      }
   }
}

