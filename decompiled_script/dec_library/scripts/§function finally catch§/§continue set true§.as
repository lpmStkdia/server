package §function finally catch§
{
   public class §continue set true§ extends §get finally set§
   {
      
      public var value:Number;
      
      private var §break function if§:Number;
      
      private var §false catch default§:Number;
      
      public function §continue set true§(param1:String, param2:Number, param3:Number, param4:Number, param5:Function = null)
      {
         super(param1,param5);
         this.value = param2;
         this.§break function if§ = param3;
         this.§false catch default§ = param4;
      }
      
      override public function §import while in§(param1:String) : String
      {
         var _loc2_:Number = Number(param1);
         if(isNaN(_loc2_))
         {
            return "Incorrect number";
         }
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

