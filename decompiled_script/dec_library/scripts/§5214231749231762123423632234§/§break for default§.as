package §5214231749231762123423632234§
{
   import §521423111492311162123423632234§.§catch catch continue§;
   import §521423113872311400123423632234§.§5214239833239846123423632234§;
   import alternativa.engine3d.lights.OmniLight;
   import §while function break§.§521423139462313959123423632234§;
   import §while function break§.§521423152702315283123423632234§;
   
   public class §break for default§ extends §521423139462313959123423632234§ implements §521423110902311103123423632234§
   {
      
      private var §5214239891239904123423632234§:OmniLight;
      
      private var §5214231249231262123423632234§:int;
      
      private var §false while break§:int;
      
      private var §521423141992314212123423632234§:Number;
      
      private var §521423172712317284123423632234§:§5214239833239846123423632234§;
      
      private var §521423111462311159123423632234§:Number;
      
      public function §break for default§(param1:§521423152702315283123423632234§)
      {
         super(param1);
         this.§5214239891239904123423632234§ = new OmniLight(0,0,0);
      }
      
      public function §5214233338233351123423632234§() : void
      {
         this.§5214239891239904123423632234§ = null;
      }
      
      public function §case catch native§(param1:§5214239833239846123423632234§) : void
      {
         this.§521423172712317284123423632234§ = param1;
         param1.§521423132922313305123423632234§(this.§5214239891239904123423632234§);
      }
      
      public function §false use var§() : void
      {
         if(this.§521423172712317284123423632234§ != null)
         {
            this.§521423172712317284123423632234§.§521423189332318946123423632234§(this.§5214239891239904123423632234§);
            this.§521423172712317284123423632234§ = null;
         }
         §override while override§();
      }
      
      public function §5214239350239363123423632234§(param1:OmniLight, param2:int, param3:Number = 0.45454545454545453) : void
      {
         this.§5214239891239904123423632234§.intensity = param1.intensity;
         this.§5214239891239904123423632234§.color = param1.color;
         this.§5214239891239904123423632234§.attenuationBegin = param1.attenuationBegin;
         this.§5214239891239904123423632234§.attenuationEnd = param1.attenuationEnd;
         this.§5214239891239904123423632234§.x = param1.x;
         this.§5214239891239904123423632234§.y = param1.y;
         this.§5214239891239904123423632234§.z = param1.z;
         this.§5214239891239904123423632234§.calculateBounds();
         this.§5214231249231262123423632234§ = param2;
         this.§521423141992314212123423632234§ = param3;
         this.§521423111462311159123423632234§ = param1.intensity;
         this.§false while break§ = 0;
      }
      
      public function §5214233261233274123423632234§(param1:int, param2:§catch catch continue§) : Boolean
      {
         this.§false while break§ += param1;
         this.§false while break§ = Math.min(this.§false while break§,this.§5214231249231262123423632234§);
         var _loc3_:Number = 1 - this.§false while break§ / this.§5214231249231262123423632234§;
         this.§5214239891239904123423632234§.intensity = this.§521423111462311159123423632234§ * Math.pow(_loc3_,this.§521423141992314212123423632234§);
         return this.§false while break§ < this.§5214231249231262123423632234§;
      }
   }
}

