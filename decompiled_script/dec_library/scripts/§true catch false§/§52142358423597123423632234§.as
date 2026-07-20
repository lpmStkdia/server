package §true catch false§
{
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.display3D.Context3D;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.setTimeout;
   
   public class §52142358423597123423632234§ extends EventDispatcher
   {
      
      public static var §5214232292232305123423632234§:Boolean;
      
      public static var §try const const§:Boolean;
      
      public static var §package use include§:String;
      
      private var stage:Stage;
      
      public function §52142358423597123423632234§(param1:Stage)
      {
         super();
         this.stage = param1;
      }
      
      public function §5214234215234228123423632234§() : void
      {
         if(this.§default switch do§())
         {
            this.§5214236087236100123423632234§();
         }
         else
         {
            this.§5214232542232555123423632234§();
         }
      }
      
      private function §super finally break§() : Stage3D
      {
         return this.stage.stage3Ds[0];
      }
      
      private function §5214233373233386123423632234§() : void
      {
         dispatchEvent(new Event("complete"));
      }
      
      private function §5214236087236100123423632234§() : void
      {
         var _loc1_:Stage3D = this.§super finally break§();
         _loc1_.addEventListener("context3DCreate",this.§5214237831237844123423632234§);
         _loc1_.addEventListener("error",this.§implements while for§);
         _loc1_.requestContext3DMatchingProfiles(new <String>["baselineExtended","baseline","baselineConstrained"]);
      }
      
      private function §521423117602311773123423632234§() : void
      {
         var _loc1_:Stage3D = this.§super finally break§();
         _loc1_.removeEventListener("context3DCreate",this.§5214237831237844123423632234§);
         _loc1_.removeEventListener("context3DCreate",this.§set package false§);
         _loc1_.removeEventListener("error",this.§implements while for§);
      }
      
      private function §implements while for§(param1:ErrorEvent) : void
      {
         this.§521423117602311773123423632234§();
         this.§5214233373233386123423632234§();
      }
      
      private function §set package false§(param1:Event) : void
      {
         this.§521423117602311773123423632234§();
         this.§import while native§();
         this.§5214233373233386123423632234§();
      }
      
      private function §import while native§() : void
      {
         var _loc3_:Stage3D = this.§super finally break§();
         var _loc1_:Context3D = _loc3_.context3D;
         var _loc2_:String = _loc1_.driverInfo;
         §package use include§ = _loc1_.profile;
         §5214232292232305123423632234§ = _loc2_.toLowerCase().indexOf("software") == -1;
         §try const const§ = §package use include§ == "baselineConstrained";
         _loc1_.dispose();
      }
      
      private function §5214237831237844123423632234§(param1:Event) : void
      {
         this.§521423117602311773123423632234§();
         this.§import while native§();
         if(!§5214232292232305123423632234§ && this.§final var const§())
         {
            this.§521423159722315985123423632234§();
         }
         else
         {
            this.§5214233373233386123423632234§();
         }
      }
      
      private function §5214232542232555123423632234§() : void
      {
         setTimeout(this.§5214233373233386123423632234§,0);
      }
      
      private function §final var const§() : Boolean
      {
         return true;
      }
      
      private function §521423159722315985123423632234§() : void
      {
         §try const const§ = true;
         var _loc1_:Stage3D = this.§super finally break§();
         _loc1_.addEventListener("context3DCreate",this.§set package false§);
         _loc1_.addEventListener("error",this.§implements while for§);
         _loc1_.requestContext3D("auto","baselineConstrained");
      }
      
      private function §default switch do§() : Boolean
      {
         return true;
      }
   }
}

