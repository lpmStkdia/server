package
{
   import §521423150582315071123423632234§.§5214237881237894123423632234§;
   import §521423165552316568123423632234§.§default var function§;
   import §5214231835231848123423632234§.§5214232435232448123423632234§;
   import §5214231835231848123423632234§.§default var do§;
   import §5214232264232277123423632234§.§5214237893237906123423632234§;
   import §5214235020235033123423632234§.§521423106712310684123423632234§;
   import §5214236397236410123423632234§.§5214233215233228123423632234§;
   import §5214237675237688123423632234§.§default use with§;
   import §5214237675237688123423632234§.§override for set§;
   import alternativa.ClientConfigurator;
   import §class finally continue§.§case var default§;
   import §continue switch case§.§each var else§;
   import flash.display.DisplayObjectContainer;
   import flash.display.GradientType;
   import flash.display.InteractiveObject;
   import flash.display.LoaderInfo;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.events.TimerEvent;
   import flash.filters.DropShadowFilter;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   import §get for set§.§521423176292317642123423632234§;
   import §static catch do§.§5214239361239374123423632234§;
   import §static catch do§.§static set in§;
   import §true catch false§.§52142358423597123423632234§;
   import §true use var§.§null finally in§;
   
   public class Game extends Sprite
   {
      
      private static const OVERLAY_WIDTH:int = 420;
      
      private static const OVERLAY_HEIGHT:int = 300;
      
      private var container:DisplayObjectContainer;
      
      private var gameStage:Stage;
      
      private var overlayPanel:Sprite;
      
      private var overlayVisible:Boolean = false;
      
      private var overlayAnimating:Boolean = false;
      
      private const PADDING:int = 16;
      
      private var autoClickerContainer:Sprite;
      
      private var clickerListContainer:Sprite;
      
      private var currentTab:String = "autoclicker";
      
      private var nameInput:TextField;
      
      private var buttonsInput:TextField;
      
      private var intervalInput:TextField;
      
      private var hotkeyInput:TextField;
      
      private var buttonsListContainer:Sprite;
      
      private var statusText:TextField;
      
      private var clickers:Array = [];
      
      private var pendingButtons:Array = [];
      
      private var selectedHotkeyCode:int = 0;
      
      private var capturingHotkey:Boolean = false;
      
      public function Game()
      {
         super();
         if(numChildren > 1)
         {
            removeChildAt(0);
            removeChildAt(0);
         }
      }
      
      public function activateAllModels(param1:LoaderInfo) : void
      {
         new ClientConfigurator().start(this.container,new §5214232435232448123423632234§(param1.parameters["ip"],new <int>[param1.parameters["port"]],param1.parameters["resources"]),param1);
         var _loc2_:§static set in§ = new §5214239361239374123423632234§(param1.parameters["lang"],"en");
         §default var function§.§import use include§().§include while extends§(§static set in§,_loc2_);
         new §5214233215233228123423632234§().§521423121222312135123423632234§(param1.parameters["resources"] + "/localized.data_" + _loc2_.§5214235381235394123423632234§,this.activate);
      }
      
      public function SUPER(param1:Stage, param2:DisplayObjectContainer, param3:LoaderInfo = null) : void
      {
         this.container = param2;
         this.gameStage = param1;
         param1.dispatchEvent(new Event("EntranceModel.objectLoaded",true));
         §default var function§.§import use include§().§include while extends§(§default use with§,new §override for set§());
         this.buildOverlayPanel();
         param1.addEventListener(KeyboardEvent.KEY_DOWN,this.onOverlayKeyDown,true,1000,true);
         param1.addEventListener("keyDown",this.onOverlayKeyDown,true,1000,true);
         this.activateAllModels(param3);
      }
      
      private function onOverlayKeyDown(param1:KeyboardEvent) : void
      {
         if(this.capturingHotkey)
         {
            if(param1.keyCode != Keyboard.F7)
            {
               this.setHotkey(param1.keyCode);
               param1.stopImmediatePropagation();
               param1.preventDefault();
            }
            return;
         }
         if(param1.keyCode == Keyboard.F7)
         {
            this.toggleOverlayPanel();
            return;
         }
         for each(var clicker in this.clickers)
         {
            if(clicker.hotkeyCode == param1.keyCode)
            {
               this.toggleClicker(clicker);
               param1.stopImmediatePropagation();
               return;
            }
         }
      }
      
      private function toggleOverlayPanel() : void
      {
         this.overlayVisible = !this.overlayVisible;
         if(this.overlayVisible)
         {
            this.bringOverlayToFront();
            this.overlayPanel.visible = true;
            this.overlayPanel.scaleX = this.overlayPanel.scaleY = 0.9;
         }
         this.overlayAnimating = true;
         this.removeEventListener(Event.ENTER_FRAME,this.onOverlayAnimate);
         this.addEventListener(Event.ENTER_FRAME,this.onOverlayAnimate);
      }
      
      private function onOverlayAnimate(param1:Event) : void
      {
         var _loc2_:Number = this.overlayVisible ? 1 : 0;
         var _loc3_:Number = this.overlayVisible ? 1 : 0.9;
         this.overlayPanel.alpha += (_loc2_ - this.overlayPanel.alpha) * 0.25;
         var currentScale:Number = this.overlayPanel.scaleX;
         var nextScale:Number = currentScale + (_loc3_ - currentScale) * 0.25;
         this.overlayPanel.scaleX = this.overlayPanel.scaleY = nextScale;
         if(Math.abs(this.overlayPanel.alpha - _loc2_) < 0.01 && Math.abs(this.overlayPanel.scaleX - _loc3_) < 0.01)
         {
            this.overlayPanel.alpha = _loc2_;
            this.overlayPanel.scaleX = this.overlayPanel.scaleY = _loc3_;
            if(!this.overlayVisible)
            {
               this.overlayPanel.visible = false;
            }
            this.overlayAnimating = false;
            this.removeEventListener(Event.ENTER_FRAME,this.onOverlayAnimate);
         }
      }
      
      private function bringOverlayToFront() : void
      {
         if(this.overlayPanel.parent)
         {
            this.overlayPanel.parent.setChildIndex(this.overlayPanel,this.overlayPanel.parent.numChildren - 1);
         }
      }
      
      private function buildOverlayPanel() : void
      {
         this.overlayPanel = new Sprite();
         this.overlayPanel.visible = false;
         this.overlayPanel.alpha = 0;
         this.overlayPanel.mouseEnabled = true;
         this.overlayPanel.mouseChildren = true;
         var _loc1_:Shape = new Shape();
         var _loc2_:Matrix = new Matrix();
         _loc2_.createGradientBox(OVERLAY_WIDTH,OVERLAY_HEIGHT,Math.PI / 2,0,0);
         _loc1_.graphics.beginGradientFill(GradientType.LINEAR,[1777450,1119260],[1,1],[0,255],_loc2_);
         _loc1_.graphics.drawRoundRect(0,0,OVERLAY_WIDTH,OVERLAY_HEIGHT,18,18);
         _loc1_.graphics.endFill();
         _loc1_.filters = [new DropShadowFilter(6,90,0,0.6,24,24,1,2,false,false,false),new GlowFilter(5231103,0.5,12,12,1.4,2,false,false)];
         this.overlayPanel.addChild(_loc1_);
         var _loc3_:Shape = new Shape();
         _loc3_.graphics.lineStyle(1.5,5231103,0.7);
         _loc3_.graphics.drawRoundRect(0.75,0.75,OVERLAY_WIDTH - 1.5,OVERLAY_HEIGHT - 1.5,18,18);
         this.overlayPanel.addChild(_loc3_);
         var _loc4_:Shape = new Shape();
         _loc4_.graphics.beginFill(2567226,1);
         _loc4_.graphics.drawRoundRectComplex(0,0,OVERLAY_WIDTH,40,18,18,0,0);
         _loc4_.graphics.endFill();
         this.overlayPanel.addChild(_loc4_);
         var _loc5_:TextFormat = new TextFormat();
         _loc5_.font = "Arial";
         _loc5_.size = 15;
         _loc5_.bold = true;
         _loc5_.color = 15266303;
         _loc5_.align = TextFormatAlign.LEFT;
         var _loc6_:TextField = new TextField();
         _loc6_.defaultTextFormat = _loc5_;
         _loc6_.autoSize = TextFieldAutoSize.LEFT;
         _loc6_.selectable = false;
         _loc6_.text = "Control Panel";
         _loc6_.x = 16;
         _loc6_.y = 10;
         this.overlayPanel.addChild(_loc6_);
         var _loc7_:TextFormat = new TextFormat();
         _loc7_.font = "Arial";
         _loc7_.size = 11;
         _loc7_.color = 8950438;
         _loc7_.align = TextFormatAlign.RIGHT;
         var _loc8_:TextField = new TextField();
         _loc8_.defaultTextFormat = _loc7_;
         _loc8_.autoSize = TextFieldAutoSize.RIGHT;
         _loc8_.selectable = false;
         _loc8_.text = "F7";
         _loc8_.x = OVERLAY_WIDTH - 36;
         _loc8_.y = 13;
         this.overlayPanel.addChild(_loc8_);
         var tabAuto:Sprite = createTabButton("Auto Clicker",16,52,130,28,onAutoClickerTab);
         tabAuto.name = "tabAuto";
         tabAuto.mouseChildren = false;
         this.overlayPanel.addChild(tabAuto);
         var tabInfo:Sprite = createTabButton("Info",158,52,80,28,onInfoTab);
         tabInfo.name = "tabInfo";
         tabInfo.mouseChildren = false;
         this.overlayPanel.addChild(tabInfo);
         this.autoClickerContainer = new Sprite();
         this.autoClickerContainer.x = PADDING;
         this.autoClickerContainer.y = 90;
         this.overlayPanel.addChild(this.autoClickerContainer);
         var labelFormat:TextFormat = new TextFormat("Arial",12,15266303);
         createTextField("Auto-clickers let you add buttons to press automatically.",16,86,OVERLAY_WIDTH - 32,18,labelFormat,this.overlayPanel);
         createTextField("Press the configured hotkey to toggle each clicker on/off.",16,104,OVERLAY_WIDTH - 32,18,labelFormat,this.overlayPanel);
         nameInput = createInputField(180,22,16,128,"Clicker name");
         buttonsInput = createInputField(90,22,16,162,"Button key");
         buttonsInput.addEventListener(KeyboardEvent.KEY_DOWN,this.onButtonsInputKeyDown);
         var addButtonKey:Sprite = createButton("Add",112,162,40,22,this.onAddButtonKey);
         this.overlayPanel.addChild(addButtonKey);
         intervalInput = createInputField(90,22,212,128,"Interval ms");
         hotkeyInput = createInputField(90,22,212,162,"Press a key");
         hotkeyInput.addEventListener(MouseEvent.CLICK,this.onHotkeyInputClick);
         hotkeyInput.addEventListener(KeyboardEvent.KEY_DOWN,this.onHotkeyInputKeyDown);
         hotkeyInput.selectable = false;
         createLabel("Name",16,116,this.overlayPanel);
         createLabel("Buttons",16,150,this.overlayPanel);
         createLabel("Interval",212,116,this.overlayPanel);
         createLabel("Hotkey",212,150,this.overlayPanel);
         var addClickerButton:Sprite = createButton("Add Clicker",310,128,90,24,onAddClicker);
         this.overlayPanel.addChild(addClickerButton);
         this.buttonsListContainer = new Sprite();
         this.buttonsListContainer.x = 16;
         this.buttonsListContainer.y = 190;
         this.overlayPanel.addChild(this.buttonsListContainer);
         this.renderPendingButtons();
         this.statusText = createTextField("Status: ready.",16,230,OVERLAY_WIDTH - 32,18,labelFormat,this.overlayPanel);
         this.statusText.textColor = 9233407;
         this.clickerListContainer = new Sprite();
         this.clickerListContainer.x = 16;
         this.clickerListContainer.y = 260;
         this.overlayPanel.addChild(this.clickerListContainer);
         renderClickerList();
         this.gameStage.addChild(this.overlayPanel);
         this.positionOverlayPanel();
         this.gameStage.addEventListener(Event.RESIZE,this.onOverlayStageResize);
         updateTabDisplay();
      }
      
      private function onAutoClickerTab(param1:MouseEvent) : void
      {
         this.currentTab = "autoclicker";
         updateTabDisplay();
      }
      
      private function onInfoTab(param1:MouseEvent) : void
      {
         this.currentTab = "info";
         updateTabDisplay();
      }
      
      private function updateTabDisplay() : void
      {
         var i:int = 0;
         while(i < this.overlayPanel.numChildren)
         {
            var child:* = this.overlayPanel.getChildAt(i);
            if(child is Sprite && (child.name == "tabAuto" || child.name == "tabInfo"))
            {
               if(child.name == "tabAuto")
               {
                  child.alpha = this.currentTab == "autoclicker" ? 1 : 0.6;
               }
               else if(child.name == "tabInfo")
               {
                  child.alpha = this.currentTab == "info" ? 1 : 0.6;
               }
            }
            i++;
         }
         this.autoClickerContainer.visible = this.currentTab == "autoclicker";
         displayInfoText(this.currentTab != "autoclicker");
      }
      
      private function displayInfoText(visible:Boolean) : void
      {
         var infoText:TextField = this.overlayPanel.getChildByName("infoText") as TextField;
         if(!infoText)
         {
            infoText = createTextField("",16,96,OVERLAY_WIDTH - 32,120,new TextFormat("Arial",12,12042449),this.overlayPanel);
            infoText.name = "infoText";
            infoText.multiline = true;
            infoText.wordWrap = true;
         }
         infoText.visible = visible;
         infoText.text = "Auto Clicker Tab\n\n" + "Add one or more clickers and control them with hotkeys.\n\n" + "Fields:\n" + "- Name: display name for the clicker.\n" + "- Buttons: choose which game buttons to press automatically.\n" + "- Interval: repeat interval in ms.\n" + "- Hotkey: toggle the clicker on/off.\n\n" + "Press F7 to hide this panel.";
      }
      
      private function createTabButton(label:String, x:int, y:int, width:int, height:int, handler:Function) : Sprite
      {
         var button:Sprite = new Sprite();
         button.x = x;
         button.y = y;
         var shape:Shape = new Shape();
         shape.graphics.beginFill(1581629,1);
         shape.graphics.drawRoundRect(0,0,width,height,14,14);
         shape.graphics.endFill();
         button.addChild(shape);
         var text:TextField = new TextField();
         text.defaultTextFormat = new TextFormat("Arial",12,15266303,true,null,null,null,null,TextFormatAlign.CENTER);
         text.width = width;
         text.height = height;
         text.selectable = false;
         text.text = label;
         text.y = 6;
         button.addChild(text);
         button.buttonMode = true;
         button.mouseChildren = false;
         button.addEventListener(MouseEvent.CLICK,handler);
         return button;
      }
      
      private function createButton(label:String, x:int, y:int, width:int, height:int, handler:Function) : Sprite
      {
         var button:Sprite = new Sprite();
         button.x = x;
         button.y = y;
         var shape:Shape = new Shape();
         shape.graphics.beginFill(3897599,1);
         shape.graphics.drawRoundRect(0,0,width,height,14,14);
         shape.graphics.endFill();
         button.addChild(shape);
         var text:TextField = new TextField();
         text.defaultTextFormat = new TextFormat("Arial",12,16777215,true,null,null,null,null,TextFormatAlign.CENTER);
         text.width = width;
         text.height = height;
         text.selectable = false;
         text.text = label;
         text.y = 6;
         button.addChild(text);
         button.buttonMode = true;
         button.mouseChildren = false;
         button.addEventListener(MouseEvent.CLICK,handler);
         return button;
      }
      
      private function createLabel(text:String, x:int, y:int, container:Sprite) : void
      {
         var field:TextField = new TextField();
         field.defaultTextFormat = new TextFormat("Arial",11,8950438);
         field.autoSize = TextFieldAutoSize.LEFT;
         field.selectable = false;
         field.text = text;
         field.x = x;
         field.y = y;
         container.addChild(field);
      }
      
      private function createTextField(text:String, x:int, y:int, width:int, height:int, format:TextFormat, container:Sprite) : TextField
      {
         var field:TextField = new TextField();
         field.defaultTextFormat = format;
         field.width = width;
         field.height = height;
         field.multiline = true;
         field.wordWrap = true;
         field.selectable = false;
         field.text = text;
         field.x = x;
         field.y = y;
         container.addChild(field);
         return field;
      }
      
      private function createInputField(width:int, height:int, x:int, y:int, placeholder:String = "") : TextField
      {
         var input:TextField = new TextField();
         input.defaultTextFormat = new TextFormat("Arial",12,1118481);
         input.type = TextFieldType.INPUT;
         input.width = width;
         input.height = height;
         input.border = true;
         input.borderColor = 5204891;
         input.background = true;
         input.backgroundColor = 16777215;
         input.text = placeholder;
         input.x = x;
         input.y = y;
         input.addEventListener(FocusEvent.FOCUS_IN,this.onInputFocusIn);
         input.addEventListener(FocusEvent.FOCUS_OUT,this.onInputFocusOut);
         this.overlayPanel.addChild(input);
         return input;
      }
      
      private function onInputFocusIn(param1:FocusEvent) : void
      {
         var input:TextField = TextField(param1.currentTarget);
         if(input === this.hotkeyInput)
         {
            this.startHotkeyCapture();
            return;
         }
         if(input.text == "Clicker name" || input.text == "Button key" || input.text == "Interval ms" || input.text == "Press a key")
         {
            input.text = "";
         }
      }
      
      private function onInputFocusOut(param1:FocusEvent) : void
      {
         var input:TextField = TextField(param1.currentTarget);
         if(input.text.length == 0)
         {
            switch(input)
            {
               case this.nameInput:
                  input.text = "Clicker name";
                  break;
               case this.buttonsInput:
                  input.text = "Button key";
                  break;
               case this.intervalInput:
                  input.text = "Interval ms";
                  break;
               case this.hotkeyInput:
                  input.text = "Press a key";
            }
         }
      }
      
      private function onAddClicker(param1:MouseEvent) : void
      {
         var name:String = this.nameInput.text;
         var intervalValue:String = this.intervalInput.text;
         var hotkeyName:String = this.hotkeyInput.text;
         if(name == "" || name == "Clicker name")
         {
            this.updateStatus("Enter a clicker name.");
            return;
         }
         if(this.pendingButtons.length == 0)
         {
            this.updateStatus("Add at least one button to auto click.");
            return;
         }
         var interval:int = int(intervalValue);
         if(interval <= 0)
         {
            this.updateStatus("Enter a valid interval in milliseconds.");
            return;
         }
         var hotkeyCode:int = this.selectedHotkeyCode;
         if(hotkeyCode == 0)
         {
            hotkeyCode = this.parseHotkey(hotkeyName);
         }
         if(hotkeyCode == 0)
         {
            this.updateStatus("Press a keyboard key to assign a hotkey.");
            return;
         }
         for each(var existing in this.clickers)
         {
            if(existing.hotkeyCode == hotkeyCode)
            {
               this.updateStatus("That hotkey is already assigned. Choose another.");
               return;
            }
         }
         var clicker:Object = {
            "name":name,
            "buttons":this.pendingButtons.concat(),
            "interval":interval,
            "hotkeyName":this.getKeyName(hotkeyCode),
            "hotkeyCode":hotkeyCode,
            "enabled":false,
            "timer":null,
            "nextIndex":0
         };
         this.clickers.push(clicker);
         this.pendingButtons = [];
         this.buttonsInput.text = "Button key";
         this.selectedHotkeyCode = 0;
         this.hotkeyInput.text = "Press a key";
         this.renderPendingButtons();
         this.renderClickerList();
         this.updateStatus("Clicker added. Press " + clicker.hotkeyName + " to toggle.");
      }
      
      private function onAddButtonKey(param1:MouseEvent) : void
      {
         this.addButtonFromInput();
      }
      
      private function onButtonsInputKeyDown(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            this.addButtonFromInput();
            param1.stopImmediatePropagation();
            param1.preventDefault();
         }
      }
      
      private function addButtonFromInput() : void
      {
         if(!this.buttonsInput)
         {
            return;
         }
         var text:String = this.buttonsInput.text;
         if(text == "" || text == "Button key")
         {
            this.updateStatus("Enter a button key to add.");
            return;
         }
         text = text.toUpperCase();
         var validButtons:Array = [];
         var i:int = 0;
         while(i < text.length)
         {
            var char:String = text.charAt(i);
            var code:uint = this.charToKeyCode(char);
            if(code != 0)
            {
               validButtons.push(char);
            }
            i++;
         }
         if(validButtons.length == 0)
         {
            this.updateStatus("Enter valid button keys like 1,2,3 or A,B,C.");
            return;
         }
         i = 0;
         while(i < validButtons.length)
         {
            if(this.pendingButtons.indexOf(validButtons[i]) < 0)
            {
               this.pendingButtons.push(validButtons[i]);
            }
            i++;
         }
         this.buttonsInput.text = "Button key";
         this.renderPendingButtons();
         this.updateStatus("Added button(s): " + validButtons.join(",") + ".");
      }
      
      private function renderPendingButtons() : void
      {
         while(this.buttonsListContainer.numChildren > 0)
         {
            this.buttonsListContainer.removeChildAt(0);
         }
         var labelFormat:TextFormat = new TextFormat("Arial",12,15266303);
         if(this.pendingButtons.length == 0)
         {
            this.createTextField("No buttons added yet.",0,0,OVERLAY_WIDTH - 2 * PADDING,18,labelFormat,this.buttonsListContainer);
            return;
         }
         var list:String = this.pendingButtons.join(", ");
         var pendingText:TextField = this.createTextField("Buttons: " + list,0,0,OVERLAY_WIDTH - 2 * PADDING,18,labelFormat,this.buttonsListContainer);
         pendingText.selectable = false;
      }
      
      private function renderClickerList() : void
      {
         while(this.clickerListContainer.numChildren > 0)
         {
            this.clickerListContainer.removeChildAt(0);
         }
         var labelFormat:TextFormat = new TextFormat("Arial",12,15266303);
         if(this.clickers.length == 0)
         {
            this.createTextField("No clickers configured.",0,0,OVERLAY_WIDTH - 2 * PADDING,18,labelFormat,this.clickerListContainer);
            return;
         }
         var yOffset:int = 0;
         var i:int = 0;
         while(i < this.clickers.length)
         {
            var clicker:Object = this.clickers[i];
            var line:String = "[" + clicker.hotkeyName + "] " + clicker.name + " — buttons=\'" + clicker.buttons.join(",") + "\' interval=" + clicker.interval + "ms " + (clicker.enabled ? "(ON)" : "(OFF)");
            var item:TextField = this.createTextField(line,0,yOffset,OVERLAY_WIDTH - 2 * PADDING - 140,18,labelFormat,this.clickerListContainer);
            item.selectable = false;
            yOffset += 22;
            var toggleButton:Sprite = this.createButton(clicker.enabled ? "Disable" : "Enable",262,yOffset - 20,70,20,this.onToggleClicker);
            toggleButton.name = "toggle_" + i;
            this.clickerListContainer.addChild(toggleButton);
            var removeButton:Sprite = this.createButton("Delete",340,yOffset - 20,60,20,this.onRemoveClicker);
            removeButton.name = "remove_" + i;
            this.clickerListContainer.addChild(removeButton);
            yOffset += 24;
            i++;
         }
      }
      
      private function onToggleClicker(param1:MouseEvent) : void
      {
         var index:int = parseInt(param1.currentTarget.name.split("_")[1]);
         if(!isNaN(index) && this.clickers[index])
         {
            this.toggleClicker(this.clickers[index]);
         }
      }
      
      private function onRemoveClicker(param1:MouseEvent) : void
      {
         var index:int = parseInt(param1.currentTarget.name.split("_")[1]);
         if(!isNaN(index) && this.clickers[index])
         {
            this.stopClicker(this.clickers[index]);
            this.clickers.splice(index,1);
            this.renderClickerList();
            this.updateStatus("Clicker removed.");
         }
      }
      
      private function toggleClicker(clicker:Object) : void
      {
         clicker.enabled = !clicker.enabled;
         if(clicker.enabled)
         {
            this.startClicker(clicker);
            this.updateStatus(clicker.name + " started.");
         }
         else
         {
            this.stopClicker(clicker);
            this.updateStatus(clicker.name + " stopped.");
         }
         this.renderClickerList();
      }
      
      private function startClicker(clicker:Object) : void
      {
         var wasEnabled:Boolean = Boolean(clicker.enabled);
         this.stopClicker(clicker);
         clicker.nextIndex = 0;
         var timer:Timer = new Timer(clicker.interval);
         timer.addEventListener(TimerEvent.TIMER,this.onClickerTimer);
         timer["clicker"] = clicker;
         clicker.timer = timer;
         clicker.enabled = wasEnabled || true;
         timer.start();
      }
      
      private function stopClicker(clicker:Object) : void
      {
         if(clicker.timer)
         {
            clicker.timer.stop();
            clicker.timer.removeEventListener(TimerEvent.TIMER,this.onClickerTimer);
            clicker.timer = null;
         }
         clicker.enabled = false;
      }
      
      private function onClickerTimer(param1:TimerEvent) : void
      {
         var timer:Timer = Timer(param1.currentTarget);
         var clicker:Object = timer["clicker"];
         if(!clicker || !clicker.enabled || !clicker.buttons || clicker.buttons.length == 0)
         {
            return;
         }
         if(clicker.nextIndex < 0 || clicker.nextIndex >= clicker.buttons.length)
         {
            clicker.nextIndex = 0;
         }
         var button:String = String(clicker.buttons[clicker.nextIndex]);
         var code:uint = this.charToKeyCode(button);
         if(code != 0)
         {
            this.dispatchKeyPress(code,button.charCodeAt(0));
         }
         clicker.nextIndex = (clicker.nextIndex + 1) % clicker.buttons.length;
      }
      
      private function dispatchKeyPress(code:uint, charCode:uint = 0) : void
      {
         var currentFocus:InteractiveObject;
         var down:KeyboardEvent;
         var up:KeyboardEvent;
         var text:TextEvent;
         if(!this.gameStage)
         {
            return;
         }
         currentFocus = this.gameStage.focus;
         try
         {
            this.gameStage.focus = this.gameStage;
            down = new KeyboardEvent(KeyboardEvent.KEY_DOWN,true,true,charCode,code,0,false,false,false,false);
            up = new KeyboardEvent(KeyboardEvent.KEY_UP,true,true,0,code,0,false,false,false,false);
            this.gameStage.dispatchEvent(down);
            if(charCode != 0)
            {
               text = new TextEvent(TextEvent.TEXT_INPUT,true,true,String.fromCharCode(charCode));
               this.gameStage.dispatchEvent(text);
            }
            this.gameStage.dispatchEvent(up);
         }
         catch(error:Error)
         {
         }
         finally
         {
            this.gameStage.focus = currentFocus;
         }
      }
      
      private function charToKeyCode(character:String) : uint
      {
         var upper:String = character.toUpperCase();
         if(upper.length == 0)
         {
            return 0;
         }
         if(upper >= "0" && upper <= "9")
         {
            return Keyboard["NUMBER_" + upper];
         }
         if(upper >= "A" && upper <= "Z")
         {
            return Keyboard[upper];
         }
         if(upper == " ")
         {
            return Keyboard.SPACE;
         }
         if(upper == ",")
         {
            return Keyboard.COMMA;
         }
         if(upper == ".")
         {
            return Keyboard.PERIOD;
         }
         if(upper == ";")
         {
            return Keyboard.SEMICOLON;
         }
         if(upper == ":")
         {
            return Keyboard.COLON;
         }
         if(upper == "-")
         {
            return Keyboard.MINUS;
         }
         if(upper == "=")
         {
            return Keyboard.EQUAL;
         }
         return 0;
      }
      
      private function parseHotkey(label:String) : int
      {
         if(!label)
         {
            return 0;
         }
         var normalized:String = label.toUpperCase().replace(/\s+/g,"");
         if(normalized.match(/^(F[1-9]|F1[0-2])$/))
         {
            return Keyboard[normalized];
         }
         if(normalized.length == 1 && normalized >= "A" && normalized <= "Z")
         {
            return Keyboard[normalized];
         }
         if(normalized.length == 1 && normalized >= "0" && normalized <= "9")
         {
            return Keyboard["NUMBER_" + normalized];
         }
         return 0;
      }
      
      private function onHotkeyInputClick(param1:MouseEvent) : void
      {
         this.startHotkeyCapture();
      }
      
      private function onHotkeyInputKeyDown(param1:KeyboardEvent) : void
      {
         if(this.capturingHotkey)
         {
            this.setHotkey(param1.keyCode);
            param1.stopImmediatePropagation();
            param1.preventDefault();
         }
      }
      
      private function startHotkeyCapture() : void
      {
         this.capturingHotkey = true;
         this.hotkeyInput.text = "Press a key...";
         this.updateStatus("Press any key to set the clicker hotkey.");
      }
      
      private function setHotkey(keyCode:int) : void
      {
         this.selectedHotkeyCode = keyCode;
         this.capturingHotkey = false;
         this.hotkeyInput.text = this.getKeyName(keyCode);
         this.updateStatus("Hotkey set to " + this.hotkeyInput.text + ".");
      }
      
      private function getKeyName(keyCode:int) : String
      {
         switch(keyCode)
         {
            case Keyboard.F1:
               return "F1";
            case Keyboard.F2:
               return "F2";
            case Keyboard.F3:
               return "F3";
            case Keyboard.F4:
               return "F4";
            case Keyboard.F5:
               return "F5";
            case Keyboard.F6:
               return "F6";
            case Keyboard.F7:
               return "F7";
            case Keyboard.F8:
               return "F8";
            case Keyboard.F9:
               return "F9";
            case Keyboard.F10:
               return "F10";
            case Keyboard.F11:
               return "F11";
            case Keyboard.F12:
               return "F12";
            default:
               if(keyCode >= 65 && keyCode <= 90)
               {
                  return String.fromCharCode(keyCode);
               }
               if(keyCode >= 48 && keyCode <= 57)
               {
                  return String.fromCharCode(keyCode);
               }
               return "Key" + keyCode;
         }
      }
      
      private function updateStatus(text:String) : void
      {
         if(this.statusText)
         {
            this.statusText.text = "Status: " + text;
         }
      }
      
      private function positionOverlayPanel() : void
      {
         this.overlayPanel.x = (this.gameStage.stageWidth - OVERLAY_WIDTH) / 2;
         this.overlayPanel.y = (this.gameStage.stageHeight - OVERLAY_HEIGHT) / 2;
      }
      
      private function onOverlayStageResize(param1:Event) : void
      {
         this.positionOverlayPanel();
      }
      
      private function b6c1fbb() : void
      {
         new §521423176292317642123423632234§().§521423173092317322123423632234§();
      }
      
      private function activate() : void
      {
         var _loc1_:§default var function§ = §default var function§.§import use include§();
         new EntranceActivator().start(_loc1_);
         var _loc3_:§5214237881237894123423632234§ = §5214237881237894123423632234§(_loc1_.§5214231532231545123423632234§(§5214237881237894123423632234§));
         _loc3_.§5214237535237548123423632234§();
         new GameActivator().start(_loc1_);
         §default var do§.§521423171842317197123423632234§ = Sprite(parent.parent.parent);
         this.c712c186();
         §case var default§.init();
         var _loc2_:§52142358423597123423632234§ = new §52142358423597123423632234§(§each var else§(_loc1_.§5214231532231545123423632234§(§each var else§)).stage);
         _loc2_.addEventListener("complete",this.b16cfc6f,false,0,true);
         _loc2_.§5214234215234228123423632234§();
      }
      
      private function b16cfc6f(param1:Event) : void
      {
         §default var function§.§5214236700236713123423632234§.log("GPUDetection","GPU detection completed, %1",§52142358423597123423632234§.§5214232292232305123423632234§);
         this.b6c1fbb();
      }
      
      private function c712c186() : void
      {
         var _loc1_:§null finally in§ = §null finally in§(§default var function§.§import use include§().§5214231532231545123423632234§(§null finally in§));
         _loc1_.§521423180682318081123423632234§(new §521423106712310684123423632234§(§5214237893237906123423632234§.§switch try§(10568210,51255591),null));
         _loc1_.§521423180682318081123423632234§(new §521423106712310684123423632234§(§5214237893237906123423632234§.§switch try§(52835823,6349643),null));
         _loc1_.§521423180682318081123423632234§(new §521423106712310684123423632234§(§5214237893237906123423632234§.§switch try§(59235923,646943),null));
         _loc1_.§521423180682318081123423632234§(new §521423106712310684123423632234§(§5214237893237906123423632234§.§switch try§(884380667,214),null));
         _loc1_.§521423180682318081123423632234§(new §521423106712310684123423632234§(§5214237893237906123423632234§.§switch try§(13503324,653),null));
      }
   }
}

