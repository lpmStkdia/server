package §5214236614236627123423632234§
{
   import §521423115552311568123423632234§.§521423113502311363123423632234§;
   import §521423115552311568123423632234§.§5214234016234029123423632234§;
   import §521423126202312633123423632234§.TanksFontService;
   import §5214234310234323123423632234§.§break while override§;
   import §class switch implements§.§521423102942310307123423632234§;
   import §class switch implements§.§521423129342312947123423632234§;
   import §class switch implements§.§else function class§;
   import §class switch implements§.§true use with§;
   import §else while static§.§521423113812311394123423632234§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.text.TextFormat;
   
   public class §true in§ extends §521423113502311363123423632234§
   {
      
      private var §if function case§:TextFormat = TanksFontService.getTextFormat(13);
      
      private var §break for with§:DisplayObject;
      
      private var §521423169322316945123423632234§:§else function class§;
      
      private var §const while super§:§else function class§;
      
      private var §5214238909238922123423632234§:§else function class§;
      
      public function §true in§()
      {
         if(!_loc2_)
         {
            this.§521423169322316945123423632234§ = new §521423102942310307123423632234§();
            this.§const while super§ = new §521423129342312947123423632234§();
            if(!_loc1_)
            {
               this.§5214238909238922123423632234§ = new §true use with§();
               super();
               this.§if function case§.color = 16777215;
            }
            §with switch include§("textFormat",this.§if function case§);
            §with switch include§("embedFonts",TanksFontService.isEmbedFonts());
         }
      }
      
      override protected function drawLayout() : void
      {
         if(!_loc2_)
         {
            super.drawLayout();
            if(!_loc1_)
            {
               §with set dynamic§.width = width - 4;
               if(!_loc2_)
               {
                  §with set dynamic§.height = height;
               }
            }
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:§else function class§ = null;
         §else use null§ = param1;
         this.mouseChildren = true;
         this.buttonMode = this.useHandCursor = false;
         this.§break for with§ = this.§521423170162317029123423632234§(§else use null§);
         switch(§else use null§.style)
         {
            case "green":
               _loc2_ = this.§521423169322316945123423632234§;
               break;
            case "red":
               _loc2_ = this.§const while super§;
               break;
            case "blue":
               _loc2_ = this.§5214238909238922123423632234§;
         }
         §with switch include§("upSkin",_loc2_);
         §with switch include§("downSkin",_loc2_);
         §with switch include§("overSkin",_loc2_);
         §with switch include§("selectedUpSkin",_loc2_);
         §with switch include§("selectedOverSkin",_loc2_);
         §with switch include§("selectedDownSkin",_loc2_);
      }
      
      override public function set listData(param1:§5214234016234029123423632234§) : void
      {
         §5214231054231067123423632234§ = param1;
         if(this.§break for with§ != null)
         {
            §with switch include§("icon",this.§break for with§);
         }
      }
      
      private function §521423170162317029123423632234§(param1:Object) : Sprite
      {
         var _loc3_:Sprite = null;
         var _loc2_:§521423113812311394123423632234§ = null;
         var _loc4_:§break while override§ = null;
         var _loc5_:§break while override§ = null;
         while(true)
         {
            if(!_loc6_)
            {
               if(§for var native§ >= 0)
               {
                  break;
               }
               if(_loc7_)
               {
                  break;
               }
            }
            §for var native§ = 20;
            break;
         }
         _loc3_ = new Sprite();
         while(true)
         {
            if(!_loc7_)
            {
               if(param1.id == null)
               {
                  _loc5_ = new §break while override§();
                  _loc5_.text = param1.noNameText;
                  if(!_loc6_)
                  {
                     _loc5_.alpha = 0.5;
                     if(_loc7_)
                     {
                        break;
                     }
                  }
                  _loc5_.x = 10;
                  if(!_loc7_)
                  {
                     _loc3_.addChild(_loc5_);
                  }
                  break;
               }
            }
            _loc2_ = new §521423113812311394123423632234§(param1.id);
            if(!_loc6_)
            {
               if(param1.suspicious)
               {
                  _loc2_.§default super finally§(16048128,true);
               }
               else
               {
                  _loc2_.§default super finally§(16777215);
               }
               _loc2_.x = -4;
            }
            _loc2_.y = 0;
            _loc3_.addChild(_loc2_);
            _loc4_ = new §break while override§();
            _loc4_.mouseEnabled = false;
            _loc4_.color = 16777215;
            while(true)
            {
               if(!_loc6_)
               {
                  _loc4_.autoSize = "none";
                  if(!_loc7_)
                  {
                     _loc4_.align = "right";
                     if(_loc6_)
                     {
                        break;
                     }
                  }
                  _loc4_.text = param1.kills;
               }
               _loc4_.height = 20;
               break;
            }
            _loc4_.width = 120;
            §§push(_loc4_);
            §§push(§for var native§);
            if(!_loc7_)
            {
               §§push(§§pop() - 135);
            }
            §§pop().x = §§pop();
            _loc4_.y = 0;
            _loc3_.addChild(_loc4_);
            break;
         }
         return _loc3_;
      }
      
      override protected function drawIcon() : void
      {
         var _loc1_:DisplayObject = icon;
         while(true)
         {
            if(!_loc5_)
            {
               if(!enabled)
               {
                  §§push("disabled");
                  if(!_loc5_)
                  {
                     break;
                  }
                  addr0036:
                  var _loc2_:* = §§pop();
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        if(!selected)
                        {
                           break;
                        }
                        if(_loc4_)
                        {
                           break;
                        }
                     }
                     loop2:
                     while(true)
                     {
                        §§push("selected");
                        if(!_loc4_)
                        {
                           loop3:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!_loc4_)
                                 {
                                    §§push(0);
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() + §§pop().substr(§§pop(),1).toUpperCase());
                                    if(_loc4_)
                                    {
                                       break loop3;
                                    }
                                    §§push(_loc2_);
                                 }
                                 §§push(1);
                                 break;
                              }
                              §§push(§§pop() + §§pop().substr(§§pop()));
                              if(!_loc4_)
                              {
                                 break;
                              }
                              break loop2;
                           }
                        }
                        break loop3;
                     }
                     addr00a5:
                     _loc2_ = §§pop();
                     var _loc3_:Object = §default catch false§(_loc2_);
                     while(true)
                     {
                        if(_loc3_ == null)
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           _loc3_ = §default catch false§("icon");
                        }
                        if(_loc3_ != null)
                        {
                           break;
                        }
                        §§goto(addr00de);
                     }
                     icon = §continue while case§(_loc3_);
                     addr00de:
                     while(true)
                     {
                        if(icon != null)
                        {
                           addChildAt(icon,1);
                           if(_loc4_)
                           {
                              break;
                           }
                        }
                        var _temp_1:* = _loc1_ != null;
                        §§push(_temp_1);
                        §§push(_temp_1);
                        if(!_loc5_)
                        {
                           if(§§pop())
                           {
                              §§pop();
                              §§push(_loc1_ != icon);
                           }
                           var _temp_2:* = §§pop();
                           §§push(_temp_2);
                           §§push(_temp_2);
                        }
                        if(§§pop())
                        {
                           §§pop();
                           §§push(_loc1_.parent == this);
                        }
                        if(§§pop())
                        {
                           removeChild(_loc1_);
                        }
                        break;
                     }
                     return;
                     addr00a4:
                  }
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     §§goto(addr00a4);
                     §§push(§§pop() + "Icon");
                  }
                  §§goto(addr00a5);
               }
            }
            §§push(§import catch switch§);
            if(_loc4_)
            {
            }
            break;
         }
         §§goto(addr0036);
      }
   }
}

