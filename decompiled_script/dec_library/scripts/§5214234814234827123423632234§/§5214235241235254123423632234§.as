package §5214234814234827123423632234§
{
   import §5214234047234060123423632234§.§521423129042312917123423632234§;
   import §5214234310234323123423632234§.§break while override§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class §5214235241235254123423632234§ extends Sprite
   {
      
      public var §return var else§:Bitmap;
      
      private var label:§break while override§;
      
      private const §import finally include§:int = 2;
      
      public function §5214235241235254123423632234§(param1:BitmapData)
      {
         super();
         var _loc2_:BitmapData = §5214235881235894123423632234§.§use set return§;
         var _loc3_:BitmapData = new BitmapData(_loc2_.width,_loc2_.height,true,0);
         _loc3_.draw(_loc2_);
         _loc3_.draw(param1,new Matrix(1,0,0,1,1,1));
         this.§return var else§ = new Bitmap(_loc3_);
         addChild(this.§return var else§);
         this.label = new §521423129042312917123423632234§();
         this.label.§5214239166239179123423632234§ = 10;
         addChild(this.label);
         this.label.color = 59156;
         this.label.align = "center";
         this.label.sharpness = -100;
         this.§5214239110239123123423632234§();
         this.label.y = this.§return var else§.height + 2;
      }
      
      public function §import for for§() : DisplayObject
      {
         return this.label;
      }
      
      public function §5214236856236869123423632234§(param1:String, param2:uint) : void
      {
         this.label.text = param1;
         this.label.color = param2;
         this.§5214239110239123123423632234§();
      }
      
      public function §521423135922313605123423632234§() : void
      {
         this.label.text = "";
      }
      
      private function §5214239110239123123423632234§() : void
      {
         if(this.§return var else§.width > this.label.textWidth)
         {
            this.label.x = Math.round((this.§return var else§.width - this.label.textWidth) * 0.5) - 3;
         }
         else if(this.label.textWidth > this.§return var else§.width)
         {
            this.label.x = -Math.round((this.label.textWidth - this.§return var else§.width) * 0.5) - 3;
         }
         else
         {
            this.label.x = -3;
         }
      }
   }
}

