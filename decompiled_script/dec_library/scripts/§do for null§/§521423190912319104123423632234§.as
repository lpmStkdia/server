package §do for null§
{
   import §break function in§.§521423176152317628123423632234§;
   import §continue switch case§.§each var else§;
   import flash.system.Capabilities;
   
   public class §521423190912319104123423632234§ implements §521423176152317628123423632234§
   {
      
      private static const §5214237450237463123423632234§:String = "StandAlone";
      
      private static const §5214235335235348123423632234§:String = "Desktop";
      
      private var §implements while continue§:§each var else§;
      
      private var §null while final§:Boolean;
      
      private var §521423128502312863123423632234§:Boolean;
      
      public function §521423190912319104123423632234§(param1:§each var else§)
      {
         super();
         this.§implements while continue§ = param1;
         this.§null while final§ = false;
         this.§521423128502312863123423632234§ = Capabilities.playerType == "StandAlone" || Capabilities.playerType == "Desktop";
      }
      
      public function §5214237204237217123423632234§() : Boolean
      {
         return this.§implements while continue§.stage.displayState == "fullScreenInteractive";
      }
      
      private function §class switch for§() : void
      {
         this.§implements while continue§.stage.displayState = "normal";
      }
      
      public function §5214236257236270123423632234§() : void
      {
         if(this.§5214237204237217123423632234§() && this.§5214239922239935123423632234§() && !this.§each switch const§())
         {
            this.§implements while continue§.stage.mouseLock = true;
         }
      }
      
      private function §5214239514239527123423632234§() : Boolean
      {
         return this.§implements while continue§.stage.displayState != "normal";
      }
      
      public function §each switch const§() : Boolean
      {
         return this.§null while final§;
      }
      
      public function §get native§() : Boolean
      {
         return this.§5214239514239527123423632234§() ? this.§implements while continue§.stage.mouseLock : false;
      }
      
      public function §521423153492315362123423632234§() : Boolean
      {
         return this.§521423128502312863123423632234§;
      }
      
      public function §5214239922239935123423632234§() : Boolean
      {
         if(Capabilities.version.charAt(0) == "A")
         {
            return false;
         }
         return true;
      }
      
      public function §5214236667236680123423632234§() : void
      {
         if(this.§implements while continue§.stage.displayState == "normal")
         {
            this.§5214235730235743123423632234§();
         }
         else
         {
            this.§class switch for§();
         }
      }
      
      private function §5214235730235743123423632234§() : void
      {
         if(this.§5214239922239935123423632234§())
         {
            this.§implements while continue§.stage.displayState = "fullScreenInteractive";
         }
      }
   }
}

