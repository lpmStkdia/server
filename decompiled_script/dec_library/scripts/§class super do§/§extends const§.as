package §class super do§
{
   import §get const else§.§5214239323106123423632234§;
   
   internal class §extends const§
   {
      
      private var §521423171382317151123423632234§:Vector.<§5214239323106123423632234§> = new Vector.<§5214239323106123423632234§>();
      
      private var §521423193582319371123423632234§:Vector.<§5214239323106123423632234§> = new Vector.<§5214239323106123423632234§>();
      
      private var §final function static§:Vector.<§5214239323106123423632234§> = new Vector.<§5214239323106123423632234§>();
      
      private var §if while static§:Boolean;
      
      public function §extends const§()
      {
         super();
      }
      
      private function §get var include§(param1:int, param2:Vector.<§5214239323106123423632234§>) : void
      {
         var _loc3_:uint = param2.length;
         param2[param1] = param2[--_loc3_];
         param2.length = _loc3_;
      }
      
      private function §false finally with§() : void
      {
         var _loc1_:* = null;
         this.§if while static§ = false;
         if(this.§final function static§.length > 0)
         {
            for each(_loc1_ in this.§final function static§)
            {
               this.§get var include§(this.§521423171382317151123423632234§.indexOf(_loc1_),this.§521423171382317151123423632234§);
            }
            this.§final function static§.length = 0;
         }
         if(this.§521423193582319371123423632234§.length > 0)
         {
            for each(_loc1_ in this.§521423193582319371123423632234§)
            {
               this.§521423171382317151123423632234§[§521423171382317151123423632234§.length] = _loc1_;
            }
            this.§521423193582319371123423632234§.length = 0;
         }
      }
      
      public function §521423151502315163123423632234§() : void
      {
         this.§5214237423237436123423632234§();
         for each(var _loc1_ in this.§521423171382317151123423632234§)
         {
            _loc1_.§521423151502315163123423632234§();
         }
         this.§false finally with§();
      }
      
      public function §package set default§(param1:§5214239323106123423632234§) : void
      {
         var _loc2_:int = 0;
         if(this.§if while static§)
         {
            _loc2_ = this.§final function static§.indexOf(param1);
            if(_loc2_ > -1)
            {
               this.§get var include§(_loc2_,this.§final function static§);
            }
            else if(this.§521423171382317151123423632234§.indexOf(param1) < 0 && this.§521423193582319371123423632234§.indexOf(param1) < 0)
            {
               this.§521423193582319371123423632234§[§521423193582319371123423632234§.length] = param1;
            }
         }
         else if(this.§521423171382317151123423632234§.indexOf(param1) < 0)
         {
            this.§521423171382317151123423632234§[§521423171382317151123423632234§.length] = param1;
         }
      }
      
      public function §521423172512317264123423632234§() : void
      {
         this.§5214237423237436123423632234§();
         for each(var _loc1_ in this.§521423171382317151123423632234§)
         {
            _loc1_.§521423172512317264123423632234§();
         }
         this.§false finally with§();
      }
      
      public function §extends function null§(param1:§5214239323106123423632234§) : void
      {
         var _loc2_:int = 0;
         if(this.§if while static§)
         {
            _loc2_ = this.§521423193582319371123423632234§.indexOf(param1);
            if(_loc2_ > -1)
            {
               this.§get var include§(_loc2_,this.§521423193582319371123423632234§);
            }
            else if(this.§521423171382317151123423632234§.indexOf(param1) > -1 && this.§final function static§.indexOf(param1) < 0)
            {
               this.§final function static§[§final function static§.length] = param1;
            }
         }
         else
         {
            _loc2_ = this.§521423171382317151123423632234§.indexOf(param1);
            if(_loc2_ > -1)
            {
               this.§get var include§(_loc2_,this.§521423171382317151123423632234§);
            }
         }
      }
      
      private function §5214237423237436123423632234§() : void
      {
         this.§if while static§ = true;
      }
   }
}

