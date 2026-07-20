package §do package throw§
{
   import alternativa.engine3d.core.Camera3D;
   
   public class §import default§
   {
      
      private var color:int;
      
      private var §5214233592233605123423632234§:Number;
      
      private var §with use return§:Number;
      
      private var §5214236539236552123423632234§:Number;
      
      private var §const catch continue§:Camera3D;
      
      public function §import default§(param1:Camera3D)
      {
         super();
         this.§const catch continue§ = param1;
      }
      
      public function §521423119392311952123423632234§() : void
      {
         this.§const catch continue§.fogNear = 0;
         this.§const catch continue§.fogFar = 1000000;
         this.§const catch continue§.fogAlpha = 0;
      }
      
      public function §throw set get§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.color = param1;
         this.§5214233592233605123423632234§ = param2;
         this.§with use return§ = param3;
         this.§5214236539236552123423632234§ = param4;
      }
      
      public function enable() : void
      {
         if(this.color != 0)
         {
            this.§const catch continue§.fogNear = this.§with use return§;
            this.§const catch continue§.fogFar = this.§5214236539236552123423632234§;
            this.§const catch continue§.fogAlpha = this.§5214233592233605123423632234§;
            this.§const catch continue§.fogColor = this.color;
         }
      }
   }
}

