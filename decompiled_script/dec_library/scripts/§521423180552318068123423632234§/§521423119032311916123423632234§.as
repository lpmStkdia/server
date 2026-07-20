package §521423180552318068123423632234§
{
   import §521423188792318892123423632234§.§do function else§;
   import §false finally function§.§5214234851234864123423632234§;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import §var switch extends§.§5214232358232371123423632234§;
   import §with super for§.§521423192252319238123423632234§;
   
   public class §521423119032311916123423632234§ extends Sprite
   {
      
      private var §var package while§:§521423192252319238123423632234§;
      
      private var §5214235021235034123423632234§:Bitmap;
      
      private var §5214232990233003123423632234§:Bitmap;
      
      private var §switch use try§:§5214232358232371123423632234§;
      
      private var score:Number = 0;
      
      private var §521423172712317284123423632234§:Sprite = new Sprite();
      
      public function §521423119032311916123423632234§(param1:§521423192252319238123423632234§, param2:Boolean)
      {
         super();
         this.§var package while§ = param1;
         this.§521423156022315615123423632234§(param2);
      }
      
      private static function §521423150282315041123423632234§(param1:§5214234851234864123423632234§) : Bitmap
      {
         return new Bitmap(§const switch each§.§521423137472313760123423632234§(param1),"auto",true);
      }
      
      private function §5214232202232215123423632234§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(param1 < -100)
         {
            param1 = -100;
         }
         else if(param1 > 100)
         {
            param1 = 100;
         }
         if(this.score != param1)
         {
            if(param1 == 0)
            {
               this.§dynamic finally final§();
            }
            else
            {
               _loc2_ = (param1 > 0 ? param1 : -param1) / 100;
               this.§switch use try§.§521423174852317498123423632234§(1 - _loc2_,1);
               if(param1 < 0)
               {
                  this.§function finally while§();
               }
               else if(param1 > 0)
               {
                  this.§52142341223425123423632234§();
               }
            }
            this.score = param1;
         }
      }
      
      public function §521423172262317239123423632234§() : §521423192252319238123423632234§
      {
         return this.§var package while§;
      }
      
      private function §52142341223425123423632234§() : void
      {
         this.§521423172712317284123423632234§.visible = true;
         this.§521423163652316378123423632234§(this.§5214232990233003123423632234§,this.§5214235021235034123423632234§);
         this.§521423172712317284123423632234§.mask = this.§switch use try§;
      }
      
      private function §dynamic finally final§() : void
      {
         this.§521423172712317284123423632234§.visible = false;
      }
      
      private function §521423163652316378123423632234§(param1:DisplayObject, param2:DisplayObject) : void
      {
         if(param2.parent == null)
         {
            if(param1.parent != null)
            {
               this.§521423172712317284123423632234§.removeChild(param1);
            }
            this.§521423172712317284123423632234§.addChild(param2);
         }
      }
      
      private function §521423156022315615123423632234§(param1:Boolean) : void
      {
         this.§5214235021235034123423632234§ = §521423150282315041123423632234§(§5214234851234864123423632234§.§521423181842318197123423632234§);
         this.§5214232990233003123423632234§ = §521423150282315041123423632234§(§5214234851234864123423632234§.§5214233099233112123423632234§);
         addChild(§521423150282315041123423632234§(§5214234851234864123423632234§.§5214238074238087123423632234§));
         addChild(this.§521423172712317284123423632234§);
         this.§switch use try§ = new §5214232358232371123423632234§(this.§5214235021235034123423632234§.width,false,param1);
         this.§521423172712317284123423632234§.addChild(this.§switch use try§);
         addChild(new Bitmap(§const switch each§.§return super const§(this.§var package while§.§5214238075238088123423632234§().charAt(0))));
         this.§dynamic finally final§();
      }
      
      public function §function const package§() : void
      {
         this.§5214232202232215123423632234§(this.§var package while§.§case finally catch§());
      }
      
      public function §521423189222318935123423632234§(param1:§do function else§) : void
      {
         this.§var package while§.§521423125142312527123423632234§(param1);
      }
      
      private function §function finally while§() : void
      {
         this.§521423172712317284123423632234§.visible = true;
         this.§521423163652316378123423632234§(this.§5214235021235034123423632234§,this.§5214232990233003123423632234§);
         this.§521423172712317284123423632234§.mask = this.§switch use try§;
      }
   }
}

