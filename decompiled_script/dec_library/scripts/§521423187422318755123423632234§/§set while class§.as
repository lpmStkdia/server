package §521423187422318755123423632234§
{
   import §521423124962312509123423632234§.§521423149802314993123423632234§;
   import §5214234310234323123423632234§.§break while override§;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class §set while class§ extends Sprite
   {
      
      private static var §521423152462315259123423632234§:Array = [5885719,1519104];
      
      private var §static use try§:§break while override§;
      
      private var §catch var else§:int = 0;
      
      private var §521423133112313324123423632234§:int = 0;
      
      public function §set while class§()
      {
         super();
         this.§5214239350239363123423632234§();
      }
      
      public function set §false super do§(param1:int) : void
      {
         this.§521423112762311289123423632234§(this.§catch var else§,param1);
      }
      
      private function §5214239350239363123423632234§() : void
      {
         this.§static use try§ = new §break while override§();
         addChild(this.§static use try§);
         this.§521423112762311289123423632234§(this.§catch var else§,this.§521423133112313324123423632234§);
         this.resize();
      }
      
      private function §const super function§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§static use try§.text.length;
         if(_loc2_ == 1)
         {
            _loc1_ = 1;
         }
         else if(_loc2_ > 1)
         {
            _loc1_ = (_loc2_ - 1) * 6;
         }
         return _loc1_;
      }
      
      public function §521423112762311289123423632234§(param1:int, param2:int) : void
      {
         this.§catch var else§ = param1;
         this.§521423133112313324123423632234§ = param2;
         this.visible = param2 != 0;
         this.§static use try§.text = String(param2);
         this.resize();
      }
      
      public function set §switch finally native§(param1:int) : void
      {
         this.§521423112762311289123423632234§(param1,this.§521423133112313324123423632234§);
      }
      
      private function resize() : void
      {
         this.§static use try§.x = -int(this.§static use try§.width) - 1;
         var _loc3_:Matrix = new Matrix();
         var _loc1_:int = this.§const super function§() + 14;
         _loc3_.createGradientBox(_loc1_,14,3.141592653589793 * 0.5,0,1);
         var _loc2_:Graphics = graphics;
         _loc2_.clear();
         _loc2_.beginGradientFill("linear",§521423152462315259123423632234§,§521423149802314993123423632234§.§521423532366123423632234§,§521423149802314993123423632234§.§with set extends§,_loc3_);
         _loc2_.drawRoundRect(-_loc1_ + 2,2,_loc1_,14,15,15);
      }
   }
}

