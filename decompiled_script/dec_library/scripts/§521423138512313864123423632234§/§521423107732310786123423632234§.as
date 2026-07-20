package §521423138512313864123423632234§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   
   public class §521423107732310786123423632234§ extends §catch catch final§
   {
      
      protected var §5214235347235360123423632234§:Bitmap;
      
      public function §521423107732310786123423632234§(param1:BitmapData = null)
      {
         super();
         if(param1 != null)
         {
            this.icon = param1;
         }
      }
      
      override public function set width(param1:Number) : void
      {
         §for var native§ = param1;
         §5214233962233975123423632234§.width = §5214237277237290123423632234§.width = §null set super§.width = §import set each§.width = §for var native§;
         if(§5214237412237425123423632234§ == null)
         {
            return;
         }
         if(this.§5214235347235360123423632234§ != null)
         {
            §5214237412237425123423632234§.x = 20;
            §5214237412237425123423632234§.width = §for var native§ - 22;
         }
         else
         {
            §5214237412237425123423632234§.x = 2;
            §5214237412237425123423632234§.width = §for var native§ - 4;
         }
      }
      
      public function set icon(param1:BitmapData) : void
      {
         this.§5214235347235360123423632234§ = new Bitmap(param1);
         addChild(this.§5214235347235360123423632234§);
         this.§5214235347235360123423632234§.x = 3;
         this.§5214235347235360123423632234§.y = 3;
         this.width = §for var native§;
      }
      
      override protected function §521423151022315115123423632234§(param1:MouseEvent) : void
      {
         super.§521423151022315115123423632234§(param1);
         if(enable && this.§5214235347235360123423632234§ != null)
         {
            this.§5214235347235360123423632234§.y = param1.type == "mouseDown" ? 4 : 3;
         }
      }
   }
}

