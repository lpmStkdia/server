package §switch const set§
{
   import §521423149202314933123423632234§.§default switch in§;
   import §521423149202314933123423632234§.§extends for switch§;
   import §521423188792318892123423632234§.§do function else§;
   import §5214235292235305123423632234§.§case while§;
   import §5214236158236171123423632234§.§521423105062310519123423632234§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.objects.Mesh;
   
   public class §5214231583231596123423632234§ extends §521423105062310519123423632234§ implements §extends for switch§
   {
      
      private static const §5214231198231211123423632234§:RegExp = /box.*/i;
      
      private static const §521423115112311524123423632234§:RegExp = /(box.*|fmnt|muzzle.*)/i;
      
      public var §5214239739239752123423632234§:§do function else§;
      
      public var §if const implements§:Vector.<§do function else§>;
      
      public var §521423110342311047123423632234§:§do function else§;
      
      private var §5214239150239163123423632234§:Vector.<§default switch in§>;
      
      private var §static continue§:Vector.<§521423108582310871123423632234§>;
      
      public var §5214232738232751123423632234§:Vector.<Mesh> = new Vector.<Mesh>();
      
      public function §5214231583231596123423632234§(param1:§case while§)
      {
         super(param1);
         this.§521423185002318513123423632234§(param1);
         this.§5214239739239752123423632234§ = §null set default§(param1);
         this.§if const implements§ = this.§521423193312319344123423632234§(param1);
         this.§521423110342311047123423632234§ = this.§do function final§(param1);
         this.§static continue§ = this.§521423180482318061123423632234§(param1);
         this.§5214236605236618123423632234§();
      }
      
      private static function §null set default§(param1:§case while§) : §do function else§
      {
         var _loc2_:Object3D = null;
         var _loc3_:Vector.<Object3D> = param1.§521423186642318677123423632234§(/fmnt/i);
         if(_loc3_ != null)
         {
            _loc2_ = _loc3_[0];
            return new §do function else§(_loc2_.x,_loc2_.y,_loc2_.z);
         }
         throw new Error();
      }
      
      private function §521423185002318513123423632234§(param1:§case while§) : void
      {
         for each(var _loc2_ in param1.§521423188262318839123423632234§)
         {
            if(_loc2_ is Mesh && !§521423115112311524123423632234§.test(_loc2_.name))
            {
               this.§5214232738232751123423632234§.push(§5214235654235667123423632234§(Mesh(_loc2_)));
            }
         }
      }
      
      public function §case use override§() : Vector.<§521423108582310871123423632234§>
      {
         return this.§static continue§;
      }
      
      private function §class for return§(param1:Object3D, param2:Object3D) : Number
      {
         if(param1.name <= param2.name)
         {
            return -1;
         }
         return 1;
      }
      
      public function §var const false§() : int
      {
         return 10;
      }
      
      public function §get finally try§() : Boolean
      {
         for each(var _loc1_ in this.§5214239150239163123423632234§)
         {
            if(!_loc1_.§try finally implements§())
            {
               return true;
            }
         }
         return false;
      }
      
      private function §521423180482318061123423632234§(param1:§case while§) : Vector.<§521423108582310871123423632234§>
      {
         var _loc5_:Vector.<Object3D> = param1.§521423186642318677123423632234§(§5214231198231211123423632234§);
         var _loc3_:Vector.<§521423108582310871123423632234§> = new Vector.<§521423108582310871123423632234§>();
         if(_loc5_ != null && _loc5_.length != 0)
         {
            for each(var _loc2_ in _loc5_)
            {
               _loc3_.push(new §521423108582310871123423632234§(_loc2_));
            }
         }
         else
         {
            for each(var _loc4_ in this.§5214232738232751123423632234§)
            {
               _loc3_.push(new §521423108582310871123423632234§(_loc4_));
            }
         }
         return _loc3_;
      }
      
      private function §5214236605236618123423632234§() : void
      {
         this.§5214239150239163123423632234§ = new Vector.<§default switch in§>(this.§if const implements§.length);
         var _loc1_:int = 0;
         while(_loc1_ < this.§if const implements§.length)
         {
            this.§5214239150239163123423632234§[_loc1_] = new §default switch in§(this.§if const implements§[_loc1_]);
            _loc1_++;
         }
      }
      
      private function §do function final§(param1:§case while§) : §do function else§
      {
         var _loc2_:Object3D = null;
         var _loc3_:Vector.<Object3D> = param1.§521423186642318677123423632234§(/laser/i);
         if(_loc3_ != null)
         {
            _loc2_ = _loc3_[0];
            return new §do function else§(_loc2_.x,_loc2_.y,_loc2_.z);
         }
         return this.§if const implements§[0];
      }
      
      private function §521423193312319344123423632234§(param1:§case while§) : Vector.<§do function else§>
      {
         var _loc3_:§do function else§ = null;
         var _loc4_:Vector.<§do function else§> = new Vector.<§do function else§>();
         var _loc2_:Vector.<Object3D> = param1.§521423186642318677123423632234§(/muzzle.*/);
         if(_loc2_ != null)
         {
            _loc2_.sort(this.§class for return§);
            for each(var _loc5_ in _loc2_)
            {
               _loc3_ = new §do function else§(_loc5_.x,_loc5_.y,_loc5_.z);
               _loc4_[_loc4_.length] = _loc3_;
            }
            return _loc4_;
         }
         throw new Error();
      }
   }
}

