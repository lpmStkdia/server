package §do package throw§
{
   import §5214238500238513123423632234§.*;
   
   public class §521423114682311481123423632234§
   {
      
      private var §521423137422313755123423632234§:Vector.<§5214235116235129123423632234§> = new Vector.<§5214235116235129123423632234§>();
      
      private var §5214239166239179123423632234§:int;
      
      private var §521423132452313258123423632234§:Boolean;
      
      private const §override override§:Vector.<§5214237692237705123423632234§> = new Vector.<§5214237692237705123423632234§>();
      
      public function §521423114682311481123423632234§()
      {
         super();
      }
      
      public function render(param1:int, param2:int) : void
      {
         var _loc4_:int = 0;
         var _loc3_:§5214235116235129123423632234§ = null;
         this.§521423132452313258123423632234§ = true;
         while(_loc4_ < this.§5214239166239179123423632234§)
         {
            _loc3_ = this.§521423137422313755123423632234§[_loc4_];
            _loc3_.render(param1,param2);
            _loc4_++;
         }
         this.§521423132452313258123423632234§ = false;
         this.§521423123442312357123423632234§();
      }
      
      public function §5214235651235664123423632234§(param1:§5214235116235129123423632234§) : void
      {
         var _loc2_:int = 0;
         if(this.§521423132452313258123423632234§)
         {
            this.§override override§[§override override§.length] = new §import switch native§(this,param1);
         }
         else
         {
            _loc2_ = this.§521423137422313755123423632234§.indexOf(param1);
            if(_loc2_ >= 0)
            {
               this.§521423137422313755123423632234§[_loc2_] = this.§521423137422313755123423632234§[--this.§5214239166239179123423632234§];
               this.§521423137422313755123423632234§[this.§5214239166239179123423632234§] = null;
            }
         }
      }
      
      private function §521423123442312357123423632234§() : void
      {
         var _loc1_:§5214237692237705123423632234§ = null;
         while(true)
         {
            _loc1_ = this.§override override§.pop();
            if(_loc1_ == null)
            {
               break;
            }
            _loc1_.§implements function const§();
         }
      }
      
      public function §with catch return§(param1:§5214235116235129123423632234§) : void
      {
         if(this.§521423132452313258123423632234§)
         {
            this.§override override§[§override override§.length] = new §521423173222317335123423632234§(this,param1);
         }
         else if(this.§521423137422313755123423632234§.indexOf(param1) < 0)
         {
            this.§521423137422313755123423632234§[this.§5214239166239179123423632234§++] = param1;
         }
      }
   }
}

