package §52142358223595123423632234§
{
   import §521423138512313864123423632234§.§switch while do§;
   import §5214234310234323123423632234§.§521423123992312412123423632234§;
   import §5214234310234323123423632234§.§break while override§;
   import §5214234310234323123423632234§.§finally switch get§;
   import §continue switch case§.§dynamic const break§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import §switch super get§.§521423135892313602123423632234§;
   
   public class §5214238310238323123423632234§ extends Sprite
   {
      
      public static var §521423121872312200123423632234§:§521423135892313602123423632234§;
      
      private const §continue switch each§:int = 11;
      
      private const §5214231973231986123423632234§:Point;
      
      private const §set function extends§:int = 300;
      
      private var §5214233106233119123423632234§:§switch while do§;
      
      private var label:§break while override§;
      
      private var §switch for case§:§finally switch get§;
      
      private var §521423191582319171123423632234§:§521423123992312412123423632234§;
      
      public function §5214238310238323123423632234§()
      {
         if(!_loc2_)
         {
            §5214231973231986123423632234§ = new Point(104,33);
            if(!_loc2_)
            {
               super();
               if(!_loc1_)
               {
                  addEventListener("addedToStage",this.§const use use§);
               }
            }
         }
      }
      
      private function §dynamic switch final§(param1:Event) : void
      {
         if(!_loc3_)
         {
            stage.removeEventListener("resize",§package use case§);
         }
      }
      
      private function §package use case§(param1:Event = null) : void
      {
         while(true)
         {
            if(!_loc2_)
            {
               x = Math.round((stage.stageWidth / §dynamic const break§.§5214231303231316123423632234§ - width) * 0.5);
               if(_loc2_)
               {
                  break;
               }
            }
            y = Math.round((stage.stageHeight / §dynamic const break§.§5214231303231316123423632234§ - height) * 0.5);
            break;
         }
      }
      
      public function §try catch dynamic§() : void
      {
         loop0:
         while(true)
         {
            while(true)
            {
               if(!_loc2_)
               {
                  this.label.text = "Invite code is not valid";
                  if(_loc2_)
                  {
                     break;
                  }
                  this.label.color = 6684672;
                  if(_loc2_)
                  {
                     break loop0;
                  }
               }
               this.label.sharpness = -100;
               if(!_loc2_)
               {
                  break;
               }
               break loop0;
            }
            this.label.x = Math.round((this.§5214233106233119123423632234§.width - this.label.textWidth) * 0.5) - 7;
            break;
         }
      }
      
      private function §const use use§(param1:Event) : void
      {
         this.§5214233106233119123423632234§ = new §switch while do§();
         if(!_loc3_)
         {
            addChild(this.§5214233106233119123423632234§);
            this.§5214233106233119123423632234§.width = 300 + 11 * 2;
            this.label = new §break while override§();
         }
         addChild(this.label);
         while(true)
         {
            if(!_loc3_)
            {
               this.label.bold = true;
               this.label.text = "Please, enter your invite code and keep it:";
               this.label.x = Math.round((this.§5214233106233119123423632234§.width - this.label.textWidth) * 0.5) - 7;
               this.label.y = 11;
               this.§switch for case§ = new §finally switch get§();
               addChild(this.§switch for case§);
               if(_loc2_)
               {
                  break;
               }
               this.§switch for case§.width = 300;
               this.§switch for case§.x = Math.round((this.§5214233106233119123423632234§.width - this.§switch for case§.width) * 0.5) + 5;
               this.§switch for case§.y = this.label.y + this.label.textHeight + 5;
               if(_loc3_)
               {
                  break;
               }
            }
            this.§switch for case§.§5214236731236744123423632234§ = 32;
            if(!_loc2_)
            {
               this.§521423191582319171123423632234§ = new §521423123992312412123423632234§();
               addChild(this.§521423191582319171123423632234§);
            }
            this.§521423191582319171123423632234§.label = "Ok";
            if(!_loc2_)
            {
               this.§521423191582319171123423632234§.x = Math.round((this.§5214233106233119123423632234§.width - this.§5214231973231986123423632234§.x) * 0.5);
               this.§521423191582319171123423632234§.y = this.§switch for case§.y + this.§switch for case§.height + 5;
               if(!_loc3_)
               {
                  break;
               }
            }
            §§goto(addr0161);
         }
         this.§521423191582319171123423632234§.addEventListener("click",this.§521423144852314498123423632234§,false,0,true);
         addr0161:
         this.§switch for case§.addEventListener("keyDown",this.§521423150862315099123423632234§,false,0,true);
         this.§5214233106233119123423632234§.height = this.§521423191582319171123423632234§.y + this.§5214231973231986123423632234§.y + 11;
         this.§package use case§();
         stage.addEventListener("resize",this.§package use case§);
         addEventListener("removedFromStage",this.§dynamic switch final§);
      }
      
      public function set §5214232691232704123423632234§(param1:String) : void
      {
         this.§switch for case§.§5214234618234631123423632234§.text = param1;
      }
      
      private function §521423150862315099123423632234§(param1:KeyboardEvent) : void
      {
         while(true)
         {
            if(!_loc2_)
            {
               if(param1.keyCode != 13)
               {
                  break;
               }
               if(_loc3_)
               {
                  break;
               }
            }
            this.§521423144852314498123423632234§(null);
            break;
         }
      }
      
      public function get §5214232691232704123423632234§() : String
      {
         return this.§switch for case§.§5214234618234631123423632234§.text;
      }
      
      private function §521423144852314498123423632234§(param1:MouseEvent) : void
      {
         if(!_loc2_)
         {
            §521423121872312200123423632234§.§521423133382313351123423632234§(this.§5214232691232704123423632234§);
         }
      }
   }
}

