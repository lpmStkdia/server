package §521423119732311986123423632234§
{
   import §5214234310234323123423632234§.§break while override§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import §package for for§.§521423115642311577123423632234§;
   import §package for for§.§521423185122318525123423632234§;
   import §package for for§.§get for import§;
   import §package for for§.§in for try§;
   
   public class §var set switch§ extends Sprite
   {
      
      private static var §5214232165232178123423632234§:BitmapData;
      
      private static var §521423148862314899123423632234§:BitmapData;
      
      private static var §521423110722311085123423632234§:BitmapData;
      
      while(true)
      {
         if(!_loc2_)
         {
            §5214232165232178123423632234§ = new §in for try§(0,0);
            if(_loc1_)
            {
               break;
            }
            §521423148862314899123423632234§ = new §521423185122318525123423632234§(0,0);
            if(_loc2_)
            {
               break;
            }
         }
         §521423110722311085123423632234§ = new §get for import§(0,0);
         if(!_loc2_)
         {
            break;
         }
         §§goto(addr006b);
      }
      
      private static var §false switch implements§:BitmapData = new §521423115642311577123423632234§(0,0);
      
      addr006b:
      
      public function §var set switch§(param1:Boolean, param2:Boolean, param3:int, param4:uint)
      {
         while(true)
         {
            if(!_loc6_)
            {
               super();
               if(_loc6_)
               {
                  break;
               }
            }
            this.§5214239350239363123423632234§(param1,param2,param3,param4);
            break;
         }
      }
      
      private function §5214239350239363123423632234§(param1:Boolean, param2:Boolean, param3:int, param4:uint) : void
      {
         var _loc5_:Bitmap = null;
         graphics.clear();
         if(!_loc8_)
         {
            graphics.beginFill(16711680,0);
            graphics.drawRect(0,0,18,16);
         }
         graphics.endFill();
         loop0:
         while(true)
         {
            §§push(param2);
            if(!_loc8_)
            {
               if(§§pop())
               {
                  §§push(param1);
                  if(!_loc8_)
                  {
                     §§goto(addr004c);
                  }
               }
               else
               {
                  §§push(param1);
               }
               if(§§pop())
               {
                  _loc5_ = new Bitmap(§false switch implements§);
                  break;
               }
               _loc5_ = new Bitmap(§521423110722311085123423632234§);
               break;
            }
            addr004c:
            while(true)
            {
               if(§§pop())
               {
                  _loc5_ = new Bitmap(§521423148862314899123423632234§);
                  if(_loc7_)
                  {
                     break;
                  }
               }
               else
               {
                  _loc5_ = new Bitmap(§5214232165232178123423632234§);
               }
               break loop0;
            }
            §§goto(addr00ae);
         }
         _loc5_.y = 3;
         if(!_loc7_)
         {
            addChild(_loc5_);
         }
         addr00ae:
         var _loc6_:§break while override§ = new §break while override§();
         _loc6_.text = String(param3);
         if(!_loc7_)
         {
            _loc6_.x = _loc5_.width;
            if(!_loc8_)
            {
               _loc6_.y = -1;
               if(!_loc8_)
               {
                  _loc6_.color = param4;
                  if(!_loc8_)
                  {
                     addChild(_loc6_);
                  }
               }
            }
         }
      }
   }
}

