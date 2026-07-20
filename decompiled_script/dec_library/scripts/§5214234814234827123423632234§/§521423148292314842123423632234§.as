package §5214234814234827123423632234§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import §implements use var§.§5214232504232517123423632234§;
   import §var switch try§.§5214235726235739123423632234§;
   import §var switch try§.§5214238393238406123423632234§;
   
   public class §521423148292314842123423632234§ extends Sprite implements §5214238393238406123423632234§
   {
      
      private var §5214231386231399123423632234§:§5214232504232517123423632234§;
      
      private var §521423153702315383123423632234§:Bitmap;
      
      private var §521423192522319265123423632234§:Number;
      
      private var §set finally use§:Number;
      
      public function §521423148292314842123423632234§(param1:§5214232504232517123423632234§, param2:Number, param3:Number)
      {
         super();
         this.§5214231386231399123423632234§ = param1;
         this.§521423192522319265123423632234§ = param2;
         this.§set finally use§ = param3;
         this.§5214239350239363123423632234§();
      }
      
      public function §import finally switch§(param1:§5214232504232517123423632234§) : void
      {
         var _loc2_:§5214232504232517123423632234§ = this.§5214231386231399123423632234§;
         if(_loc2_.§false catch override§.id == param1.§false catch override§.id)
         {
            this.§return catch break§(this.§5214231386231399123423632234§.data);
         }
      }
      
      private function §5214239350239363123423632234§() : void
      {
         graphics.clear();
         graphics.beginFill(16711680,0);
         graphics.drawRect(0,0,this.§521423192522319265123423632234§,this.§set finally use§);
         graphics.endFill();
         var _loc1_:§5214232504232517123423632234§ = this.§5214231386231399123423632234§;
         if(_loc1_.§false catch override§.§5214236765236778123423632234§ && (_loc2_.§null set case§ & 1) == 0)
         {
            this.§5214231386231399123423632234§.§extends finally import§(new §5214235726235739123423632234§(this));
         }
         else
         {
            this.§return catch break§(this.§5214231386231399123423632234§.data);
         }
      }
      
      private function §return catch break§(param1:BitmapData) : void
      {
         if(this.§521423153702315383123423632234§ != null && this.contains(this.§521423153702315383123423632234§))
         {
            removeChild(this.§521423153702315383123423632234§);
         }
         this.§521423153702315383123423632234§ = new Bitmap(param1);
         addChild(this.§521423153702315383123423632234§);
         this.§521423153702315383123423632234§.x = this.§521423192522319265123423632234§ - this.§521423153702315383123423632234§.width >> 1;
         this.§521423153702315383123423632234§.y = this.§set finally use§ - this.§521423153702315383123423632234§.height >> 1;
      }
   }
}

