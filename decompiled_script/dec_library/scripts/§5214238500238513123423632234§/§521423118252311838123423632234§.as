package §5214238500238513123423632234§
{
   import §521423151082315121123423632234§.§5214233444233457123423632234§;
   import §521423151082315121123423632234§.§finally use default§;
   import §default package continue§.§521423186702318683123423632234§;
   import §default package continue§.§5214237044237057123423632234§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §521423118252311838123423632234§
   {
      
      private const §5214235720235733123423632234§:§521423186702318683123423632234§ = new §5214237044237057123423632234§(15000);
      
      private const §catch static§:§521423186702318683123423632234§ = new §5214237044237057123423632234§(300);
      
      private const §null switch implements§:§521423186702318683123423632234§ = new §5214237044237057123423632234§(3);
      
      private const §include super dynamic§:§521423186702318683123423632234§ = new §5214237044237057123423632234§(0);
      
      private var §521423170102317023123423632234§:§finally use default§;
      
      private var §throw static§:Timer;
      
      private var §521423993231006123423632234§:int;
      
      private var §521423160792316092123423632234§:Number;
      
      private var §5214233010233023123423632234§:Array = [];
      
      public function §521423118252311838123423632234§(param1:§finally use default§)
      {
         super();
         this.§521423170102317023123423632234§ = param1;
         this.§521423993231006123423632234§ = getTimer();
         this.§521423160792316092123423632234§ = new Date().time;
         this.§throw static§ = new Timer(this.§5214235720235733123423632234§.§5214232925232938123423632234§());
         this.§throw static§.addEventListener("timer",this.§override const package§);
         this.§throw static§.start();
      }
      
      private function §override const package§(param1:TimerEvent) : void
      {
         var _loc2_:int = getTimer();
         var _loc4_:Number = new Date().time;
         var _loc3_:Number = _loc2_ - this.§521423993231006123423632234§ - _loc4_ + this.§521423160792316092123423632234§;
         if((_loc3_ > 0 ? _loc3_ : -_loc3_) > this.§catch static§.§5214232925232938123423632234§())
         {
            this.§5214233010233023123423632234§[§5214233010233023123423632234§.length] = _loc3_;
            this.§include super dynamic§.§native switch case§(this.§include super dynamic§.§5214232925232938123423632234§() + 1);
            if(this.§include super dynamic§.§5214232925232938123423632234§() >= this.§null switch implements§.§5214232925232938123423632234§())
            {
               this.§function for var§();
               this.§521423170102317023123423632234§.§521423121592312172123423632234§(new §5214233444233457123423632234§(this.§5214233010233023123423632234§));
            }
         }
         else
         {
            this.§include super dynamic§.§native switch case§(0);
            this.§5214233010233023123423632234§.length = 0;
         }
         this.§521423993231006123423632234§ = _loc2_;
         this.§521423160792316092123423632234§ = _loc4_;
      }
      
      public function §function for var§() : void
      {
         this.§throw static§.stop();
      }
   }
}

