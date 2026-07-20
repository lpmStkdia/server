include "onToggleKey.as";
include "onKeyPressTick.as";

import flash.events.KeyboardEvent;
import flash.events.TimerEvent;
import flash.utils.Timer;

stage.addEventListener(KeyboardEvent.KEY_DOWN,onToggleKey);
keyTimer.addEventListener(TimerEvent.TIMER,onKeyPressTick);

