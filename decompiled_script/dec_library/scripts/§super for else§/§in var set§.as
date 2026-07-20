package §super for else§
{
   import §521423128492312862123423632234§.§finally while case§;
   import §5214232825232838123423632234§.§try set catch§;
   import §5214234310234323123423632234§.§break while override§;
   import §5214235609235622123423632234§.§5214235399235412123423632234§;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import §implements use var§.§5214232504232517123423632234§;
   import §static catch do§.§static set in§;
   import §var switch try§.§5214235726235739123423632234§;
   import §var switch try§.§5214238393238406123423632234§;
   
   public class §in var set§ extends §5214235399235412123423632234§ implements §5214238393238406123423632234§
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      protected static const §switch const case§:int = 17;
      
      private var §521423121842312197123423632234§:§break while override§;
      
      protected var preview:Bitmap;
      
      private var text:String;
      
      private var §5214235172235185123423632234§:§5214232504232517123423632234§;
      
      private var §5214231772231785123423632234§:String;
      
      public function §in var set§(param1:String, param2:String, param3:§5214232504232517123423632234§ = null)
      {
         this.§5214231772231785123423632234§ = param1;
         addEventListener("click",this.§521423116222311635123423632234§);
         this.text = param2;
         this.§5214235172235185123423632234§ = param3;
         super(§try set catch§.§5214236044236057123423632234§);
      }
      
      protected function §521423116222311635123423632234§(param1:MouseEvent) : void
      {
         dispatchEvent(new §finally while case§(this.§5214231772231785123423632234§));
      }
      
      protected function §return catch break§() : void
      {
         addChildAt(this.preview,2);
      }
      
      private function §52142346423477123423632234§() : void
      {
         this.§521423121842312197123423632234§ = new §break while override§();
         this.§521423121842312197123423632234§.text = this.text;
         this.§521423121842312197123423632234§.color = 23704;
         this.§521423121842312197123423632234§.§5214239166239179123423632234§ = §521423164582316471123423632234§.§5214235381235394123423632234§ == "cn" ? 18 : 22;
         this.§521423121842312197123423632234§.autoSize = "left";
         this.§521423121842312197123423632234§.bold = true;
         this.§521423121842312197123423632234§.mouseEnabled = false;
         this.§521423121842312197123423632234§.wordWrap = true;
         this.§521423121842312197123423632234§.width = this.width / 2;
         addChild(this.§521423121842312197123423632234§);
      }
      
      override protected function §5214239350239363123423632234§() : void
      {
         super.§5214239350239363123423632234§();
         this.§52142315123164123423632234§();
         this.§52142346423477123423632234§();
         this.§521423189422318955123423632234§();
         this.align();
      }
      
      protected function §521423189422318955123423632234§() : void
      {
         if(this.preview != null)
         {
            this.§return catch break§();
         }
      }
      
      public function §import finally switch§(param1:§5214232504232517123423632234§) : void
      {
         this.preview = new Bitmap(param1.data);
         this.§52142356923582123423632234§();
      }
      
      private function §52142315123164123423632234§() : void
      {
         if(this.§5214235172235185123423632234§ != null)
         {
            var _loc1_:§5214232504232517123423632234§ = this.§5214235172235185123423632234§;
            if(_loc1_.§false catch override§.§5214236765236778123423632234§ && (_loc2_.§null set case§ & 1) == 0)
            {
               this.§5214235172235185123423632234§.§extends finally import§(new §5214235726235739123423632234§(this));
            }
            else
            {
               this.preview = new Bitmap(this.§5214235172235185123423632234§.data);
            }
         }
      }
      
      protected function §52142356923582123423632234§() : void
      {
         this.§return catch break§();
         this.align();
      }
      
      protected function align() : void
      {
         this.§521423121842312197123423632234§.y = this.height / 2 - this.§521423121842312197123423632234§.height / 2;
         this.§521423121842312197123423632234§.x = 17;
         if(this.preview != null)
         {
            this.preview.x = this.width - 17 - 150;
            this.preview.y = 12;
         }
      }
   }
}

