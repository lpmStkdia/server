package §import package include§
{
   import §521423124962312509123423632234§.§521423148162314829123423632234§;
   import §521423138512313864123423632234§.§521423129472312960123423632234§;
   import §5214237733237746123423632234§.§521423189942319007123423632234§;
   import §5214237733237746123423632234§.§get switch finally§;
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §finally finally implements§ extends §521423129472312960123423632234§
   {
      
      private var §521423158002315813123423632234§:BitmapData;
      
      private var §52142386923882123423632234§:BitmapData;
      
      public function §finally finally implements§()
      {
         super();
         §native set function§ = new §521423189942319007123423632234§(0,0);
         §521423176832317696123423632234§ = new §get switch finally§(0,0);
         §521423145982314611123423632234§ = §521423148162314829123423632234§.§finally package default§(§native set function§);
         this.§521423158002315813123423632234§ = new BitmapData(10,40);
         this.§52142386923882123423632234§ = new BitmapData(10,40);
         var _loc1_:Point = new Point();
         var _loc2_:Rectangle = new Rectangle(0,0,10,40);
         this.§521423158002315813123423632234§.copyPixels(§native set function§,_loc2_,_loc1_);
         _loc2_.x = 10;
         this.§52142386923882123423632234§.copyPixels(§521423145982314611123423632234§,_loc2_,_loc1_);
      }
      
      override public function §continue use const§() : void
      {
         var _loc1_:Graphics = null;
         if(§for var native§ >= 40)
         {
            _loc1_ = §521423173342317347123423632234§.graphics;
            _loc1_.clear();
            _loc1_.beginBitmapFill(§native set function§);
            _loc1_.drawRect(0,0,20,40);
            _loc1_.endFill();
            §521423173342317347123423632234§.x = 0;
            §521423173342317347123423632234§.y = 0;
            _loc1_ = §native var else§.graphics;
            _loc1_.clear();
            _loc1_.beginBitmapFill(§521423176832317696123423632234§);
            _loc1_.drawRect(0,0,§for var native§ - 40,40);
            _loc1_.endFill();
            §native var else§.x = 20;
            §native var else§.y = 0;
            _loc1_ = §5214234274234287123423632234§.graphics;
            _loc1_.clear();
            _loc1_.beginBitmapFill(§521423145982314611123423632234§);
            _loc1_.drawRect(0,0,20,40);
            _loc1_.endFill();
            §5214234274234287123423632234§.x = §for var native§ - 20;
            §5214234274234287123423632234§.y = 0;
         }
         else
         {
            _loc1_ = §521423173342317347123423632234§.graphics;
            _loc1_.clear();
            _loc1_.beginBitmapFill(this.§521423158002315813123423632234§);
            _loc1_.drawRect(0,0,10,40);
            _loc1_.endFill();
            §521423173342317347123423632234§.x = 0;
            §521423173342317347123423632234§.y = 0;
            _loc1_ = §native var else§.graphics;
            _loc1_.clear();
            _loc1_.beginBitmapFill(§521423176832317696123423632234§);
            _loc1_.drawRect(0,0,§for var native§ - 20,40);
            _loc1_.endFill();
            §native var else§.x = 10;
            §native var else§.y = 0;
            _loc1_ = §5214234274234287123423632234§.graphics;
            _loc1_.clear();
            _loc1_.beginBitmapFill(this.§52142386923882123423632234§);
            _loc1_.drawRect(0,0,10,40);
            _loc1_.endFill();
            §5214234274234287123423632234§.x = §for var native§ - 10;
            §5214234274234287123423632234§.y = 0;
         }
      }
   }
}

