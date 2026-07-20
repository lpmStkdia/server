package §5214232632232645123423632234§
{
   import §521423150222315035123423632234§.§include use override§;
   import §5214234310234323123423632234§.§5214233541233554123423632234§;
   import §5214234310234323123423632234§.§break while override§;
   import flash.events.KeyboardEvent;
   import §function const dynamic§.§break while set§;
   import §function const dynamic§.§final while continue§;
   import §function const dynamic§.§if catch var§;
   import §true const if§.§do set catch§;
   
   public class §true catch finally§ extends §include use override§
   {
      
      public static const §5214239902239915123423632234§:uint = 1073741824;
      
      public static const §521423116722311685123423632234§:int = 120;
      
      public static var §package set class§:§break while set§;
      
      private var §get for do§:Vector.<§5214233541233554123423632234§>;
      
      private var §521423156052315618123423632234§:§final while continue§;
      
      private var §5214232859232872123423632234§:Boolean;
      
      public function §true catch finally§(param1:§final while continue§, param2:String, param3:int, param4:int, param5:Boolean)
      {
         var _loc8_:int = 0;
         §get for do§ = new Vector.<§5214233541233554123423632234§>(3,true);
         super();
         this.§521423156052315618123423632234§ = param1;
         var _loc9_:int = param4 - 6 * param3 - 120 * 3;
         var _loc6_:§do set catch§ = new §do set catch§();
         _loc6_.§in catch catch§(param3);
         _loc6_.x = _loc9_ + param3;
         while(_loc8_ < 3)
         {
            _loc6_.§52142341723430123423632234§(this.§521423188892318902123423632234§(_loc8_));
            _loc8_++;
         }
         var _loc7_:§break while override§ = new §break while override§();
         _loc7_.text = param2;
         _loc7_.x = 0;
         _loc7_.y = Math.round((this.§get for do§[0].height - _loc7_.textHeight) * 0.5) - 2;
         addChild(_loc7_);
         addChild(_loc6_);
         §package set class§.addEventListener("b441ff76 changed: " + param1.name,this.§5214237460237473123423632234§);
         this.§5214232859232872123423632234§ = param5;
      }
      
      public function §false use var§() : void
      {
         for each(var _loc1_ in this.§get for do§)
         {
            _loc1_.removeEventListener("keyDown",this.§521423150862315099123423632234§);
         }
         this.§get for do§ = null;
         §package set class§.removeEventListener("b441ff76 changed: " + this.§521423156052315618123423632234§.name,this.§5214237460237473123423632234§);
      }
      
      public function §try while return§() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Vector.<uint> = §package set class§.§do var continue§(this.§521423156052315618123423632234§);
         if(!_loc1_)
         {
            return;
         }
         var _loc2_:int = int(_loc1_.length);
         while(_loc3_ < _loc2_)
         {
            this.§get for do§[_loc3_].value = §package set class§.§521423152132315226123423632234§(_loc1_[_loc3_]);
            _loc3_++;
         }
      }
      
      private function §521423188892318902123423632234§(param1:int) : §5214233541233554123423632234§
      {
         var _loc2_:§5214233541233554123423632234§ = new §5214233541233554123423632234§();
         _loc2_.addEventListener("keyUp",this.§521423150862315099123423632234§);
         _loc2_.§5214236731236744123423632234§ = 1;
         _loc2_.width = 120;
         _loc2_.align = "center";
         _loc2_.value = this.§521423166572316670123423632234§(param1);
         this.§get for do§[param1] = _loc2_;
         return _loc2_;
      }
      
      private function §5214237460237473123423632234§(param1:§if catch var§) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§get for do§.length)
         {
            this.§get for do§[_loc2_].value = this.§521423166572316670123423632234§(_loc2_);
            _loc2_++;
         }
      }
      
      private function §521423150862315099123423632234§(param1:KeyboardEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:§5214233541233554123423632234§ = §5214233541233554123423632234§(param1.currentTarget);
         if(param1.keyCode == 8)
         {
            if(§package set class§.§var false§(this.§521423156052315618123423632234§,0,this.§get for do§.indexOf(_loc5_)))
            {
               _loc5_.value = "";
            }
            else
            {
               _loc5_.value = this.§521423166572316670123423632234§(this.§get for do§.indexOf(_loc5_));
            }
            return;
         }
         var _loc2_:uint = uint(1073741824 * (uint(§5214232859232872123423632234§ && param1.ctrlKey)) | param1.keyCode);
         var _loc3_:String = §package set class§.§521423152132315226123423632234§(_loc2_);
         if(_loc3_ != "")
         {
            _loc4_ = §package set class§.§var false§(this.§521423156052315618123423632234§,_loc2_,this.§get for do§.indexOf(_loc5_));
            _loc5_.value = _loc4_ ? _loc3_ : "";
         }
         else
         {
            _loc5_.value = this.§521423166572316670123423632234§(this.§get for do§.indexOf(_loc5_));
         }
      }
      
      public function §521423116052311618123423632234§() : §final while continue§
      {
         return this.§521423156052315618123423632234§;
      }
      
      private function §521423166572316670123423632234§(param1:uint) : String
      {
         var _loc2_:uint = §package set class§.§5214236703236716123423632234§(this.§521423156052315618123423632234§,param1);
         return §package set class§.§521423152132315226123423632234§(_loc2_);
      }
   }
}

