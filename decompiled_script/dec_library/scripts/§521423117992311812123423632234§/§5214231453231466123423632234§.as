package §521423117992311812123423632234§
{
   import §5214231749231762123423632234§.§5214232716232729123423632234§;
   import §5214232469232482123423632234§.§521423148902314903123423632234§;
   import §5214232469232482123423632234§.§521423182022318215123423632234§;
   import flash.net.SharedObject;
   import flash.system.Capabilities;
   import §switch super get§.§case finally false§;
   import §with finally return§.§521423149192314932123423632234§;
   
   public class §5214231453231466123423632234§ extends §521423148902314903123423632234§ implements §521423182022318215123423632234§
   {
      
      public static var §5214231933231946123423632234§:§case finally false§;
      
      public static var §521423106022310615123423632234§:§521423149192314932123423632234§;
      
      private var §true package if§:Boolean = true;
      
      public function §5214231453231466123423632234§()
      {
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function §else set catch§(param1:String, param2:Boolean) : void
      {
         while(true)
         {
            if(!_loc3_)
            {
               this.§true package if§ = param2;
               if(_loc4_)
               {
                  break;
               }
            }
            §finally set implements§.§else set catch§(param1);
            break;
         }
      }
      
      public function §case switch get§() : void
      {
         var _loc1_:SharedObject = §521423106022310615123423632234§.§try var while§();
         while(true)
         {
            if(!_loc4_)
            {
               _loc1_.data.userHash = null;
               if(_loc4_)
               {
                  break;
               }
            }
            _loc1_.flush();
            break;
         }
         var _loc2_:SharedObject = §521423106022310615123423632234§.§continue super finally§();
         loop1:
         while(true)
         {
            while(true)
            {
               if(!_loc4_)
               {
                  if(!_loc2_.data[_loc1_.data.userName])
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     delete _loc2_.data[_loc1_.data.userName];
                     if(_loc4_)
                     {
                        break loop1;
                     }
                  }
               }
               _loc2_.flush();
               if(!_loc4_)
               {
                  break;
               }
               break loop1;
            }
            §5214231933231946123423632234§.§5214236795236808123423632234§();
            break;
         }
      }
      
      public function §521423185902318603123423632234§(param1:String) : void
      {
         if(!_loc8_)
         {
            §§push(this.§5214237355237368123423632234§(param1));
            if(!_loc8_)
            {
               §§push(§§pop());
            }
            param1 = §§pop();
         }
         var _loc4_:SharedObject = §521423106022310615123423632234§.§try var while§();
         while(true)
         {
            if(!_loc9_)
            {
               if(!this.§true package if§)
               {
                  break;
               }
               if(_loc8_)
               {
                  break;
               }
               _loc4_.data.userHash = param1;
               if(_loc9_)
               {
                  break;
               }
            }
            _loc4_.flush();
            break;
         }
         var _loc2_:String = _loc4_.data.userName;
         if(!_loc9_)
         {
            loop2:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc9_)
                  {
                     §§push(§§pop() == null);
                     if(_loc9_)
                     {
                        break;
                     }
                     var _temp_1:* = §§pop();
                     §§push(_temp_1);
                     if(_temp_1)
                     {
                        break;
                     }
                     if(_loc8_)
                     {
                        break;
                     }
                     §§pop();
                     if(_loc8_)
                     {
                        break loop2;
                     }
                     §§push(_loc2_);
                  }
                  §§push(§§pop().length == 0);
                  break;
               }
               if(§§pop())
               {
                  break;
               }
               var _loc3_:SharedObject = §521423106022310615123423632234§.§continue super finally§();
               var _loc7_:int = 0;
               var _loc6_:Object = _loc3_.data;
               loop4:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     if(!_loc9_)
                     {
                        for(var _loc5_ in _loc6_)
                        {
                           if(_loc5_.toLowerCase() == _loc2_.toLowerCase())
                           {
                              if(!_loc9_)
                              {
                                 delete _loc3_.data[_loc5_];
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 break loop4;
                              }
                              break loop5;
                           }
                        }
                     }
                     _loc3_.setProperty(_loc2_,param1);
                     if(!_loc9_)
                     {
                        break;
                     }
                     break loop4;
                  }
                  _loc3_.flush();
                  break;
               }
               return;
            }
         }
         break loop2;
      }
      
      private function §5214237355237368123423632234§(param1:String) : String
      {
         var _loc4_:* = 0;
         var _loc5_:String = Capabilities.language + String(Capabilities.cpuAddressSize) + Capabilities.version;
         var _loc2_:* = "";
         var _loc3_:int = param1.length;
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               if(!_loc7_)
               {
                  §§push(0);
                  if(_loc6_)
                  {
                     break;
                  }
                  _loc4_ = §§pop();
                  if(_loc6_)
                  {
                     break loop1;
                  }
               }
               addr004b:
               while(true)
               {
                  §§push(_loc4_);
                  break loop2;
               }
               §§goto(addr004b);
               addr007d:
            }
            if(§§pop() >= _loc3_)
            {
               break;
            }
            §§push(_loc2_);
            if(!_loc7_)
            {
               §§push(§§pop() + String.fromCharCode(param1.charCodeAt(_loc4_) ^ _loc5_.charCodeAt(_loc4_ % _loc5_.length)));
            }
            _loc2_ = §§pop();
            if(!_loc6_)
            {
               _loc4_++;
            }
            §§goto(addr007d);
         }
         return escape(_loc2_);
      }
   }
}

