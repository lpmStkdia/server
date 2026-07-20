package §5214234814234827123423632234§
{
   import §5214234310234323123423632234§.§521423123992312412123423632234§;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import §get package null§.§try use break§;
   
   public class §break set in§ extends §521423123992312412123423632234§
   {
      
      private var §catch continue§:Bitmap = §try use break§.§5214235189235202123423632234§();
      
      private var §5214235484235497123423632234§:Boolean = true;
      
      public function §break set in§()
      {
         super();
         addChild(§catch continue§);
         §catch continue§.y = 10;
      }
      
      override public function set width(param1:Number) : void
      {
         §for var native§ = param1;
         §5214233962233975123423632234§.width = §5214237277237290123423632234§.width = §null set super§.width = §import set each§.width = §for var native§;
      }
      
      override protected function §521423151022315115123423632234§(param1:MouseEvent) : void
      {
         if(this.§5214235484235497123423632234§)
         {
            switch(param1.type)
            {
               case "mouseOver":
                  §return const class§(2);
                  §5214237412237425123423632234§.y = 6;
                  §catch continue§.y = 10;
                  break;
               case "mouseOut":
                  §return const class§(1);
                  §5214237412237425123423632234§.y = 6;
                  §catch continue§.y = 10;
                  break;
               case "mouseDown":
                  §return const class§(3);
                  §5214237412237425123423632234§.y = 7;
                  §catch continue§.y = 11;
                  break;
               case "mouseUp":
                  §return const class§(1);
                  §5214237412237425123423632234§.y = 6;
                  §catch continue§.y = 10;
            }
         }
      }
      
      override public function set label(param1:String) : void
      {
         super.label = param1;
         §5214237412237425123423632234§.width = §for var native§ - 4 - §catch continue§.width;
         §catch continue§.x = §5214237412237425123423632234§.textWidth + (§5214237412237425123423632234§.width - §5214237412237425123423632234§.textWidth) / 2 + 7;
      }
      
      override public function get width() : Number
      {
         return §for var native§;
      }
   }
}

