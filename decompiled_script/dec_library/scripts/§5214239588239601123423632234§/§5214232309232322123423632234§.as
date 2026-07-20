package §5214239588239601123423632234§
{
   import §5214238500238513123423632234§.§521423124982312511123423632234§;
   import §do package throw§.§5214235116235129123423632234§;
   import flash.geom.ColorTransform;
   import §get package native§.§import switch include§;
   import §while function break§.§521423139462313959123423632234§;
   import §while function break§.§521423152702315283123423632234§;
   
   public class §5214232309232322123423632234§ extends §521423139462313959123423632234§ implements §5214235116235129123423632234§
   {
      
      public static var §else set super§:§521423124982312511123423632234§;
      
      public static var §5214238041238054123423632234§:§import switch include§;
      
      private static const §do set continue§:int = 2000;
      
      private static const §521423130642313077123423632234§:int = 300;
      
      private static const §521423136142313627123423632234§:int = 1700;
      
      private static const §521423193492319362123423632234§:int = 204;
      
      private static const §521423159382315951123423632234§:Number = 0.68;
      
      private static const §static while while§:Number = 0.12;
      
      private static const §false set break§:Number = 300;
      
      private static const §5214233512233525123423632234§:Number = 2;
      
      private var §switch use import§:§finally function package§;
      
      private var §case switch if§:ColorTransform = new ColorTransform();
      
      private var §521423179592317972123423632234§:int;
      
      private var §return use false§:int;
      
      public function §5214232309232322123423632234§(param1:§521423152702315283123423632234§)
      {
         var _loc2_:ColorTransform = §5214238041238054123423632234§.§final for continue§();
         if(_loc2_ != null)
         {
            this.§case switch if§.redMultiplier = _loc2_.redMultiplier;
            this.§case switch if§.greenMultiplier = _loc2_.greenMultiplier;
            this.§case switch if§.blueMultiplier = _loc2_.blueMultiplier;
         }
         super(param1);
      }
      
      public function §else finally continue§(param1:§finally function package§) : void
      {
         this.§switch use import§ = param1;
         this.§switch use import§.§try for return§(this.§case switch if§);
         this.§521423179592317972123423632234§ = 2000;
         this.§return use false§ = 0;
         §else set super§.§52142329523308123423632234§().§with catch return§(this,0);
      }
      
      private function §false use var§() : void
      {
         this.§switch use import§.§try for return§(null);
         this.§switch use import§.§5214238410238423123423632234§();
         this.§switch use import§.§override while override§();
         this.§switch use import§ = null;
         §else set super§.§52142329523308123423632234§().§5214235651235664123423632234§(this,0);
         §override while override§();
      }
      
      private function §521423175842317597123423632234§(param1:int) : void
      {
         var _loc2_:Number = param1 / 1000;
         this.§switch use import§.§5214239930239943123423632234§((300 * this.§521423179592317972123423632234§ / 2000 + 300 * 0.1) * _loc2_);
         this.§switch use import§.§5214239146239159123423632234§((2 * this.§521423179592317972123423632234§ / 2000 + 2 * 0.1) * _loc2_);
         if(this.§521423179592317972123423632234§ > 2000 - 300)
         {
            this.§return use false§ += 0.68 * param1;
            if(this.§return use false§ > 204)
            {
               this.§return use false§ = 204;
            }
         }
         else
         {
            this.§return use false§ -= 0.12 * param1;
            if(this.§return use false§ < 0)
            {
               this.§return use false§ = 0;
            }
         }
         this.§case switch if§.redOffset = this.§return use false§;
         this.§case switch if§.blueOffset = this.§return use false§;
         this.§case switch if§.greenOffset = this.§return use false§;
         if(this.§521423179592317972123423632234§ < 1700)
         {
            this.§switch use import§.§while use null§(this.§521423179592317972123423632234§ / 1700);
         }
         this.§521423179592317972123423632234§ -= param1;
      }
      
      public function render(param1:int, param2:int) : void
      {
         if(this.§521423179592317972123423632234§ > 0)
         {
            this.§521423175842317597123423632234§(param2);
         }
         else
         {
            this.§false use var§();
         }
      }
   }
}

