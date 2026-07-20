package §catch package dynamic§
{
   import §5214239456239469123423632234§.§521423102312310244123423632234§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.ColorTransform;
   
   public class §521423120642312077123423632234§ extends EventDispatcher
   {
      
      public static var §try while package§:§521423102312310244123423632234§;
      
      private const §521423135512313564123423632234§:Number = 1.25;
      
      private var §521423140712314084123423632234§:int;
      
      private var §break set dynamic§:Number;
      
      private var §5214239534239547123423632234§:int;
      
      private var §521423167982316811123423632234§:DisplayObject;
      
      public function §521423120642312077123423632234§()
      {
         super();
      }
      
      public static function §false switch in§(param1:DisplayObject) : void
      {
         var _loc2_:§521423120642312077123423632234§ = new §521423120642312077123423632234§();
         _loc2_.§false switch in§(param1);
      }
      
      public function §false switch in§(param1:DisplayObject) : void
      {
         this.§521423140712314084123423632234§ = Math.ceil(§try while package§.§finally var false§() * 1.25);
         this.§break set dynamic§ = 4 / (this.§521423140712314084123423632234§ * this.§521423140712314084123423632234§);
         this.§521423167982316811123423632234§ = param1;
         param1.addEventListener("enterFrame",this.§521423101942310207123423632234§);
         this.§5214239534239547123423632234§ = 0;
      }
      
      public function §function for var§() : void
      {
         if(this.§521423167982316811123423632234§ != null)
         {
            this.§each function super§(this.§521423167982316811123423632234§,1);
            this.§521423167982316811123423632234§.removeEventListener("enterFrame",this.§521423101942310207123423632234§);
            this.§521423167982316811123423632234§ = null;
         }
      }
      
      private function §521423101942310207123423632234§(param1:Event) : void
      {
         ++this.§5214239534239547123423632234§;
         if(this.§5214239534239547123423632234§ == this.§521423140712314084123423632234§)
         {
            this.§function for var§();
            dispatchEvent(new Event("complete"));
            return;
         }
         var _loc2_:Number = 1 - this.§break set dynamic§ * (this.§5214239534239547123423632234§ * (this.§5214239534239547123423632234§ - this.§521423140712314084123423632234§));
         this.§each function super§(this.§521423167982316811123423632234§,_loc2_);
      }
      
      private function §each function super§(param1:DisplayObject, param2:Number) : void
      {
         param1.transform.colorTransform = new ColorTransform(param2,param2,param2);
      }
   }
}

