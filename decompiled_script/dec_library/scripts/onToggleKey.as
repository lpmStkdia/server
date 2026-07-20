package
{
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   function onToggleKey(e:KeyboardEvent) : void
   {
      if(e.keyCode == Keyboard.F8)
      {
         isActive = !isActive;
         if(isActive)
         {
            trace("Clicker STARTED");
            keyIndex = 0;
            keyTimer.start();
         }
         else
         {
            trace("Clicker STOPPED");
            keyTimer.stop();
         }
      }
   }
}

import flash.events.KeyboardEvent;
import flash.events.TimerEvent;
import flash.utils.Timer;

