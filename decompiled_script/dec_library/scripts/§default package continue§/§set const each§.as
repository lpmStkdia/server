package §default package continue§
{
   public class §set const each§
   {
      
      private var §native const in§:Vector.<int>;
      
      public function §set const each§(param1:uint)
      {
         super();
         this.§native const in§ = new Vector.<int>(param1 >> 5,true);
      }
      
      public function §52142367423687123423632234§() : void
      {
         var _loc1_:int = 0;
         _loc1_ = 0;
         while(_loc1_ < this.§native const in§.length)
         {
            this.§native const in§[_loc1_] = 0;
            _loc1_++;
         }
      }
      
      public function §52142321023223123423632234§(param1:int) : void
      {
         var _loc2_:int = param1 >> 5;
         var _loc3_:int = this.§native const in§[_loc2_] | 1 << (param1 & 0x1F);
         this.§native const in§[_loc2_] = _loc3_;
      }
      
      public function §each function finally§(param1:int) : void
      {
         var _loc2_:int = param1 >> 5;
         var _loc3_:int = this.§native const in§[_loc2_] & ~(1 << (param1 & 0x1F));
         this.§native const in§[_loc2_] = _loc3_;
      }
      
      public function §class while do§(param1:int) : int
      {
         return this.§native const in§[param1 >> 5] >> (param1 & 0x1F) & 1;
      }
   }
}

