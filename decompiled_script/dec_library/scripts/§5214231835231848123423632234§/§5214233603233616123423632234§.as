package §5214231835231848123423632234§
{
   import flash.utils.ByteArray;
   
   public class §5214233603233616123423632234§
   {
      
      public static var §default for if§:int = 10;
      
      private static const §521423103542310367123423632234§:uint = 32767;
      
      private static const §521423167742316787123423632234§:int = 61;
      
      private static const §native function const§:Vector.<int> = new <int>[65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,48,49,50,51,52,53,54,55,56,57,43,47];
      
      public var §switch finally var§:Boolean = true;
      
      private var §521423193282319341123423632234§:Vector.<Array>;
      
      private var §521423161752316188123423632234§:uint;
      
      private var §each catch default§:uint;
      
      private const §5214232076232089123423632234§:Vector.<int> = new <int>[0,0,0];
      
      public function §5214233603233616123423632234§()
      {
         super();
         this.§case const get§();
      }
      
      private function §5214239706239719123423632234§() : void
      {
         var _loc1_:Array = this.§521423193282319341123423632234§[this.§521423193282319341123423632234§.length - 1];
         if(_loc1_.length >= 32767)
         {
            _loc1_ = [];
            this.§521423193282319341123423632234§[§521423193282319341123423632234§.length] = _loc1_;
         }
         _loc1_[_loc1_.length] = §native function const§[(this.§5214232076232089123423632234§[0] & 0xFF) >> 2];
         _loc1_[_loc1_.length] = §native function const§[(this.§5214232076232089123423632234§[0] & 3) << 4 | (this.§5214232076232089123423632234§[1] & 0xF0) >> 4];
         if(this.§521423161752316188123423632234§ > 1)
         {
            _loc1_[_loc1_.length] = §native function const§[(this.§5214232076232089123423632234§[1] & 0x0F) << 2 | (this.§5214232076232089123423632234§[2] & 0xC0) >> 6];
         }
         else
         {
            _loc1_[_loc1_.length] = 61;
         }
         if(this.§521423161752316188123423632234§ > 2)
         {
            _loc1_[_loc1_.length] = §native function const§[this.§5214232076232089123423632234§[2] & 0x3F];
         }
         else
         {
            _loc1_[_loc1_.length] = 61;
         }
         if(this.§switch finally var§)
         {
            if((this.§each catch default§ = this.§each catch default§ + 4) == 76)
            {
               _loc1_[_loc1_.length] = §default for if§;
               this.§each catch default§ = 0;
            }
         }
      }
      
      public function §import while§(param1:String) : void
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeUTFBytes(param1);
         _loc2_.position = 0;
         this.§const switch set§(_loc2_);
      }
      
      public function toString() : String
      {
         return this.§5214232834232847123423632234§();
      }
      
      public function §case const get§() : void
      {
         this.§521423193282319341123423632234§ = new <Array>[[]];
         this.§521423161752316188123423632234§ = 0;
         this.§each catch default§ = 0;
         this.§5214232076232089123423632234§[0] = 0;
         this.§5214232076232089123423632234§[1] = 0;
         this.§5214232076232089123423632234§[2] = 0;
      }
      
      public function §const switch set§(param1:ByteArray, param2:uint = 0, param3:uint = 0) : void
      {
         if(param3 == 0)
         {
            param3 = param1.length;
         }
         var _loc5_:uint = param1.position;
         param1.position = param2;
         var _loc6_:uint = param2;
         var _loc4_:uint = param2 + param3;
         if(_loc4_ > param1.length)
         {
            _loc4_ = param1.length;
         }
         while(_loc6_ < _loc4_)
         {
            this.§5214232076232089123423632234§[this.§521423161752316188123423632234§] = param1[_loc6_];
            ++this.§521423161752316188123423632234§;
            if(this.§521423161752316188123423632234§ == this.§5214232076232089123423632234§.length || _loc4_ - _loc6_ == 1)
            {
               this.§5214239706239719123423632234§();
               this.§521423161752316188123423632234§ = 0;
               this.§5214232076232089123423632234§[0] = 0;
               this.§5214232076232089123423632234§[1] = 0;
               this.§5214232076232089123423632234§[2] = 0;
            }
            _loc6_++;
         }
         param1.position = _loc5_;
      }
      
      public function §5214232834232847123423632234§() : String
      {
         if(this.§521423161752316188123423632234§ > 0)
         {
            this.§5214239706239719123423632234§();
         }
         var _loc1_:String = this.§52142360823621123423632234§();
         this.§case const get§();
         return _loc1_;
      }
      
      public function §null const break§(param1:String, param2:uint = 0, param3:uint = 0) : void
      {
         if(param3 == 0)
         {
            param3 = uint(param1.length);
         }
         var _loc5_:uint = param2;
         var _loc4_:uint = param2 + param3;
         if(_loc4_ > param1.length)
         {
            _loc4_ = uint(param1.length);
         }
         while(_loc5_ < _loc4_)
         {
            this.§5214232076232089123423632234§[this.§521423161752316188123423632234§] = param1.charCodeAt(_loc5_);
            ++this.§521423161752316188123423632234§;
            if(this.§521423161752316188123423632234§ == this.§5214232076232089123423632234§.length || _loc4_ - _loc5_ == 1)
            {
               this.§5214239706239719123423632234§();
               this.§521423161752316188123423632234§ = 0;
               this.§5214232076232089123423632234§[0] = 0;
               this.§5214232076232089123423632234§[1] = 0;
               this.§5214232076232089123423632234§[2] = 0;
            }
            _loc5_++;
         }
      }
      
      private function §52142360823621123423632234§() : String
      {
         var _loc3_:int = 0;
         var _loc4_:Array = this.§521423193282319341123423632234§[0];
         var _loc2_:int = int(_loc4_.length);
         var _loc1_:Vector.<String> = new Vector.<String>(_loc2_);
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_[_loc3_] = String.fromCharCode(_loc4_[_loc3_]);
            _loc3_++;
         }
         this.§521423193282319341123423632234§ = new <Array>[[]];
         return _loc1_.join("");
      }
   }
}

