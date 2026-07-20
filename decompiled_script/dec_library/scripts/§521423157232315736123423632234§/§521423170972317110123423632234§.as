package §521423157232315736123423632234§
{
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §521423170972317110123423632234§ extends Sprite
   {
      
      private static const §5214234274234287123423632234§:int = 16;
      
      private static const §521423147112314724123423632234§:int = 1;
      
      private static const §throw while try§:uint = 16777215;
      
      private static const §5214231687231700123423632234§:uint = 0;
      
      private static const §case set try§:Number = 1;
      
      private static const §set function try§:Number = 0.85;
      
      private static const §break switch else§:int = 24;
      
      private static const §with for import§:int = 24;
      
      private static var §521423121772312190123423632234§:TextFormat;
      
      private static var §52142337323386123423632234§:Boolean = false;
      
      if(!_loc2_)
      {
         §521423121772312190123423632234§ = new TextFormat("Tahoma",10,16777215,true);
      }
      
      private var §521423165092316522123423632234§:Shape;
      
      private var §5214238495238508123423632234§:Shape;
      
      private var §5214233956233969123423632234§:int = 48;
      
      private var §521423152322315245123423632234§:int;
      
      private var §override while while§:Point = new Point();
      
      private var §521423103942310407123423632234§:Point = new Point();
      
      private var §5214234523234536123423632234§:Point = new Point();
      
      private var §package while do§:Point = new Point();
      
      private var §521423186042318617123423632234§:Point = new Point();
      
      private var §521423188442318857123423632234§:Point;
      
      private var §5214238108238121123423632234§:Boolean;
      
      private var §in for function§:TextField;
      
      private const §while var with§:int = 12;
      
      private var §in while null§:Sprite;
      
      private var §5214233246233259123423632234§:Point;
      
      public var §default for false§:Point;
      
      public function §521423170972317110123423632234§(param1:Point)
      {
         while(true)
         {
            if(!_loc3_)
            {
               this.§521423188442318857123423632234§ = new Point();
               super();
               this.§5214233246233259123423632234§ = new Point();
               this.§default for false§ = param1;
               this.§in while null§ = new Sprite();
               while(true)
               {
                  if(!_loc2_)
                  {
                     this.§in while null§.mouseEnabled = false;
                     this.§in while null§.mouseChildren = false;
                     this.§in while null§.tabEnabled = false;
                     if(!_loc2_)
                     {
                        this.§in while null§.tabChildren = false;
                        if(_loc3_)
                        {
                           break;
                        }
                        this.§5214238495238508123423632234§ = new Shape();
                        this.§in while null§.addChild(this.§5214238495238508123423632234§);
                        this.§521423165092316522123423632234§ = new Shape();
                        this.§in while null§.addChild(this.§521423165092316522123423632234§);
                     }
                  }
                  addChild(this.§in while null§);
                  this.§521423135262313539123423632234§ = 34;
                  this.§in for function§ = new TextField();
                  this.§in for function§.defaultTextFormat = §521423121772312190123423632234§;
                  if(!_loc2_)
                  {
                     this.§in for function§.embedFonts = §52142337323386123423632234§;
                  }
                  this.§in for function§.antiAliasType = "advanced";
                  break;
               }
               this.§in for function§.gridFitType = "subpixel";
               if(_loc2_)
               {
                  break;
               }
               this.§in for function§.autoSize = "left";
            }
            this.§in for function§.sharpness = -150;
            this.§in for function§.wordWrap = false;
            break;
         }
         this.§in for function§.multiline = true;
         this.§in for function§.selectable = false;
         addChild(this.§in for function§);
         this.§in for function§.x = 12 - 3;
         this.§in for function§.y = 12 - 4;
         if(!_loc2_)
         {
            this.§in for function§.mouseEnabled = false;
         }
         this.§in for function§.tabEnabled = false;
         if(!_loc3_)
         {
            addEventListener("addedToStage",this.§const use use§);
         }
      }
      
      public function set text(param1:String) : void
      {
         this.§in for function§.htmlText = param1;
         this.§5214233246233259123423632234§.x = Math.round(this.§in for function§.textWidth + 12 * 2);
         this.§5214233246233259123423632234§.y = Math.round(this.§in for function§.textHeight + 12 * 2) - 3;
      }
      
      private function §521423116222311635123423632234§(param1:MouseEvent) : void
      {
         if(!_loc3_)
         {
            parent.removeChild(this);
         }
      }
      
      public function set §521423135262313539123423632234§(param1:int) : void
      {
         if(param1 == 18)
         {
            this.§521423152322315245123423632234§ = 12;
         }
         else
         {
            this.§521423152322315245123423632234§ = param1;
         }
         if(Boolean(this.§521423152322315245123423632234§ & 1) || Boolean(this.§521423152322315245123423632234§ & 4))
         {
            this.§5214238108238121123423632234§ = true;
         }
         else
         {
            this.§5214238108238121123423632234§ = false;
         }
      }
      
      public function set §5214231042231055123423632234§(param1:int) : void
      {
         this.§5214233956233969123423632234§ = param1;
      }
      
      private function §const use use§(param1:Event) : void
      {
         removeEventListener("addedToStage",this.§const use use§);
         this.§continue use const§();
         addEventListener("removedFromStage",this.§dynamic switch final§);
         addEventListener("click",this.§521423116222311635123423632234§);
         if(!_loc3_)
         {
            stage.addEventListener("resize",this.§use use static§);
            this.§use use static§();
         }
      }
      
      public function §var package class§() : void
      {
         while(true)
         {
            if(!_loc2_)
            {
               if(!parent)
               {
                  break;
               }
               if(_loc1_)
               {
                  break;
               }
            }
            parent.removeChild(this);
            break;
         }
      }
      
      protected function §continue use const§() : void
      {
         this.§5214238495238508123423632234§.graphics.clear();
         this.§5214238495238508123423632234§.graphics.beginFill(16777215,1);
         this.§5214238495238508123423632234§.graphics.drawRoundRect(-1,-1,this.§5214233246233259123423632234§.x + 1 * 2,this.§5214233246233259123423632234§.y + 1 * 2,16 + 2,16 + 2);
         this.§5214238495238508123423632234§.graphics.drawRoundRect(0,0,this.§5214233246233259123423632234§.x,this.§5214233246233259123423632234§.y,16,16);
         this.§521423165092316522123423632234§.graphics.clear();
         this.§521423165092316522123423632234§.graphics.beginFill(0,0.85);
         this.§521423165092316522123423632234§.graphics.drawRoundRect(0,0,this.§5214233246233259123423632234§.x,this.§5214233246233259123423632234§.y,16,16);
         §§push(this.§5214233956233969123423632234§ / 24);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        if(this.§521423152322315245123423632234§ & 1)
                        {
                           this.§override while while§.y = 0;
                           this.§521423103942310407123423632234§.y = 0;
                           this.§5214234523234536123423632234§.y = -this.§5214233956233969123423632234§;
                           this.§package while do§.y = 0;
                           this.§521423186042318617123423632234§.y = 0;
                           this.§521423188442318857123423632234§.y = -_loc1_ * (24 + 1 * 2);
                           addr01ef:
                           while(true)
                           {
                              if(this.§521423152322315245123423632234§ & 8)
                              {
                                 §§push(this.§5214238108238121123423632234§);
                                 if(!_loc2_)
                                 {
                                    §§push(true);
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    loop6:
                                    while(true)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      this.§5214234523234536123423632234§.x = 24;
                                                      if(_loc2_)
                                                      {
                                                         break loop2;
                                                      }
                                                      this.§override while while§.x = 24;
                                                      if(_loc3_)
                                                      {
                                                         break loop4;
                                                      }
                                                      this.§521423103942310407123423632234§.x = 24 + 24;
                                                      if(!_loc3_)
                                                      {
                                                         this.§521423188442318857123423632234§.x = 24 - 1;
                                                         if(!_loc3_)
                                                         {
                                                            addr024a:
                                                            this.§package while do§.x = 24 - 1;
                                                            addr0255:
                                                            this.§521423186042318617123423632234§.x = 24 + 24 + 1;
                                                            addr02b3:
                                                            addr02b9:
                                                            §§push(this.§521423152322315245123423632234§ & 1);
                                                            if(!_loc3_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  this.§5214238495238508123423632234§.graphics.drawRect(this.§override while while§.x,this.§override while while§.y - 1,this.§521423103942310407123423632234§.x - this.§override while while§.x,1);
                                                                  break loop1;
                                                               }
                                                               §§push(this.§521423152322315245123423632234§ & 2);
                                                               if(!_loc2_)
                                                               {
                                                                  addr02fd:
                                                                  if(§§pop())
                                                                  {
                                                                     this.§5214238495238508123423632234§.graphics.drawRect(this.§override while while§.x - 1,this.§override while while§.y,1,this.§521423103942310407123423632234§.y - this.§override while while§.y);
                                                                     break loop1;
                                                                  }
                                                                  this.§5214238495238508123423632234§.graphics.drawRect(this.§override while while§.x,this.§override while while§.y,this.§521423103942310407123423632234§.x - this.§override while while§.x,1);
                                                                  break loop1;
                                                               }
                                                               addr03d2:
                                                               addr03d2:
                                                               §§push(1);
                                                               if(!_loc2_)
                                                               {
                                                                  if(§§pop() & §§pop())
                                                                  {
                                                                     this.§5214238495238508123423632234§.graphics.drawRect(this.§override while while§.x,this.§override while while§.y - 1,this.§521423103942310407123423632234§.x - this.§override while while§.x,1);
                                                                     addr0407:
                                                                  }
                                                                  else
                                                                  {
                                                                     this.§5214238495238508123423632234§.graphics.drawRect(this.§override while while§.x,this.§override while while§.y,this.§521423103942310407123423632234§.x - this.§override while while§.x,1);
                                                                  }
                                                                  addr0430:
                                                                  break loop0;
                                                               }
                                                               break loop9;
                                                            }
                                                            §§goto(addr0512);
                                                         }
                                                         else
                                                         {
                                                            addr043d:
                                                            this.§5214234523234536123423632234§.x = this.§5214233246233259123423632234§.x - 24;
                                                            this.§override while while§.x = this.§5214234523234536123423632234§.x;
                                                            if(_loc3_)
                                                            {
                                                               break loop7;
                                                            }
                                                            this.§521423103942310407123423632234§.x = this.§override while while§.x - 24;
                                                            this.§521423188442318857123423632234§.x = this.§5214234523234536123423632234§.x + 1;
                                                            if(_loc2_)
                                                            {
                                                               break loop6;
                                                            }
                                                            this.§package while do§.x = this.§521423188442318857123423632234§.x;
                                                            this.§521423186042318617123423632234§.x = this.§5214234523234536123423632234§.x - 24 - 1;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr04b5:
                                                         this.§override while while§.x = this.§5214233246233259123423632234§.x;
                                                         this.§521423103942310407123423632234§.x = this.§5214233246233259123423632234§.x;
                                                         this.§521423188442318857123423632234§.x = this.§5214233246233259123423632234§.x + _loc1_ * (24 + 1 * 2);
                                                         if(!_loc3_)
                                                         {
                                                            this.§package while do§.x = this.§5214233246233259123423632234§.x;
                                                            this.§521423186042318617123423632234§.x = this.§5214233246233259123423632234§.x;
                                                            break;
                                                         }
                                                         §§goto(addr054d);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      this.§5214234523234536123423632234§.x = -this.§5214233956233969123423632234§;
                                                      addr0272:
                                                      this.§override while while§.x = 0;
                                                      if(!_loc3_)
                                                      {
                                                         this.§521423103942310407123423632234§.x = 0;
                                                         this.§521423188442318857123423632234§.x = -_loc1_ * (24 + 1 * 2);
                                                         if(!_loc2_)
                                                         {
                                                            this.§package while do§.x = 0;
                                                            if(_loc3_)
                                                            {
                                                               break loop2;
                                                            }
                                                            this.§521423186042318617123423632234§.x = 0;
                                                            §§goto(addr02b3);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr043d);
                                                         }
                                                      }
                                                   }
                                                   addr04a0:
                                                   break;
                                                }
                                                addr0501:
                                                §§push(this.§521423152322315245123423632234§);
                                                §§push(1);
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                break loop8;
                                             }
                                             §§push(§§pop() & §§pop());
                                             if(!_loc3_)
                                             {
                                                addr0512:
                                                if(§§pop())
                                                {
                                                   break loop7;
                                                }
                                                §§push(this.§521423152322315245123423632234§);
                                                §§push(2);
                                                break;
                                             }
                                             §§goto(addr0549);
                                          }
                                          addr0549:
                                          if(§§pop() & §§pop())
                                          {
                                             addr054d:
                                             this.§5214238495238508123423632234§.graphics.drawRect(this.§override while while§.x,this.§override while while§.y,1,this.§521423103942310407123423632234§.y - this.§override while while§.y);
                                             break loop0;
                                          }
                                          this.§5214238495238508123423632234§.graphics.drawRect(this.§override while while§.x,this.§override while while§.y,this.§521423103942310407123423632234§.x - this.§override while while§.x,1);
                                          break loop0;
                                       }
                                       this.§5214238495238508123423632234§.graphics.drawRect(this.§override while while§.x,this.§override while while§.y - 1,this.§521423103942310407123423632234§.x - this.§override while while§.x,1);
                                       break loop0;
                                    }
                                    §§goto(addr05f9);
                                 }
                              }
                              else if(this.§521423152322315245123423632234§ & 0x10)
                              {
                                 if(_loc2_)
                                 {
                                    break loop0;
                                 }
                                 this.§5214234523234536123423632234§.x = this.§5214233246233259123423632234§.x - 24 >> 1;
                                 if(!_loc2_)
                                 {
                                    this.§override while while§.x = this.§5214234523234536123423632234§.x;
                                    this.§521423103942310407123423632234§.x = this.§5214234523234536123423632234§.x + 24;
                                    this.§521423188442318857123423632234§.x = this.§5214234523234536123423632234§.x - 1;
                                    this.§package while do§.x = this.§521423188442318857123423632234§.x;
                                    this.§521423186042318617123423632234§.x = this.§521423103942310407123423632234§.x + 1;
                                    §§push(this.§521423152322315245123423632234§);
                                    if(!_loc2_)
                                    {
                                       §§goto(addr03d2);
                                    }
                                    §§goto(addr0549);
                                 }
                                 §§goto(addr0607);
                              }
                              else
                              {
                                 §§push(this.§5214238108238121123423632234§);
                              }
                              §§push(true);
                              break;
                           }
                           while(true)
                           {
                              if(§§pop() == §§pop())
                              {
                                 §§goto(addr043d);
                              }
                              else
                              {
                                 this.§5214234523234536123423632234§.x = this.§5214233246233259123423632234§.x + this.§5214233956233969123423632234§;
                                 §§goto(addr04b5);
                              }
                           }
                           §§goto(addr054d);
                        }
                        else
                        {
                           §§push(this.§521423152322315245123423632234§);
                           if(!_loc2_)
                           {
                              while(true)
                              {
                                 §§push(2);
                                 if(!_loc2_)
                                 {
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(§§pop() & §§pop())
                                          {
                                             this.§override while while§.y = this.§5214233246233259123423632234§.y - 24 >> 1;
                                             this.§521423103942310407123423632234§.y = this.§override while while§.y + 24;
                                             this.§5214234523234536123423632234§.y = this.§override while while§.y;
                                             if(_loc2_)
                                             {
                                                break loop3;
                                             }
                                             this.§package while do§.y = this.§override while while§.y - 1;
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   this.§521423186042318617123423632234§.y = this.§override while while§.y + 24 + 1;
                                                   this.§521423188442318857123423632234§.y = this.§package while do§.y;
                                                   §§goto(addr01ef);
                                                }
                                                §§goto(addr0407);
                                             }
                                             §§goto(addr0430);
                                          }
                                          else
                                          {
                                             this.§override while while§.y = this.§5214233246233259123423632234§.y;
                                             if(!_loc2_)
                                             {
                                                this.§521423103942310407123423632234§.y = this.§5214233246233259123423632234§.y;
                                                this.§5214234523234536123423632234§.y = this.§5214233246233259123423632234§.y + this.§5214233956233969123423632234§;
                                                this.§package while do§.y = this.§5214233246233259123423632234§.y;
                                                if(!_loc3_)
                                                {
                                                   this.§521423186042318617123423632234§.y = this.§5214233246233259123423632234§.y;
                                                   if(!_loc3_)
                                                   {
                                                      this.§521423188442318857123423632234§.y = this.§5214233246233259123423632234§.y + _loc1_ * (24 + 1 * 2);
                                                      if(!_loc2_)
                                                      {
                                                         §§goto(addr01ef);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr024a);
                                                      }
                                                   }
                                                   §§goto(addr0255);
                                                }
                                                else
                                                {
                                                   §§goto(addr0272);
                                                }
                                             }
                                          }
                                          §§goto(addr0482);
                                       }
                                       §§goto(addr04a0);
                                    }
                                    §§goto(addr0501);
                                 }
                                 §§goto(addr02b9);
                              }
                              §§goto(addr03d2);
                           }
                        }
                        §§goto(addr02fd);
                     }
                     §§goto(addr065f);
                  }
                  §§goto(addr068b);
               }
               §§goto(addr061d);
            }
            break;
         }
         this.§521423165092316522123423632234§.graphics.moveTo(this.§5214234523234536123423632234§.x,this.§5214234523234536123423632234§.y);
         this.§521423165092316522123423632234§.graphics.lineTo(this.§override while while§.x,this.§override while while§.y);
         this.§521423165092316522123423632234§.graphics.lineTo(this.§521423103942310407123423632234§.x,this.§521423103942310407123423632234§.y);
         this.§521423165092316522123423632234§.graphics.lineTo(this.§5214234523234536123423632234§.x,this.§5214234523234536123423632234§.y);
         if(!_loc2_)
         {
            addr05f9:
            this.§5214238495238508123423632234§.graphics.beginFill(16777215,1);
            addr0607:
            this.§5214238495238508123423632234§.graphics.moveTo(this.§521423188442318857123423632234§.x,this.§521423188442318857123423632234§.y);
            addr061d:
            this.§5214238495238508123423632234§.graphics.lineTo(this.§package while do§.x,this.§package while do§.y);
            this.§5214238495238508123423632234§.graphics.lineTo(this.§521423186042318617123423632234§.x,this.§521423186042318617123423632234§.y);
            this.§5214238495238508123423632234§.graphics.lineTo(this.§521423188442318857123423632234§.x,this.§521423188442318857123423632234§.y);
            addr065f:
            this.§5214238495238508123423632234§.graphics.moveTo(this.§5214234523234536123423632234§.x,this.§5214234523234536123423632234§.y);
            this.§5214238495238508123423632234§.graphics.lineTo(this.§override while while§.x,this.§override while while§.y);
            addr068b:
            this.§5214238495238508123423632234§.graphics.lineTo(this.§521423103942310407123423632234§.x,this.§521423103942310407123423632234§.y);
            this.§5214238495238508123423632234§.graphics.lineTo(this.§5214234523234536123423632234§.x,this.§5214234523234536123423632234§.y);
         }
         this.§in for function§.width = this.§5214233246233259123423632234§.x - 12 * 2;
      }
      
      protected function §try var finally§() : void
      {
         while(true)
         {
            if(!_loc2_)
            {
               this.x = Math.round(this.§default for false§.x - this.§521423188442318857123423632234§.x);
               if(_loc2_)
               {
                  break;
               }
            }
            this.y = Math.round(this.§default for false§.y - this.§521423188442318857123423632234§.y);
            break;
         }
      }
      
      public function get §521423135262313539123423632234§() : int
      {
         return this.§521423152322315245123423632234§;
      }
      
      private function §use use static§(param1:Event = null) : void
      {
         if(!_loc2_)
         {
            this.§try var finally§();
         }
      }
      
      public function get §5214231042231055123423632234§() : int
      {
         return this.§5214233956233969123423632234§;
      }
      
      private function §dynamic switch final§(param1:Event) : void
      {
         if(!_loc3_)
         {
            removeEventListener("removedFromStage",this.§dynamic switch final§);
            if(!_loc2_)
            {
               stage.removeEventListener("resize",this.§use use static§);
               if(!_loc3_)
               {
                  stage.removeEventListener("click",this.§521423116222311635123423632234§);
               }
            }
         }
      }
   }
}

