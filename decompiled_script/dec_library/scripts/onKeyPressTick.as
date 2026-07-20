package
{
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   
   function onKeyPressTick(e:TimerEvent) : void
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

import flash.events.KeyboardEvent;
import flash.events.TimerEvent;
import flash.utils.Timer;

