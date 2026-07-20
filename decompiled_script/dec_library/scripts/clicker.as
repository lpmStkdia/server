package
{
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class clicker extends Sprite
   {
      
      private var isActive:Boolean = false;
      
      private var keyTimer:Timer;
      
      private var keyIndex:int = 0;
      
      private var keyCodes:Array = [49,50,51,52,53];
      
      public function clicker()
      {
         super();
         if(stage)
         {
            init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,init);
         }
      }
      
      private function init(e:Event = null) : void
      {
         if(e)
         {
            removeEventListener(Event.ADDED_TO_STAGE,init);
         }
         keyTimer = new Timer(1,0);
         keyTimer.addEventListener(TimerEvent.TIMER,onKeyPressTick);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,onToggleKey);
         trace("Clicker system initialized. Press F8 to start.");
      }
      
      private function onToggleKey(e:KeyboardEvent) : void
      {
         if(e.keyCode == Keyboard.F8)
         {
            isActive = !isActive;
            if(isActive)
            {
               trace("Auto-clicker STARTED");
               keyIndex = 0;
               keyTimer.start();
            }
            else
            {
               trace("Auto-clicker STOPPED");
               keyTimer.stop();
            }
         }
      }
      
      private function onKeyPressTick(e:TimerEvent) : void
      {
         var codeToPress:int = int(keyCodes[keyIndex]);
         var downEvent:KeyboardEvent = new KeyboardEvent(KeyboardEvent.KEY_DOWN,true,false,codeToPress,codeToPress);
         stage.dispatchEvent(downEvent);
         var upEvent:KeyboardEvent = new KeyboardEvent(KeyboardEvent.KEY_UP,true,false,codeToPress,codeToPress);
         stage.dispatchEvent(upEvent);
         ++keyIndex;
         if(keyIndex >= keyCodes.length)
         {
            keyIndex = 0;
         }
      }
   }
}

