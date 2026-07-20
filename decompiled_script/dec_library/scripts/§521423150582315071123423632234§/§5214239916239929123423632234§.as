package §521423150582315071123423632234§
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class §5214239916239929123423632234§ extends Sprite
   {
      
      private var §catch var null§:Sprite;
      
      public function §5214239916239929123423632234§()
      {
         super();
         this.§catch var null§ = new Sprite();
         this.§catch var null§.x = 8;
         this.§catch var null§.y = 9;
         addChild(this.§catch var null§);
      }
      
      public function §default function final§(param1:DisplayObject) : void
      {
         if(this.§catch var null§.numChildren > 0)
         {
            this.§catch var null§.removeChildAt(0);
         }
         this.§catch var null§.addChild(param1);
      }
      
      public function §do set finally§() : Boolean
      {
         return this.§catch var null§.numChildren > 0;
      }
   }
}

