package §5214231749231762123423632234§
{
   import §521423111492311162123423632234§.§catch catch continue§;
   import §521423188792318892123423632234§.§do function else§;
   import §5214238500238513123423632234§.§521423124982312511123423632234§;
   import flash.events.Event;
   import flash.media.SoundChannel;
   import §while function break§.§521423139462313959123423632234§;
   import §while function break§.§521423152702315283123423632234§;
   
   public class §catch for native§ extends §521423139462313959123423632234§ implements §5214235173235186123423632234§
   {
      
      public static var §else set super§:§521423124982312511123423632234§;
      
      private var §finally package case§:§do function else§ = new §do function else§();
      
      private var §in var super§:§5214235807235820123423632234§;
      
      private var §break switch each§:int;
      
      private var §case function package§:int;
      
      private var §else var return§:SoundChannel;
      
      private var §5214233090233103123423632234§:Boolean = false;
      
      private var §5214233494233507123423632234§:Boolean = false;
      
      private var §5214237869237882123423632234§:§5214236487236500123423632234§;
      
      public function §catch for native§(param1:§521423152702315283123423632234§)
      {
         super(param1);
      }
      
      public static function §5214231870231883123423632234§(param1:§do function else§, param2:§5214235807235820123423632234§, param3:int = 0, param4:int = 0, param5:§5214236487236500123423632234§ = null) : §catch for native§
      {
         var _loc6_:§catch for native§ = §catch for native§(§else set super§.§in const class§().§include use do§(§catch for native§));
         _loc6_.§5214239350239363123423632234§(param1,param2,param3,param4,param5);
         return _loc6_;
      }
      
      public function §5214239350239363123423632234§(param1:§do function else§, param2:§5214235807235820123423632234§, param3:int = 0, param4:int = 0, param5:§5214236487236500123423632234§ = null) : void
      {
         this.§finally package case§.§521423188292318842123423632234§(param1);
         this.§in var super§ = param2;
         this.§break switch each§ = param3;
         this.§case function package§ = param4;
         this.§5214237869237882123423632234§ = param5;
         this.§5214233090233103123423632234§ = false;
         this.§5214233494233507123423632234§ = false;
      }
      
      public function §521423125142312527123423632234§(param1:§do function else§) : void
      {
         param1.x = this.§finally package case§.x;
         param1.y = this.§finally package case§.y;
         param1.§521423155722315585123423632234§ = this.§finally package case§.§521423155722315585123423632234§;
      }
      
      public function §5214233338233351123423632234§() : void
      {
         this.§5214233090233103123423632234§ = false;
      }
      
      public function §5214233261233274123423632234§(param1:int, param2:§catch catch continue§) : void
      {
         this.§break switch each§ -= param1;
         if(this.§break switch each§ > 0)
         {
            return;
         }
         if(!this.§5214233494233507123423632234§)
         {
            this.§5214233494233507123423632234§ = true;
            this.§else var return§ = this.§in var super§.§5214233261233274123423632234§(this.§case function package§,1);
            if(this.§else var return§ == null)
            {
               return;
            }
            this.§else var return§.addEventListener("soundComplete",this.§521423105552310568123423632234§);
         }
         this.§in var super§.§5214235070235083123423632234§(param2.§finally package case§,this.§finally package case§,param2.§get const each§);
      }
      
      public function §false use var§() : void
      {
         §5214235807235820123423632234§.§false use var§(this.§in var super§);
         this.§in var super§ = null;
         this.§521423105552310568123423632234§(null);
         if(this.§5214237869237882123423632234§ != null)
         {
            this.§5214237869237882123423632234§.§521423172552317268123423632234§(this);
            this.§5214237869237882123423632234§ = null;
         }
         §override while override§();
      }
      
      public function get §5214231751231764123423632234§() : int
      {
         return this.§5214233090233103123423632234§ ? 1 : 0;
      }
      
      private function §521423105552310568123423632234§(param1:Event) : void
      {
         if(this.§else var return§ != null)
         {
            this.§else var return§.removeEventListener("soundComplete",this.§521423105552310568123423632234§);
         }
         this.§5214233090233103123423632234§ = false;
         this.§else var return§ = null;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(this.§5214233090233103123423632234§ == param1)
         {
            return;
         }
         if(!(this.§5214233090233103123423632234§ = param1))
         {
            this.§521423105552310568123423632234§(null);
         }
      }
   }
}

