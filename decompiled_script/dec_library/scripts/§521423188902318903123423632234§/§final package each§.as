package §521423188902318903123423632234§
{
   import §521423131682313181123423632234§.§521423123012312314123423632234§;
   import §521423131682313181123423632234§.§521423162962316309123423632234§;
   import §521423131682313181123423632234§.§52142365023663123423632234§;
   import §521423178502317863123423632234§.§5214235498235511123423632234§;
   import §5214234310234323123423632234§.§break while override§;
   import §5214237501237514123423632234§.§import finally if§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import §implements function import§.§const package native§;
   import §static catch do§.§static set in§;
   
   public class §final package each§ extends Sprite
   {
      
      public static var §5214238684238697123423632234§:§521423162962316309123423632234§;
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      private var §finally package each§:String;
      
      private var §else use null§:§5214235498235511123423632234§;
      
      private var §521423121362312149123423632234§:Bitmap;
      
      private var §5214237412237425123423632234§:§break while override§;
      
      private var §5214233816233829123423632234§:Sprite;
      
      private var §5214234830234843123423632234§:§521423123012312314123423632234§;
      
      private var §break for implements§:Bitmap;
      
      public function §final package each§(param1:String)
      {
         super();
         this.§finally package each§ = param1;
         this.§5214239350239363123423632234§();
      }
      
      public function §5214233007233020123423632234§() : Boolean
      {
         return this.§else use null§ != null;
      }
      
      public function get §521423191942319207123423632234§() : Sprite
      {
         return this.§5214233816233829123423632234§;
      }
      
      private function §5214238872238885123423632234§(param1:§5214235498235511123423632234§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         this.§else use null§ = param1;
         this.§521423121362312149123423632234§.visible = false;
         this.§break for implements§.visible = false;
         var _loc4_:String = "";
         if(this.§5214233007233020123423632234§())
         {
            _loc3_ = this.§else use null§.§native use default§();
            if(this.§else use null§.§5214235919235932123423632234§())
            {
               if(_loc3_)
               {
                  _loc4_ = param1.§for while override§ + " " + §521423164582316471123423632234§.§521423157602315773123423632234§("FRIENDS_YOU_ARE_HERE_BATTLE_INDICATOR");
               }
               else
               {
                  _loc4_ = "<u>" + param1.§for while override§ + "</u>";
               }
               this.§521423121362312149123423632234§.visible = this.§else use null§.§use catch else§;
               this.§break for implements§.visible = this.§else use null§.§static while const§();
            }
            _loc2_ = !_loc3_;
         }
         this.§5214233816233829123423632234§.buttonMode = this.§5214233816233829123423632234§.useHandCursor = _loc2_;
         this.§5214237412237425123423632234§.htmlText = _loc4_;
      }
      
      private function §5214239350239363123423632234§() : void
      {
         this.tabChildren = false;
         this.tabEnabled = false;
         this.§break for implements§ = new Bitmap(§import finally if§.§break package false§);
         this.§break for implements§.y = (18 - this.§break for implements§.height) / 2;
         this.§break for implements§.visible = false;
         addChild(this.§break for implements§);
         this.§521423121362312149123423632234§ = new Bitmap(§const package native§.§521423115982311611123423632234§(true,false));
         this.§521423121362312149123423632234§.visible = false;
         this.§521423121362312149123423632234§.y = (18 - this.§521423121362312149123423632234§.height) / 2;
         addChild(this.§521423121362312149123423632234§);
         this.§5214233816233829123423632234§ = new Sprite();
         addChild(this.§5214233816233829123423632234§);
         this.§5214237412237425123423632234§ = new §break while override§();
         this.§5214237412237425123423632234§.color = 5898034;
         this.§5214237412237425123423632234§.mouseEnabled = false;
         this.§5214233816233829123423632234§.addChild(this.§5214237412237425123423632234§);
         this.§5214233816233829123423632234§.y = -1;
         this.§521423121362312149123423632234§.x = 0;
         this.§break for implements§.x = this.§521423121362312149123423632234§.x + this.§521423121362312149123423632234§.width + 5;
         this.§5214233816233829123423632234§.x = this.§break for implements§.x + this.§break for implements§.width + 2;
         this.§5214234830234843123423632234§ = §5214238684238697123423632234§.§in while in§(this.§finally package each§);
         this.§5214234830234843123423632234§.addEventListener("UserLabelUpdaterEvent.CHANGE_BATTLE_LINK",this.§get while§);
         if(this.§5214234830234843123423632234§.§5214233007233020123423632234§())
         {
            this.§5214238872238885123423632234§(this.§5214234830234843123423632234§.§521423176692317682123423632234§);
         }
      }
      
      private function §get while§(param1:§52142365023663123423632234§) : void
      {
         this.§5214238872238885123423632234§(this.§5214234830234843123423632234§.§521423176692317682123423632234§);
      }
      
      public function get data() : §5214235498235511123423632234§
      {
         return this.§else use null§;
      }
      
      public function §5214235152235165123423632234§() : void
      {
         this.§5214234830234843123423632234§.removeEventListener("UserLabelUpdaterEvent.CHANGE_BATTLE_LINK",this.§get while§);
      }
   }
}

