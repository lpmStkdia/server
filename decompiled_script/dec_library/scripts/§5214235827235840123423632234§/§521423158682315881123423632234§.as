package §5214235827235840123423632234§
{
   import §dynamic super§.§5214239230239243123423632234§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import §static catch do§.§static set in§;
   
   public class §521423158682315881123423632234§ extends Sprite
   {
      
      public static var §static for for§:§5214239230239243123423632234§;
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      private var §521423130362313049123423632234§:Bitmap;
      
      private var §521423193142319327123423632234§:Bitmap;
      
      public function §521423158682315881123423632234§()
      {
         super();
         this.§521423130362313049123423632234§ = new Bitmap(§521423164582316471123423632234§.§function const finally§("HELP_CONTROLS_MINI"));
         this.§521423193142319327123423632234§ = new Bitmap(§521423164582316471123423632234§.§function const finally§("HELP_MOUSE_MINI"));
         addEventListener("click",§5214234571234584123423632234§);
         this.§521423120492312062123423632234§(1);
      }
      
      private static function §5214234571234584123423632234§(param1:MouseEvent) : void
      {
         §static for for§.§5214235683235696123423632234§();
         param1.stopPropagation();
      }
      
      public function §521423120492312062123423632234§(param1:int) : void
      {
         if(this.§521423130362313049123423632234§.parent != null)
         {
            removeChild(this.§521423130362313049123423632234§);
         }
         if(this.§521423193142319327123423632234§.parent != null)
         {
            removeChild(this.§521423193142319327123423632234§);
         }
         if(param1 == 1)
         {
            addChild(this.§521423130362313049123423632234§);
         }
         else
         {
            addChild(this.§521423193142319327123423632234§);
         }
      }
   }
}

