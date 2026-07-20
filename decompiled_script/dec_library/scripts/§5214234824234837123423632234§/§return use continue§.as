package §5214234824234837123423632234§
{
   import §52142367323686123423632234§.§521423116092311622123423632234§;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import §native finally while§.§if super class§;
   
   public class §return use continue§ extends §521423116092311622123423632234§
   {
      
      private var §5214232657232670123423632234§:Boolean;
      
      private var §5214235347235360123423632234§:Bitmap;
      
      private var §class const import§:§if super class§;
      
      public function §return use continue§(param1:§if super class§)
      {
         while(true)
         {
            if(!_loc2_)
            {
               this.§5214235347235360123423632234§ = new Bitmap(§static switch const§.§521423105262310539123423632234§(param1));
               super();
               if(_loc3_)
               {
                  break;
               }
               this.§class const import§ = param1;
               addChild(this.§5214235347235360123423632234§);
            }
            this.width = 30;
            this.§5214235347235360123423632234§.x = (width - this.§5214235347235360123423632234§.width) / 2;
            break;
         }
         this.§5214235347235360123423632234§.y = (height - this.§5214235347235360123423632234§.height) / 2;
         addEventListener("click",this.§var finally import§);
         if(!_loc2_)
         {
            this.§import switch import§ = false;
            this.§5214237423237436123423632234§ = false;
         }
      }
      
      public function get §import switch import§() : Boolean
      {
         return this.§5214232657232670123423632234§;
      }
      
      public function set §import switch import§(param1:Boolean) : void
      {
         this.§5214232657232670123423632234§ = param1;
         if(this.§5214232657232670123423632234§)
         {
            this.§5214235347235360123423632234§.y = (height - this.§5214235347235360123423632234§.height) / 2 + 1;
            enable = false;
            mouseEnabled = true;
            mouseChildren = true;
            buttonMode = true;
         }
         else
         {
            this.§5214235347235360123423632234§.y = (height - this.§5214235347235360123423632234§.height) / 2;
            enable = true;
         }
      }
      
      private function §var finally import§(param1:MouseEvent) : void
      {
         while(true)
         {
            if(!_loc2_)
            {
               §§push(this);
               §§push(this.§5214232657232670123423632234§);
               if(!_loc2_)
               {
                  §§push(!§§pop());
               }
               §§pop().§import switch import§ = §§pop();
               if(_loc3_)
               {
                  break;
               }
            }
            dispatchEvent(new Event("change"));
            break;
         }
      }
      
      override protected function §return const class§(param1:int = 0) : void
      {
         loop0:
         while(true)
         {
            if(!_loc3_)
            {
               super.§return const class§(param1);
               if(_loc2_)
               {
                  break;
               }
            }
            §§push(param1);
            if(!_loc3_)
            {
               §§push(int(§§pop()));
               if(!_loc2_)
               {
                  §§push(§§pop() - 1);
               }
            }
            switch(§§pop())
            {
               case 0:
               case 1:
                  break loop0;
               case 2:
               case 3:
                  this.§5214235347235360123423632234§.y = (height - this.§5214235347235360123423632234§.height) / 2 + 1;
            }
            §§goto(addr0075);
         }
         this.§5214235347235360123423632234§.y = (height - this.§5214235347235360123423632234§.height) / 2;
         if(_loc2_)
         {
         }
         addr0075:
      }
      
      public function §false use var§() : void
      {
         if(!_loc1_)
         {
            while(true)
            {
               if(hasEventListener("click"))
               {
                  if(!_loc1_)
                  {
                     removeEventListener("click",this.§var finally import§);
                     if(_loc2_)
                     {
                        break;
                     }
                  }
               }
               enable = false;
               break;
            }
         }
      }
      
      public function get §521423129752312988123423632234§() : §if super class§
      {
         return this.§class const import§;
      }
      
      public function set §5214237423237436123423632234§(param1:Boolean) : void
      {
         this.mouseChildren = !param1;
         this.mouseEnabled = !param1;
         this.buttonMode = !param1;
         this.useHandCursor = !param1;
      }
   }
}

