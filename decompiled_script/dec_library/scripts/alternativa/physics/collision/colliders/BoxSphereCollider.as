package alternativa.physics.collision.colliders
{
   import §521423122282312241123423632234§.§final while do§;
   import §5214231886231899123423632234§.§5214231214231227123423632234§;
   import §5214231886231899123423632234§.§521423132822313295123423632234§;
   import §521423188792318892123423632234§.§521423166662316679123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import §super return§.§521423147312314744123423632234§;
   import §super return§.§dynamic function continue§;
   
   public class BoxSphereCollider implements §521423132822313295123423632234§
   {
      
      private var center:§do function else§;
      
      private var §include continue§:§do function else§;
      
      private var §521423175472317560123423632234§:§do function else§;
      
      private var §false switch get§:§do function else§;
      
      public function BoxSphereCollider()
      {
         super();
         this.center = new §do function else§();
         this.§include continue§ = new §do function else§();
         this.§521423175472317560123423632234§ = new §do function else§();
         this.§false switch get§ = new §do function else§();
      }
      
      public function getContacts(param1:§5214231214231227123423632234§, param2:§5214231214231227123423632234§, param3:Vector.<§final while do§>) : void
      {
         var _loc8_:§dynamic function continue§ = null;
         var _loc11_:§521423147312314744123423632234§ = param1 as §521423147312314744123423632234§;
         if(_loc11_ == null)
         {
            _loc11_ = param2 as §521423147312314744123423632234§;
            _loc8_ = param1 as §dynamic function continue§;
         }
         else
         {
            _loc8_ = param2 as §dynamic function continue§;
         }
         var _loc10_:§521423166662316679123423632234§ = _loc11_.§521423126962312709123423632234§;
         _loc10_.§else super for§(3,this.§false switch get§);
         var _loc7_:§521423166662316679123423632234§ = _loc8_.§521423126962312709123423632234§;
         _loc7_.§else super for§(3,this.§521423175472317560123423632234§);
         _loc7_.§52142383523848123423632234§(this.§false switch get§,this.center);
         var _loc9_:§do function else§ = _loc8_.§5214234336234349123423632234§;
         var _loc4_:Number = _loc9_.x + _loc11_.§5214234274234287123423632234§;
         var _loc5_:Number = _loc9_.y + _loc11_.§5214234274234287123423632234§;
         var _loc6_:Number = _loc9_.§521423155722315585123423632234§ + _loc11_.§5214234274234287123423632234§;
         if(this.center.x > _loc4_ || this.center.x < -_loc4_ || this.center.y > _loc5_ || this.center.y < -_loc5_ || this.center.§521423155722315585123423632234§ > _loc6_ || this.center.§521423155722315585123423632234§ < -_loc6_)
         {
            return;
         }
         if(this.center.x > _loc9_.x)
         {
            this.§include continue§.x = _loc9_.x;
         }
         else if(this.center.x < -_loc9_.x)
         {
            this.§include continue§.x = -_loc9_.x;
         }
         else
         {
            this.§include continue§.x = this.center.x;
         }
         if(this.center.y > _loc9_.y)
         {
            this.§include continue§.y = _loc9_.y;
         }
         else if(this.center.y < -_loc9_.y)
         {
            this.§include continue§.y = -_loc9_.y;
         }
         else
         {
            this.§include continue§.y = this.center.y;
         }
         if(this.center.§521423155722315585123423632234§ > _loc9_.§521423155722315585123423632234§)
         {
            this.§include continue§.§521423155722315585123423632234§ = _loc9_.§521423155722315585123423632234§;
         }
         else if(this.center.§521423155722315585123423632234§ < -_loc9_.§521423155722315585123423632234§)
         {
            this.§include continue§.§521423155722315585123423632234§ = -_loc9_.§521423155722315585123423632234§;
         }
         else
         {
            this.§include continue§.§521423155722315585123423632234§ = this.center.§521423155722315585123423632234§;
         }
         var _loc12_:Number = this.center.§5214231855231868123423632234§(this.§include continue§).§521423193012319314123423632234§();
         if(_loc12_ > _loc11_.§5214234274234287123423632234§ * _loc11_.§5214234274234287123423632234§)
         {
            return;
         }
         var _loc13_:§final while do§ = §final while do§.§5214231870231883123423632234§();
         _loc13_.§null set extends§ = _loc11_;
         _loc13_.§try while with§ = _loc8_;
         _loc13_.§5214232051232064123423632234§.§521423188292318842123423632234§(this.§include continue§).§521423147372314750123423632234§(_loc7_).§5214231855231868123423632234§(this.§false switch get§).§class while dynamic§().§5214235904235917123423632234§();
         _loc13_.§5214235811235824123423632234§ = _loc11_.§5214234274234287123423632234§ - Math.sqrt(_loc12_);
         _loc13_.§finally package case§.§521423188292318842123423632234§(_loc13_.§5214232051232064123423632234§).§521423128812312894123423632234§(-_loc11_.§5214234274234287123423632234§).§5214231576231589123423632234§(this.§false switch get§);
         param3[param3.length] = _loc13_;
      }
      
      public function haveCollision(param1:§5214231214231227123423632234§, param2:§5214231214231227123423632234§) : Boolean
      {
         var _loc9_:§dynamic function continue§ = null;
         var _loc4_:§521423147312314744123423632234§ = param1 as §521423147312314744123423632234§;
         if(_loc4_ == null)
         {
            _loc4_ = param2 as §521423147312314744123423632234§;
            _loc9_ = param1 as §dynamic function continue§;
         }
         else
         {
            _loc9_ = param2 as §dynamic function continue§;
         }
         var _loc3_:§521423166662316679123423632234§ = _loc4_.§521423126962312709123423632234§;
         _loc3_.§else super for§(3,this.§false switch get§);
         var _loc8_:§521423166662316679123423632234§ = _loc9_.§521423126962312709123423632234§;
         _loc8_.§else super for§(3,this.§521423175472317560123423632234§);
         _loc8_.§52142383523848123423632234§(this.§false switch get§,this.center);
         var _loc10_:§do function else§ = _loc9_.§5214234336234349123423632234§;
         var _loc5_:Number = _loc10_.x + _loc4_.§5214234274234287123423632234§;
         var _loc6_:Number = _loc10_.y + _loc4_.§5214234274234287123423632234§;
         var _loc7_:Number = _loc10_.§521423155722315585123423632234§ + _loc4_.§5214234274234287123423632234§;
         if(this.center.x > _loc5_ || this.center.x < -_loc5_ || this.center.y > _loc6_ || this.center.y < -_loc6_ || this.center.§521423155722315585123423632234§ > _loc7_ || this.center.§521423155722315585123423632234§ < -_loc7_)
         {
            return false;
         }
         if(this.center.x > _loc10_.x)
         {
            this.§include continue§.x = _loc10_.x;
         }
         else if(this.center.x < -_loc10_.x)
         {
            this.§include continue§.x = -_loc10_.x;
         }
         else
         {
            this.§include continue§.x = this.center.x;
         }
         if(this.center.y > _loc10_.y)
         {
            this.§include continue§.y = _loc10_.y;
         }
         else if(this.center.y < -_loc10_.y)
         {
            this.§include continue§.y = -_loc10_.y;
         }
         else
         {
            this.§include continue§.y = this.center.y;
         }
         if(this.center.§521423155722315585123423632234§ > _loc10_.§521423155722315585123423632234§)
         {
            this.§include continue§.§521423155722315585123423632234§ = _loc10_.§521423155722315585123423632234§;
         }
         else if(this.center.§521423155722315585123423632234§ < -_loc10_.§521423155722315585123423632234§)
         {
            this.§include continue§.§521423155722315585123423632234§ = -_loc10_.§521423155722315585123423632234§;
         }
         else
         {
            this.§include continue§.§521423155722315585123423632234§ = this.center.§521423155722315585123423632234§;
         }
         var _loc11_:Number = this.center.§5214231855231868123423632234§(this.§include continue§).§521423193012319314123423632234§();
         return _loc11_ <= _loc4_.§5214234274234287123423632234§ * _loc4_.§5214234274234287123423632234§;
      }
   }
}

