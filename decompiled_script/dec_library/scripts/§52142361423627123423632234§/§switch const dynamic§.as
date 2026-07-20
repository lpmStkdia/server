package §52142361423627123423632234§
{
   import §521423138512313864123423632234§.§finally function return§;
   import §5214235974235987123423632234§.§521423114642311477123423632234§;
   import §class use import§.§521423173622317375123423632234§;
   import §continue switch case§.§dynamic const break§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §switch const dynamic§ extends Sprite
   {
      
      private static const §5214235712235725123423632234§:int = 999;
      
      private static const §override for const§:int = 19;
      
      private static const §override package override§:int = 58;
      
      private static const §521423141832314196123423632234§:int = 93;
      
      private static const §null package extends§:int = 48;
      
      public static var §521423164132316426123423632234§:§521423173622317375123423632234§;
      
      private var §use finally false§:int = 10;
      
      private var §null while if§:§finally function return§;
      
      private var §final function else§:§finally function return§;
      
      private var §switch set static§:§finally function return§;
      
      private var §521423154742315487123423632234§:§finally function return§;
      
      private var §521423140052314018123423632234§:int;
      
      private var §5214231249231262123423632234§:int;
      
      private var §521423141222314135123423632234§:int = 60;
      
      public function §switch const dynamic§()
      {
         super();
         addEventListener("addedToStage",this.§const use use§);
      }
      
      private function §5214239350239363123423632234§() : void
      {
         if(this.§null while if§ == null)
         {
            this.§null while if§ = new §finally function return§();
            this.§null while if§.autoSize = "left";
            this.§null while if§.color = 16777215;
            this.§null while if§.text = "FPS: ";
            this.§null while if§.selectable = false;
            addChild(this.§null while if§);
            this.§final function else§ = new §finally function return§();
            this.§final function else§.autoSize = "left";
            this.§final function else§.color = 65280;
            this.§final function else§.text = this.§521423141222314135123423632234§.toString();
            this.§final function else§.selectable = false;
            addChild(this.§final function else§);
            this.§switch set static§ = new §finally function return§();
            this.§switch set static§.autoSize = "left";
            this.§switch set static§.color = 16777215;
            this.§switch set static§.text = "PING: ";
            this.§switch set static§.selectable = false;
            this.§switch set static§.x = -7;
            this.§switch set static§.y = 19;
            addChild(this.§switch set static§);
            this.§521423154742315487123423632234§ = new §finally function return§();
            this.§521423154742315487123423632234§.autoSize = "left";
            this.§521423154742315487123423632234§.color = 65280;
            this.§521423154742315487123423632234§.text = "0";
            this.§521423154742315487123423632234§.selectable = false;
            this.§521423154742315487123423632234§.y = 19;
            addChild(this.§521423154742315487123423632234§);
            filters = §521423114642311477123423632234§.§final set each§;
         }
      }
      
      private function §package set get§(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc4_:Number = NaN;
         var _loc3_:int = 0;
         if(++this.§521423140052314018123423632234§ >= this.§use finally false§)
         {
            _loc2_ = getTimer();
            _loc4_ = 1000 * this.§521423140052314018123423632234§ / (_loc2_ - this.§5214231249231262123423632234§);
            if(_loc4_ > this.§521423141222314135123423632234§)
            {
               _loc4_ = this.§521423141222314135123423632234§;
            }
            if(_loc4_ > 30)
            {
               if(_loc4_ < 60)
               {
                  this.§final function else§.§5214235724235737123423632234§ = this.§catch switch else§(16776960,65280,(_loc4_ - 30) / 30);
               }
               else
               {
                  this.§final function else§.§5214235724235737123423632234§ = 65280;
               }
            }
            else if(_loc4_ > 15)
            {
               this.§final function else§.§5214235724235737123423632234§ = this.§catch switch else§(15741974,16776960,(_loc4_ - 15) / 15);
            }
            else
            {
               this.§final function else§.§5214235724235737123423632234§ = 15741974;
            }
            this.§final function else§.text = Math.round(_loc4_).toString();
            this.§final function else§.x = 48 - this.§final function else§.width;
            this.§5214231249231262123423632234§ = _loc2_;
            this.§521423140052314018123423632234§ = 0;
            _loc3_ = §521423164132316426123423632234§.§521423189022318915123423632234§();
            if(_loc3_ > 999)
            {
               _loc3_ = 999;
            }
            if(_loc3_ < 200)
            {
               if(_loc3_ > 100)
               {
                  this.§521423154742315487123423632234§.§5214235724235737123423632234§ = this.§catch switch else§(65280,16776960,(_loc3_ - 100) / 100);
               }
               else
               {
                  this.§521423154742315487123423632234§.§5214235724235737123423632234§ = 65280;
               }
            }
            else if(_loc3_ < 500)
            {
               this.§521423154742315487123423632234§.§5214235724235737123423632234§ = this.§catch switch else§(16776960,15741974,(_loc3_ - 200) / 300);
            }
            else
            {
               this.§521423154742315487123423632234§.§5214235724235737123423632234§ = 15741974;
            }
            this.§521423154742315487123423632234§.text = _loc3_.toString();
            this.§521423154742315487123423632234§.x = 48 - this.§521423154742315487123423632234§.width;
         }
      }
      
      private function §dynamic switch final§(param1:Event) : void
      {
         stage.removeEventListener("enterFrame",this.§package set get§);
         stage.removeEventListener("resize",this.§use use static§);
         removeEventListener("removedFromStage",this.§dynamic switch final§);
         addEventListener("addedToStage",this.§const use use§);
      }
      
      private function §const use use§(param1:Event) : void
      {
         this.§5214239350239363123423632234§();
         this.§use use static§();
         this.§521423140052314018123423632234§ = 0;
         this.§5214231249231262123423632234§ = getTimer();
         stage.addEventListener("enterFrame",this.§package set get§);
         stage.addEventListener("resize",this.§use use static§);
         removeEventListener("addedToStage",this.§const use use§);
         addEventListener("removedFromStage",this.§dynamic switch final§);
      }
      
      private function §catch switch else§(param1:int, param2:int, param3:Number) : int
      {
         var _loc8_:int = param1 >> 16 & 0xFF;
         var _loc6_:int = param1 >> 8 & 0xFF;
         var _loc9_:int = param1 & 0xFF;
         var _loc4_:int = param2 >> 16 & 0xFF;
         var _loc7_:int = param2 >> 8 & 0xFF;
         var _loc5_:int = param2 & 0xFF;
         if(param3 > 1)
         {
            param3 = 1;
         }
         return _loc8_ + (_loc4_ - _loc8_) * param3 << 16 | _loc6_ + (_loc7_ - _loc6_) * param3 << 8 | int(_loc9_ + (_loc5_ - _loc9_) * param3);
      }
      
      private function §use use static§(param1:Event = null) : void
      {
         x = stage.stageWidth / §dynamic const break§.§5214231303231316123423632234§ - 58;
         y = stage.stageHeight / §dynamic const break§.§5214231303231316123423632234§ - 93;
         this.§final function else§.x = 48 - this.§final function else§.width;
         this.§521423154742315487123423632234§.x = 48 - this.§521423154742315487123423632234§.width;
      }
      
      public function §break function break§(param1:int) : void
      {
         this.§521423141222314135123423632234§ = param1;
         this.§use finally false§ = Math.max(8,param1 / 6);
      }
   }
}

