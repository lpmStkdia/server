package §521423158132315826123423632234§
{
   import §5214236812236825123423632234§.§521423165792316592123423632234§;
   import §5214236812236825123423632234§.§5214236902236915123423632234§;
   import §continue switch case§.§dynamic const break§;
   import §continue switch case§.§each var else§;
   import §extends use break§.§521423125792312592123423632234§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class §5214236180236193123423632234§ implements §5214236902236915123423632234§
   {
      
      public static var §class function package§:§each var else§;
      
      public static var §521423137302313743123423632234§:§521423125792312592123423632234§;
      
      private var §5214239499239512123423632234§:Vector.<§521423165792316592123423632234§>;
      
      private var §521423104872310500123423632234§:Vector.<§521423165792316592123423632234§>;
      
      private var §521423133042313317123423632234§:Boolean;
      
      public function §5214236180236193123423632234§()
      {
         super();
         this.§5214239499239512123423632234§ = new Vector.<§521423165792316592123423632234§>();
         this.§521423104872310500123423632234§ = new Vector.<§521423165792316592123423632234§>();
         §class function package§.stage.addEventListener("resize",this.§use use static§);
      }
      
      private function §521423150602315073123423632234§() : void
      {
         var _loc1_:§521423165792316592123423632234§ = null;
         var _loc2_:DisplayObject = null;
         for each(_loc1_ in this.§521423104872310500123423632234§)
         {
            _loc2_ = DisplayObject(_loc1_);
            if(_loc2_.parent != null)
            {
               _loc2_.parent.removeChild(_loc2_);
            }
         }
      }
      
      public function §5214238977238990123423632234§() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:int = §class function package§.stage.stageWidth / §dynamic const break§.§5214231303231316123423632234§;
         var _loc3_:int = 0;
         while(_loc3_ < this.§521423104872310500123423632234§.length)
         {
            _loc1_ = DisplayObject(this.§521423104872310500123423632234§[_loc3_]);
            _loc1_.x = _loc2_ - _loc1_.width - 10;
            _loc1_.y = §class function package§.stage.stageHeight / §dynamic const break§.§5214231303231316123423632234§ - _loc1_.height - 10;
            _loc2_ = _loc1_.x;
            _loc3_++;
         }
         §521423137302313743123423632234§.§5214236916236929123423632234§(_loc2_);
      }
      
      private function §use use static§(param1:Event) : void
      {
         this.§5214238977238990123423632234§();
      }
      
      public function §5214239350239363123423632234§() : void
      {
         var _loc1_:§521423165792316592123423632234§ = null;
         if(!this.§521423133042313317123423632234§)
         {
            this.§521423133042313317123423632234§ = true;
            for each(_loc1_ in this.§5214239499239512123423632234§)
            {
               this.§521423104872310500123423632234§.push(_loc1_);
            }
            this.§5214239499239512123423632234§ = null;
         }
         this.§5214238977238990123423632234§();
      }
      
      public function §throw for finally§(param1:§521423165792316592123423632234§) : void
      {
         this.§5214238977238990123423632234§();
      }
      
      public function §5214232819232832123423632234§(param1:§521423165792316592123423632234§) : void
      {
         this.§521423104872310500123423632234§.push(param1);
         param1.§5214236794236807123423632234§(this);
      }
      
      public function §false use var§() : void
      {
         §class function package§.stage.removeEventListener("resize",this.§use use static§);
         this.§521423150602315073123423632234§();
      }
      
      public function §5214235262235275123423632234§(param1:§521423165792316592123423632234§) : void
      {
         if(this.§521423133042313317123423632234§)
         {
            this.§521423104872310500123423632234§[§521423104872310500123423632234§.length] = param1;
         }
         else
         {
            this.§5214239499239512123423632234§[§5214239499239512123423632234§.length] = param1;
         }
         param1.§5214236794236807123423632234§(this);
         this.§throw for finally§(param1);
      }
   }
}

