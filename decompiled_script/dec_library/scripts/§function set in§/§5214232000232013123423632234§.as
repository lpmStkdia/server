package §function set in§
{
   import §class const package§.§get catch final§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §5214232000232013123423632234§
   {
      
      private static var §each while else§:Function;
      
      private static var §521423135722313585123423632234§:§get catch final§;
      
      public function §5214232000232013123423632234§()
      {
         if(!_loc1_)
         {
            super();
         }
      }
      
      private static function §static set default§(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.target as LoaderInfo;
         while(true)
         {
            if(!_loc3_)
            {
               §each while else§(_loc2_.loader.content as Bitmap,§521423135722313585123423632234§);
               if(!_loc3_)
               {
                  _loc2_.removeEventListener("complete",§static set default§);
                  if(_loc4_)
                  {
                     break;
                  }
               }
            }
            §each while else§ = null;
            break;
         }
      }
      
      public static function §throw while do§(param1:Vector.<int>, param2:Function, param3:§get catch final§) : void
      {
         var _loc7_:* = 0;
         if(!_loc9_)
         {
            §each while else§ = param2;
            if(!_loc8_)
            {
               §521423135722313585123423632234§ = param3;
            }
         }
         §§push(param1.length);
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc6_:ByteArray = new ByteArray();
         _loc6_.length = _loc4_;
         if(!_loc8_)
         {
            while(true)
            {
               §§push(0);
               if(!_loc8_)
               {
                  _loc7_ = §§pop();
                  if(_loc8_)
                  {
                     break;
                  }
                  while(true)
                  {
                  }
                  break;
                  addr0082:
               }
               if(§§pop() >= _loc4_)
               {
                  break;
               }
               _loc6_[_loc7_] = param1[_loc7_];
               if(!_loc9_)
               {
                  _loc7_++;
               }
               §§goto(addr0082);
            }
         }
         var _loc5_:Loader = new Loader();
         _loc5_.contentLoaderInfo.addEventListener("complete",§static set default§);
         if(!_loc8_)
         {
            _loc5_.loadBytes(_loc6_);
         }
      }
   }
}

