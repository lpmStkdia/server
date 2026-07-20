package §5214232102232115123423632234§
{
   import §521423165552316568123423632234§.§default var function§;
   import §static catch do§.§static set in§;
   
   public class §521423112682311281123423632234§ implements §521423174022317415123423632234§
   {
      
      private var §5214232564232577123423632234§:Vector.<Array>;
      
      public function §521423112682311281123423632234§()
      {
         super();
         this.§5214239566239579123423632234§();
      }
      
      public function §override set in§(param1:String) : String
      {
         var _loc5_:int = 0;
         var _loc3_:RegExp = null;
         var _loc2_:int = 0;
         var _loc4_:int = int(this.§5214232564232577123423632234§.length);
         _loc5_ = 0;
         while(_loc5_ < _loc4_)
         {
            _loc3_ = this.§5214232564232577123423632234§[_loc5_][0];
            _loc2_ = param1.search(_loc3_);
            if(_loc2_ > -1)
            {
               param1 = param1.replace(_loc3_,"<u><a href=\'" + this.§5214232564232577123423632234§[_loc5_][2] + "\' target=\'_blank\'>" + this.§5214232564232577123423632234§[_loc5_][1] + "</a></u>");
            }
            _loc5_++;
         }
         return param1;
      }
      
      private function §5214239566239579123423632234§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:§static set in§ = §static set in§(§default var function§.§import use include§().§5214231532231545123423632234§(§static set in§));
         this.§5214232564232577123423632234§ = new <Array>[_loc3_.§521423157602315773123423632234§("CHAT_SHARP_RULES").split("|"),_loc3_.§521423157602315773123423632234§("CHAT_SHARP_WIKI").split("|"),_loc3_.§521423157602315773123423632234§("CHAT_SHARP_TELEGRAM").split("|"),_loc3_.§521423157602315773123423632234§("CHAT_SHARP_YOUTUBE").split("|"),_loc3_.§521423157602315773123423632234§("CHAT_SHARP_VK").split("|"),"discord|Discord|https://discord.com/invite/protanki".split("|")];
         var _loc1_:int = int(this.§5214232564232577123423632234§.length);
         _loc2_ = 0;
         while(_loc2_ < _loc1_)
         {
            this.§5214232564232577123423632234§[_loc2_][0] = new RegExp("#" + this.§5214232564232577123423632234§[_loc2_][0],"gi");
            _loc2_++;
         }
      }
   }
}

