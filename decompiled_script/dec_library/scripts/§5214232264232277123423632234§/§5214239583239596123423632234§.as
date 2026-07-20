package §5214232264232277123423632234§
{
   public class §5214239583239596123423632234§ extends §521423189702318983123423632234§
   {
      
      public function §5214239583239596123423632234§(param1:uint = 0, param2:uint = 0)
      {
         super(param1,param2);
      }
      
      public static function §finally use null§(param1:String, param2:uint = 0) : §5214239583239596123423632234§
      {
         var _loc3_:§5214239583239596123423632234§ = null;
         var _loc5_:uint = 0;
         var _loc4_:uint = 0;
         if(param2 == 0)
         {
            if(param1.search(/^0x/) == 0)
            {
               param2 = 16;
               _loc4_ = 2;
            }
            else
            {
               param2 = 10;
            }
         }
         if(param2 < 2 || param2 > 36)
         {
            throw new ArgumentError();
         }
         param1 = param1.toLowerCase();
         _loc3_ = new §5214239583239596123423632234§();
         while(_loc4_ < param1.length)
         {
            _loc5_ = param1.charCodeAt(_loc4_);
            if(_loc5_ >= "0".charCodeAt(0) && _loc5_ <= "9".charCodeAt(0))
            {
               _loc5_ -= "0".charCodeAt(0);
            }
            else
            {
               if(!(_loc5_ >= "a".charCodeAt(0) && _loc5_ <= "z".charCodeAt(0)))
               {
                  throw new ArgumentError();
               }
               _loc5_ -= "a".charCodeAt(0);
            }
            if(_loc5_ >= param2)
            {
               throw new ArgumentError();
            }
            _loc3_.§finally package false§(param2);
            _loc3_.§5214231576231589123423632234§(_loc5_);
            _loc4_++;
         }
         return _loc3_;
      }
      
      final public function get §521423166042316617123423632234§() : uint
      {
         return §override use override§;
      }
      
      final public function set §521423166042316617123423632234§(param1:uint) : void
      {
         §override use override§ = param1;
      }
      
      final public function §switch package§() : Number
      {
         var _loc1_:§5214239583239596123423632234§ = this;
         return _loc1_.§override use override§ * 4294967296 + §while function native§;
      }
      
      final public function toString(param1:uint = 10) : String
      {
         var _loc4_:uint = 0;
         if(param1 < 2 || param1 > 36)
         {
            throw new ArgumentError();
         }
         var _loc5_:§5214239583239596123423632234§ = this;
         if(_loc5_.§override use override§ == 0)
         {
            return §while function native§.toString(param1);
         }
         var _loc3_:Array = [];
         var _loc6_:§5214239583239596123423632234§;
         var _loc2_:§5214239583239596123423632234§ = new §5214239583239596123423632234§(§while function native§,(_loc6_ = this).§override use override§);
         var _loc7_:§5214239583239596123423632234§;
         do
         {
            _loc4_ = _loc2_.§true while class§(param1);
            _loc3_[_loc3_.length] = (_loc4_ < 10 ? "0" : "a").charCodeAt(0) + _loc4_;
         }
         while(_loc7_ = _loc2_, _loc7_.§override use override§ != 0);
         return _loc2_.§while function native§.toString(param1) + String.fromCharCode.apply(String,_loc3_.reverse());
      }
   }
}

