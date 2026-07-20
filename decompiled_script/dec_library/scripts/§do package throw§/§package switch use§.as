package §do package throw§
{
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Shadow;
   import §default package continue§.§package finally case§;
   import flash.utils.Dictionary;
   
   public class §package switch use§
   {
      
      private static const §5214231858231871123423632234§:Number = 7000;
      
      private static const §super catch each§:Number = 4000;
      
      private static const §5214234272234285123423632234§:Number = 2000;
      
      private static const §break super§:Number = 1000;
      
      private static const §import import§:Number = 0.01;
      
      private static const §override use each§:Number = 60;
      
      private static const §null package include§:Number = 20;
      
      private var §const catch continue§:Camera3D;
      
      private const §5214232805232818123423632234§:Dictionary = new Dictionary();
      
      private var §5214236373236386123423632234§:Number = 4000;
      
      private var §continue package set§:Number = 7000;
      
      private var enabled:Boolean;
      
      private var color:int;
      
      private var §5214233592233605123423632234§:Number = 0.85;
      
      public function §package switch use§(param1:Camera3D)
      {
         super();
         this.§const catch continue§ = param1;
      }
      
      public function §52142366623679123423632234§(param1:Shadow) : void
      {
         delete this.§5214232805232818123423632234§[param1];
         if(this.enabled)
         {
            this.§const catch continue§.removeShadow(param1);
         }
      }
      
      private function §override var final§() : void
      {
         for(var _loc1_ in this.§5214232805232818123423632234§)
         {
            _loc1_.nearDistance = this.§5214236373236386123423632234§;
            _loc1_.farDistance = this.§continue package set§;
         }
      }
      
      public function §throw set get§(param1:int) : void
      {
         this.color = param1;
      }
      
      public function §5214231576231589123423632234§(param1:Shadow) : void
      {
         param1.color = this.color;
         param1.alpha = this.§5214233592233605123423632234§;
         param1.nearDistance = this.§5214236373236386123423632234§;
         param1.farDistance = this.§continue package set§;
         this.§5214232805232818123423632234§[param1] = true;
         if(this.enabled)
         {
            this.§const catch continue§.addShadow(param1);
         }
      }
      
      public function §521423123372312350123423632234§(param1:Number) : void
      {
         this.§extends use null§(param1);
         this.§override var final§();
      }
      
      public function enable() : void
      {
         if(!this.enabled)
         {
            this.enabled = true;
            for(var _loc1_ in this.§5214232805232818123423632234§)
            {
               this.§const catch continue§.addShadow(_loc1_);
            }
         }
      }
      
      private function §extends use null§(param1:Number) : void
      {
         var _loc3_:Number = §package finally case§.§if catch get§((param1 - 20) / (60 - 20),0,1);
         var _loc4_:Number = 1000 + _loc3_ * (4000 - 1000);
         this.§5214236373236386123423632234§ += (_loc4_ - this.§5214236373236386123423632234§) * 0.01;
         var _loc2_:Number = 2000 + _loc3_ * (7000 - 2000);
         this.§continue package set§ += (_loc2_ - this.§continue package set§) * 0.01;
      }
      
      public function §521423119392311952123423632234§() : void
      {
         if(this.enabled)
         {
            this.enabled = false;
            for(var _loc1_ in this.§5214232805232818123423632234§)
            {
               this.§const catch continue§.removeShadow(_loc1_);
            }
         }
      }
   }
}

