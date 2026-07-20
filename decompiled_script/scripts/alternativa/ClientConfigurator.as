package alternativa
{
   import §521423130892313102123423632234§.§null function var§;
   import §521423132992313312123423632234§.§52142350423517123423632234§;
   import §521423132992313312123423632234§.§dynamic set extends§;
   import §521423132992313312123423632234§.§else for native§;
   import §521423165552316568123423632234§.§default var function§;
   import §521423181732318186123423632234§.§521423121542312167123423632234§;
   import §521423181732318186123423632234§.§521423135852313598123423632234§;
   import §5214231835231848123423632234§.§521423106532310666123423632234§;
   import §5214231835231848123423632234§.§5214232435232448123423632234§;
   import §5214235058235071123423632234§.§5214237593237606123423632234§;
   import §5214235058235071123423632234§.§dynamic while continue§;
   import §5214235058235071123423632234§.§extends set override§;
   import §5214239493239506123423632234§.§521423191762319189123423632234§;
   import §continue switch case§.§dynamic const break§;
   import §continue switch case§.§each var else§;
   import flash.display.DisplayObjectContainer;
   import flash.display.LoaderInfo;
   import flash.display.Stage;
   import flash.events.KeyboardEvent;
   import §include package try§.§do with§;
   import §include package try§.§while var include§;
   import §static function if§.§continue for var§;
   import §static function if§.§continue package if§;
   
   public class ClientConfigurator implements §521423106532310666123423632234§
   {
      
      protected var osgi:§default var function§;
      
      private var console:§52142350423517123423632234§;
      
      private var §521423116012311614123423632234§:KeyboardShortcut;
      
      private var §each while if§:KeyboardShortcut;
      
      private var §each const do§:§do with§;
      
      private var §5214239630239643123423632234§:§null function var§;
      
      public function ClientConfigurator()
      {
         super();
      }
      
      private function b4364d88(param1:Stage, param2:§52142350423517123423632234§, param3:String) : void
      {
         var _loc4_:Array = null;
         var _loc6_:Array = param3.split(",");
         var _loc5_:Object = {};
         for each(var _loc7_ in _loc6_)
         {
            _loc4_ = _loc7_.split(":");
            _loc5_[_loc4_[0]] = _loc4_[1];
         }
         if(_loc5_["show"] != null)
         {
            param2.§return catch dynamic§();
         }
         if(_loc5_["ha"] != null)
         {
            param2.§with const switch§ = int(_loc5_["ha"]);
         }
         if(_loc5_["va"] != null)
         {
            param2.§521423143552314368123423632234§ = int(_loc5_["va"]);
         }
         if(_loc5_["w"] != null)
         {
            param2.width = int(_loc5_["w"]);
         }
         if(_loc5_["h"] != null)
         {
            param2.height = int(_loc5_["h"]);
         }
         if(_loc5_["alpha"] != null)
         {
            param2.§catch while use§("con_alpha " + _loc5_["alpha"]);
         }
         this.§521423116012311614123423632234§ = this.c4044fb(_loc5_["hsw"],37,false,true,true);
         this.§each while if§ = this.c4044fb(_loc5_["vsw"],38,false,true,true);
         param1.addEventListener("keyDown",this.f6455654,true);
      }
      
      private function c4044fb(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean) : KeyboardShortcut
      {
         if(param1 == null)
         {
            return new KeyboardShortcut(param2,param3,param4,param5);
         }
         return new KeyboardShortcut(parseInt(param1),param1.indexOf("a") > -1,param1.indexOf("c") > -1,param1.indexOf("s") > -1);
      }
      
      public function start(param1:DisplayObjectContainer, param2:§5214232435232448123423632234§, param3:LoaderInfo) : void
      {
         this.osgi = §default var function§.§import use include§();
         this.§each const do§ = new §do with§();
         this.osgi.§include while extends§(§521423191762319189123423632234§,this.§each const do§);
         this.c818067();
         this.e2c43a1f(param1.stage);
         this.osgi.§include while extends§(§each var else§,new §dynamic const break§(param1));
         this.osgi.§include while extends§(§continue package if§,new §continue for var§(param2));
         this.registerCommand(this.osgi,this.§each const do§);
         this.osgi.§include while extends§(§521423121542312167123423632234§,new §521423135852313598123423632234§(param3));
      }
      
      private function registerCommand(param1:§default var function§, param2:§521423191762319189123423632234§) : void
      {
         new §while var include§(param2);
      }
      
      private function e2c43a1f(param1:Stage) : void
      {
         if(this.console)
         {
            return;
         }
         this.console = this.createConsole(param1);
         this.osgi.§include while extends§(§52142350423517123423632234§,this.console);
         this.§5214239630239643123423632234§.§521423118882311901123423632234§(new §else for native§(this.§each const do§,this.console));
         this.b4364d88(param1,this.console,"show,ha,va,w,h,alpha");
      }
      
      protected function createConsole(param1:Stage) : §52142350423517123423632234§
      {
         return new §dynamic set extends§(this.§each const do§,param1,50,100,1,1);
      }
      
      private function f6455654(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case this.§521423116012311614123423632234§.keyCode:
               if(this.§521423116012311614123423632234§.altKey == param1.altKey && this.§521423116012311614123423632234§.shiftKey == param1.shiftKey && this.§521423116012311614123423632234§.ctrlKey == param1.ctrlKey)
               {
                  if(this.console.§with const switch§ == 1)
                  {
                     this.console.§with const switch§ = 2;
                  }
                  else
                  {
                     this.console.§with const switch§ = 1;
                  }
               }
               break;
            case this.§each while if§.keyCode:
               if(this.§each while if§.altKey == param1.altKey && this.§each while if§.shiftKey == param1.shiftKey && this.§each while if§.ctrlKey == param1.ctrlKey)
               {
                  if(this.console.§521423143552314368123423632234§ == 1)
                  {
                     this.console.§521423143552314368123423632234§ = 2;
                  }
                  else
                  {
                     this.console.§521423143552314368123423632234§ = 1;
                  }
               }
         }
      }
      
      private function c818067() : void
      {
         this.§5214239630239643123423632234§ = §null function var§(this.osgi.§5214231532231545123423632234§(§null function var§));
         this.osgi.§include while extends§(§extends set override§,new §dynamic while continue§(this.§5214239630239643123423632234§));
         §default var function§.§5214236700236713123423632234§ = new §5214237593237606123423632234§(this.§5214239630239643123423632234§);
      }
   }
}

