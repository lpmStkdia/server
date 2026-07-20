package §static set override§
{
   import §521423150222315035123423632234§.§include use override§;
   import flash.display.Bitmap;
   import flash.errors.IllegalOperationError;
   
   public class §include switch for§ extends §include use override§
   {
      
      private var §5214239830239843123423632234§:Boolean = false;
      
      private var §5214231031231044123423632234§:Bitmap;
      
      public function §include switch for§()
      {
         super();
      }
      
      private function §521423187362318749123423632234§(param1:Bitmap) : void
      {
         if(this.§5214231031231044123423632234§ != null && this.§5214231031231044123423632234§.parent != null)
         {
            this.§5214231031231044123423632234§.parent.removeChild(this.§5214231031231044123423632234§);
         }
         this.§5214231031231044123423632234§ = param1;
         addChild(param1);
      }
      
      protected function §5214239118239131123423632234§(param1:int) : Bitmap
      {
         throw new IllegalOperationError();
      }
      
      public function §null package§(param1:int) : void
      {
         this.§5214239830239843123423632234§ = false;
         this.§521423187362318749123423632234§(this.§5214239118239131123423632234§(param1));
      }
      
      public function §true else§(param1:int) : void
      {
         if(this.§5214239830239843123423632234§)
         {
            this.§default use while§(param1);
         }
         else
         {
            this.§null package§(param1);
         }
      }
      
      public function §default use while§(param1:int) : void
      {
         this.§5214239830239843123423632234§ = true;
         this.§521423187362318749123423632234§(this.§with while true§(param1));
      }
      
      protected function §with while true§(param1:int) : Bitmap
      {
         throw new IllegalOperationError();
      }
      
      public function §5214239350239363123423632234§(param1:Boolean, param2:int) : void
      {
         if(param1)
         {
            this.§default use while§(param2);
         }
         else
         {
            this.§null package§(param2);
         }
      }
   }
}

