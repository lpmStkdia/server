package §521423101572310170123423632234§
{
   import flash.net.SharedObject;
   
   public class §catch const if§
   {
      
      private var §catch super catch§:SharedObject;
      
      private var §521423145732314586123423632234§:Object;
      
      public function §catch const if§(param1:SharedObject)
      {
         super();
         this.§catch super catch§ = param1;
         this.§521423145732314586123423632234§ = param1.data.index;
         if(this.§521423145732314586123423632234§ == null)
         {
            this.§521423145732314586123423632234§ = {};
            param1.data.index = this.§521423145732314586123423632234§;
         }
      }
      
      public function §521423129552312968123423632234§(param1:String) : void
      {
         delete this.§521423145732314586123423632234§[param1];
      }
      
      public function §521423154262315439123423632234§(param1:String, param2:§include catch class§) : void
      {
         if(param2 == null)
         {
            this.§521423129552312968123423632234§(param1);
         }
         else
         {
            this.§521423145732314586123423632234§[param1] = param2.§override function else§;
         }
      }
      
      public function §override switch each§(param1:String, param2:String, param3:String) : void
      {
         var _loc5_:§include catch class§ = this.§catch switch package§(param1);
         _loc5_.§in super get§ = param3;
         var _loc4_:Vector.<String> = _loc5_.§521423151832315196123423632234§;
         if(_loc4_.indexOf(param2) < 0)
         {
            _loc4_[_loc4_.length] = param2;
         }
         this.§521423154262315439123423632234§(param1,_loc5_);
      }
      
      public function §true break§() : Vector.<String>
      {
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(var _loc2_ in this.§521423145732314586123423632234§)
         {
            _loc1_[_loc1_.length] = _loc2_;
         }
         return _loc1_;
      }
      
      public function §5214232337232350123423632234§(param1:String, param2:String) : void
      {
         var _loc5_:§include catch class§ = this.§catch switch package§(param1);
         if(_loc5_.§5214232057232070123423632234§)
         {
            return;
         }
         var _loc3_:Vector.<String> = _loc5_.§521423151832315196123423632234§;
         var _loc4_:int = _loc3_.indexOf(param2);
         if(_loc4_ >= 0)
         {
            if(_loc3_.length == 1)
            {
               this.§521423129552312968123423632234§(param1);
            }
            else
            {
               _loc3_.removeAt(_loc4_);
               this.§521423154262315439123423632234§(param1,_loc5_);
            }
         }
      }
      
      public function §catch switch package§(param1:String) : §include catch class§
      {
         return new §include catch class§(this.§521423145732314586123423632234§[param1]);
      }
   }
}

