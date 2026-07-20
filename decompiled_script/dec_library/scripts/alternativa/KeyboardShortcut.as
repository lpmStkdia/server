package alternativa
{
   internal class KeyboardShortcut
   {
      
      public var keyCode:int;
      
      public var altKey:Boolean;
      
      public var ctrlKey:Boolean;
      
      public var shiftKey:Boolean;
      
      public function KeyboardShortcut(param1:int, param2:Boolean, param3:Boolean, param4:Boolean)
      {
         super();
         this.keyCode = param1;
         this.altKey = param2;
         this.ctrlKey = param3;
         this.shiftKey = param4;
      }
   }
}

