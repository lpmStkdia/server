package §5214239456239469123423632234§
{
   import §continue switch case§.§each var else§;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §final for get§ implements §521423102312310244123423632234§
   {
      
      public static var §class function package§:§each var else§;
      
      private var §521423100092310022123423632234§:Number;
      
      private var §5214235591235604123423632234§:Number;
      
      private var §if while import§:int;
      
      private var §521423140712314084123423632234§:int;
      
      private var §null finally set§:Boolean;
      
      private var §521423194022319415123423632234§:Boolean;
      
      public function §final for get§()
      {
         super();
      }
      
      private function §return switch switch§(param1:Event) : void
      {
         if(param1.target == §class function package§.stage)
         {
            §class function package§.stage.addEventListener("activate",this.§null finally use§);
            this.§null finally set§ = true;
         }
      }
      
      public function §finally var false§() : Number
      {
         return this.§521423100092310022123423632234§;
      }
      
      private function §521423138772313890123423632234§(param1:Number) : void
      {
         this.§521423100092310022123423632234§ = param1;
         this.§5214235591235604123423632234§ = 1000 / param1;
      }
      
      private function §package set get§(param1:Event) : void
      {
         if(this.§null finally set§)
         {
            return;
         }
         if(this.§521423194022319415123423632234§)
         {
            this.§if while import§ = getTimer();
            this.§521423140712314084123423632234§ = 0;
            this.§521423194022319415123423632234§ = false;
            return;
         }
         var _loc2_:int = getTimer();
         ++this.§521423140712314084123423632234§;
         if(_loc2_ - this.§if while import§ > 2000)
         {
            this.§521423138772313890123423632234§(1000 * this.§521423140712314084123423632234§ / (_loc2_ - this.§if while import§));
            this.§if while import§ = _loc2_;
            this.§521423140712314084123423632234§ = 0;
         }
      }
      
      private function §null finally use§(param1:Event) : void
      {
         if(param1.target == §class function package§.stage)
         {
            §class function package§.stage.removeEventListener("activate",this.§null finally use§);
            this.§null finally set§ = false;
            this.§521423194022319415123423632234§ = true;
         }
      }
      
      public function §catch package default§() : Number
      {
         return this.§5214235591235604123423632234§;
      }
      
      public function §else finally continue§() : void
      {
         this.§521423138772313890123423632234§(§class function package§.stage.frameRate);
         §class function package§.stage.addEventListener("enterFrame",this.§package set get§);
         §class function package§.stage.addEventListener("deactivate",this.§return switch switch§);
         this.§null finally set§ = false;
         this.§521423194022319415123423632234§ = true;
      }
   }
}

