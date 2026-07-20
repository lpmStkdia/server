package §5214238500238513123423632234§
{
   import §521423143792314392123423632234§.§521423120902312103123423632234§;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.PerformanceController;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §return super super§ extends PerformanceController
   {
      
      public static var §521423167652316778123423632234§:§521423120902312103123423632234§;
      
      private var §521423141272314140123423632234§:Boolean = false;
      
      public function §return super super§()
      {
         super();
      }
      
      private function §return switch switch§(param1:Event) : void
      {
         block = true;
      }
      
      private function §null finally use§(param1:Event) : void
      {
         block = false;
      }
      
      private function §5214239350239363123423632234§() : void
      {
         if(!this.§521423141272314140123423632234§)
         {
            addFeature("shadows",0.2,true);
            addFeature("shadowMap",0.2,false);
            addFeature("deferredLighting",0.2,false);
            if(!§521423167652316778123423632234§.§null use§)
            {
               addFeature("fog",0.2,true);
            }
            addFeature("softTransparency",0.2,false);
            addFeature("ssao",0.2,false);
            addFeature("antiAlias",0.2,false);
            this.§521423141272314140123423632234§ = true;
         }
      }
      
      public function §include const throw§(param1:Stage, param2:Camera3D, param3:String) : void
      {
         this.§5214239350239363123423632234§();
         param1.addEventListener("activate",this.§null finally use§);
         param1.addEventListener("deactivate",this.§return switch switch§);
         start(param1,param2,30,0.15,20,5,1,param3);
      }
      
      override public function stop() : void
      {
         this.stage.removeEventListener("activate",this.§null finally use§);
         this.stage.removeEventListener("deactivate",this.§return switch switch§);
         super.stop();
      }
   }
}

