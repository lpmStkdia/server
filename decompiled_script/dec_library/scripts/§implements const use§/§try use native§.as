package §implements const use§
{
   import §521423142652314278123423632234§.§const switch continue§;
   import §5214232264232277123423632234§.§5214237893237906123423632234§;
   import §5214234664234677123423632234§.§5214232614232627123423632234§;
   import §5214237746237759123423632234§.§case switch else§;
   import §catch set implements§.§521423109732310986123423632234§;
   import §catch set implements§.§521423127512312764123423632234§;
   import §extends while true§.§5214239019239032123423632234§;
   import §extends while true§.§const package break§;
   import §extends while true§.§switch package switch§;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.clearTimeout;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import §in while true§.§extends use catch§;
   import §with switch final§.§in finally get§;
   
   public class §try use native§ extends §5214239019239032123423632234§ implements §switch package switch§, §in finally get§, §521423127512312764123423632234§, §521423109732310986123423632234§
   {
      
      public static var §521423181972318210123423632234§:§case switch else§;
      
      public static var §5214234610234623123423632234§:§const switch continue§;
      
      private const §static var try§:int = 86400;
      
      private var data:Dictionary;
      
      private var §use native§:Dictionary;
      
      public function §try use native§()
      {
         super();
      }
      
      private function §set super false§(param1:Event) : void
      {
         this.§true for catch§(§521423181972318210123423632234§.§5214231844231857123423632234§,§5214234610234623123423632234§.§5214239830239843123423632234§());
      }
      
      private function §521423135222313535123423632234§(param1:String) : void
      {
         this.§true for catch§(param1,false);
         this.§52142366623679123423632234§(param1);
      }
      
      public function §521423116522311665123423632234§(param1:§const package break§) : void
      {
         this.§override for continue§(param1);
      }
      
      public function §null function do§(param1:int) : void
      {
         §5214234610234623123423632234§.§null function do§(param1);
      }
      
      public function §52142366623679123423632234§(param1:String) : void
      {
         if(param1 in this.§use native§)
         {
            clearTimeout(this.§use native§[param1]);
            delete this.§use native§[param1];
         }
         delete this.data[param1];
      }
      
      public function §else for case§() : void
      {
         var _loc1_:Number = 0;
         for each(_loc1_ in this.§use native§)
         {
            clearTimeout(_loc1_);
         }
         this.§use native§ = null;
         this.data = null;
         §5214234610234623123423632234§.removeEventListener("change",this.§set super false§);
         §5214234610234623123423632234§.§false use var§();
      }
      
      private function §true for catch§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§5214232614232627123423632234§ = null;
         var _loc4_:§extends use catch§ = §extends use catch§(§521423100662310079123423632234§.§if function native§(§5214237893237906123423632234§.§switch try§(734214586,-721397289)));
         if(_loc4_.§521423159532315966123423632234§(param1))
         {
            _loc3_ = _loc4_.§extends set while§(param1);
            _loc3_.§default use while§(param2,param1);
         }
      }
      
      public function §finally package break§() : void
      {
         this.data = new Dictionary();
         this.§use native§ = new Dictionary();
         §5214234610234623123423632234§.§null function do§(§521423127052312718123423632234§().§package var const§);
         §5214234610234623123423632234§.addEventListener("change",this.§set super false§);
      }
      
      private function §override for continue§(param1:§const package break§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = param1.§5214231844231857123423632234§;
         if(param1.§5214233734233747123423632234§ > 0 && _loc3_ in this.data)
         {
            return;
         }
         var _loc4_:Boolean = param1.§5214233734233747123423632234§ > 0;
         if(_loc4_ && param1.§5214233734233747123423632234§ < 86400)
         {
            _loc2_ = param1.§5214233734233747123423632234§ * 1000 + getTimer();
            this.§use native§[_loc3_] = setTimeout(this.§521423135222313535123423632234§,param1.§5214233734233747123423632234§ * 1000,_loc3_);
         }
         else
         {
            _loc2_ = 86400 * 1000 + getTimer();
         }
         if(_loc4_)
         {
            this.data[_loc3_] = _loc2_;
         }
         else
         {
            this.§52142366623679123423632234§(_loc3_);
         }
         this.§true for catch§(_loc3_,_loc4_);
      }
      
      public function §5214231643231656123423632234§(param1:String, param2:§5214232614232627123423632234§) : void
      {
         if(param1 in this.data)
         {
            param2.§default use while§(getTimer() < this.data[param1]);
         }
      }
   }
}

