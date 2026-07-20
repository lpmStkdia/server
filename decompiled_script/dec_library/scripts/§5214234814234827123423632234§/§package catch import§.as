package §5214234814234827123423632234§
{
   import §5214234310234323123423632234§.§break while override§;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   
   public class §package catch import§ extends Sprite
   {
      
      private var §throw finally try§:int;
      
      public var §521423116442311657123423632234§:int;
      
      public var §throw var const§:Vector.<§52142347923492123423632234§>;
      
      private const §521423138222313835123423632234§:int = 0;
      
      private var §default use package§:Shape;
      
      private var §521423161512316164123423632234§:int = -1;
      
      private var §for var native§:int;
      
      public function §package catch import§(param1:int)
      {
         var _loc3_:int = 0;
         var _loc2_:§52142347923492123423632234§ = null;
         §throw var const§ = new Vector.<§52142347923492123423632234§>();
         super();
         this.§for var native§ = param1;
         this.§default use package§ = new Shape();
         addChild(this.§default use package§);
         this.§default use package§.x = 3;
         _loc3_ = 0;
         while(_loc3_ < 4)
         {
            _loc2_ = new §52142347923492123423632234§(_loc3_,this.§for var native§);
            addChild(_loc2_);
            _loc2_.y = (17 + 0) * _loc3_;
            this.§throw var const§.push(_loc2_);
            _loc3_++;
         }
         this.§import while each§(this.§for var native§);
      }
      
      public function set §const set each§(param1:int) : void
      {
         var _loc2_:int = 0;
         this.§throw finally try§ = param1;
         var _loc3_:§52142347923492123423632234§ = this.§throw var const§[0];
         this.§521423116442311657123423632234§ = _loc3_.§get use dynamic§.width + _loc3_.§5214231031231044123423632234§.width + 3 + _loc3_.§catch continue§.width + this.§throw finally try§ + 10 * 3;
         _loc2_ = 0;
         while(_loc2_ < 4)
         {
            _loc3_ = this.§throw var const§[_loc2_] as §52142347923492123423632234§;
            _loc3_.§import switch if§ = this.§throw finally try§;
            _loc2_++;
         }
      }
      
      private function §import while each§(param1:int) : void
      {
         var _loc3_:int = param1 - 6;
         var _loc2_:Graphics = this.§default use package§.graphics;
         _loc2_.clear();
         _loc2_.beginFill(2071057);
         _loc2_.drawRoundRect(0,0,_loc3_,17,7,7);
         _loc2_.endFill();
      }
      
      public function §get switch final§(param1:int) : void
      {
         var _loc2_:§52142347923492123423632234§ = null;
         if(this.§521423161512316164123423632234§ != -1)
         {
            _loc2_ = this.§throw var const§[this.§521423161512316164123423632234§];
            _loc2_.§do function if§();
         }
         this.§521423161512316164123423632234§ = param1;
         this.§default use package§.y = (17 + 0) * param1;
         _loc2_ = this.§throw var const§[this.§521423161512316164123423632234§];
         _loc2_.§get switch final§();
      }
      
      public function §final function switch§() : void
      {
         var _loc7_:int = 0;
         var _loc4_:§break while override§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc1_:Vector.<int> = new Vector.<int>();
         var _loc5_:§52142347923492123423632234§ = this.§throw var const§[0];
         var _loc6_:int = int(_loc5_.§521423146932314706123423632234§.length);
         _loc2_ = 0;
         while(_loc2_ < 4)
         {
            _loc5_ = this.§throw var const§[_loc2_] as §52142347923492123423632234§;
            _loc7_ = 0;
            while(_loc7_ < _loc6_)
            {
               _loc4_ = _loc5_.§521423146932314706123423632234§[_loc7_] as §break while override§;
               if(_loc4_.text.indexOf(".") != -1)
               {
                  _loc1_[_loc1_.length] = _loc7_;
               }
               _loc7_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < 4)
         {
            _loc5_ = this.§throw var const§[_loc2_];
            _loc7_ = 0;
            while(_loc7_ < _loc1_.length)
            {
               _loc3_ = _loc1_[_loc7_];
               _loc4_ = _loc5_.§521423146932314706123423632234§[_loc3_] as §break while override§;
               if(_loc4_.text.indexOf(".") == -1)
               {
                  _loc4_.text += ".0";
               }
               _loc7_++;
            }
            _loc2_++;
         }
      }
   }
}

