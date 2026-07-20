package §function finally catch§
{
   public class §each catch catch§ extends §get finally set§
   {
      
      public var value:int;
      
      private var §break function if§:int;
      
      private var §false catch default§:int;
      
      public function §each catch catch§(param1:String, param2:int, param3:int, param4:int, param5:Function = null)
      {
         super(param1,param5);
         this.value = param2;
         this.§break function if§ = param3;
         this.§false catch default§ = param4;
      }
      
      override public function §import while in§(param1:String) : String
      {
         var _loc2_:int = int(param1);
         if(_loc2_ < this.§break function if§ || _loc2_ > this.§false catch default§)
         {
            return "Value is out of bounds [" + this.§break function if§ + ", " + this.§false catch default§ + "]";
         }
         this.value = _loc2_;
         if(§override catch switch§ != null)
         {
            §override catch switch§(this.value);
         }
         return null;
      }
      
      override public function toString() : String
      {
         return this.value.toString();
      }
   }
}

