package §5214236465236478123423632234§
{
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §native switch package§
   {
      
      public static var §do finally var§:§native switch package§;
      
      private var §throw static§:Timer;
      
      private var §set package else§:Dictionary;
      
      private var §521423188682318881123423632234§:int;
      
      private var visible:Boolean;
      
      public function §native switch package§(param1:int)
      {
         super();
         this.§set package else§ = new Dictionary();
         this.§throw static§ = new Timer(param1);
         this.§throw static§.addEventListener("timer",this.§override const package§);
      }
      
      public static function §5214239350239363123423632234§(param1:int) : void
      {
         if(§do finally var§ == null)
         {
            §do finally var§ = new §native switch package§(param1);
         }
      }
      
      public function §null use case§(param1:§continue function do§) : void
      {
         if(this.§set package else§[param1] == null)
         {
            return;
         }
         delete this.§set package else§[param1];
         --this.§521423188682318881123423632234§;
         if(this.§521423188682318881123423632234§ == 0)
         {
            this.§throw static§.stop();
            this.visible = true;
         }
      }
      
      private function §override const package§(param1:TimerEvent) : void
      {
         if(this.§521423188682318881123423632234§ == 0)
         {
            return;
         }
         this.visible = !this.visible;
         for each(var _loc2_ in this.§set package else§)
         {
            _loc2_.§const while const§(this.visible);
         }
      }
      
      public function §521423144342314447123423632234§(param1:§continue function do§) : void
      {
         if(this.§set package else§[param1] != null)
         {
            return;
         }
         this.§set package else§[param1] = param1;
         ++this.§521423188682318881123423632234§;
         if(this.§521423188682318881123423632234§ == 1)
         {
            this.§throw static§.start();
         }
      }
   }
}

