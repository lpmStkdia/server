package §class function true§
{
   import flash.events.ErrorEvent;
   
   public class §5214231297231310123423632234§ extends ErrorEvent
   {
      
      public static const §5214236507236520123423632234§:String = "loaderError";
      
      private var §521423193462319359123423632234§:String;
      
      public function §5214231297231310123423632234§(param1:String, param2:String, param3:String)
      {
         super(param1);
         this.text = param3;
         this.§521423193462319359123423632234§ = param2;
      }
      
      public function get §521423123272312340123423632234§() : String
      {
         return this.§521423193462319359123423632234§;
      }
      
      override public function toString() : String
      {
         return "[BatchTextureLoaderErrorEvent textureName=" + this.§521423193462319359123423632234§ + ", text=" + text + "]";
      }
   }
}

