package §5214232264232277123423632234§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public final class §5214237893237906123423632234§
   {
      
      private static var §var switch switch§:Dictionary = new Dictionary();
      
      public static const §extends finally do§:§5214237893237906123423632234§ = §switch try§(0,0);
      
      private var §use const break§:int;
      
      private var §521423190412319054123423632234§:int;
      
      public function §5214237893237906123423632234§(param1:int, param2:int)
      {
         super();
         this.§521423190412319054123423632234§ = param1;
         this.§use const break§ = param2;
      }
      
      public static function §null use native§(param1:String) : §5214237893237906123423632234§
      {
         var _loc2_:int = param1.length;
         if(_loc2_ <= 8)
         {
            return §switch try§(0,int("0x" + param1));
         }
         return §switch try§(int("0x" + param1.substr(0,_loc2_ - 8)),int("0x" + param1.substr(_loc2_ - 8)));
      }
      
      public static function §extends switch else§(param1:§5214237893237906123423632234§, param2:§5214237893237906123423632234§) : int
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:§5214237893237906123423632234§ = param1;
         var _loc4_:§5214237893237906123423632234§;
         if(_loc3_.§521423190412319054123423632234§ != (_loc4_ = param2).§521423190412319054123423632234§)
         {
            var _loc5_:§5214237893237906123423632234§ = param1;
            var _loc6_:§5214237893237906123423632234§;
            return _loc5_.§521423190412319054123423632234§ < (_loc6_ = param2).§521423190412319054123423632234§ ? -1 : 1;
         }
         var _loc7_:§5214237893237906123423632234§ = param1;
         var _loc8_:§5214237893237906123423632234§;
         if(_loc7_.§use const break§ != (_loc8_ = param2).§use const break§)
         {
            var _loc9_:§5214237893237906123423632234§ = param1;
            var _loc10_:§5214237893237906123423632234§;
            return _loc9_.§use const break§ < (_loc10_ = param2).§use const break§ ? -1 : 1;
         }
         return 0;
      }
      
      public static function §switch try§(param1:int, param2:int) : §5214237893237906123423632234§
      {
         var _loc4_:§5214237893237906123423632234§ = null;
         var _loc3_:Dictionary = §var switch switch§[param2];
         if(_loc3_ != null)
         {
            _loc4_ = _loc3_[param1];
            if(_loc4_ == null)
            {
               _loc4_ = new §5214237893237906123423632234§(param1,param2);
               _loc3_[param1] = _loc4_;
            }
         }
         else
         {
            _loc3_ = new Dictionary();
            §var switch switch§[param2] = _loc3_;
            _loc4_ = new §5214237893237906123423632234§(param1,param2);
            _loc3_[param1] = _loc4_;
         }
         return _loc4_;
      }
      
      public static function §for super static§(param1:int) : §5214237893237906123423632234§
      {
         if(param1 < 0)
         {
            return §switch try§(4294967295,param1);
         }
         return §switch try§(0,param1);
      }
      
      public function §521423632376123423632234§(param1:ByteArray = null) : ByteArray
      {
         if(param1 == null)
         {
            param1 = new ByteArray();
         }
         param1.position = 0;
         param1.writeInt(this.§521423190412319054123423632234§);
         param1.writeInt(this.§use const break§);
         param1.position = 0;
         return param1;
      }
      
      public function get §521423166042316617123423632234§() : int
      {
         return this.§521423190412319054123423632234§;
      }
      
      final public function toString(param1:uint = 10) : String
      {
         var _loc5_:* = undefined;
         var _loc4_:§5214239583239596123423632234§ = null;
         var _loc6_:* = 0;
         var _loc3_:String = null;
         var _loc2_:String = null;
         if(param1 < 2 || param1 > 36)
         {
            throw new ArgumentError();
         }
         var _loc7_:§5214237893237906123423632234§;
         switch((_loc7_ = this).§521423190412319054123423632234§ - -1)
         {
            case 0:
               var _loc9_:§5214237893237906123423632234§ = this;
               return _loc9_.§use const break§.toString(param1);
            case 1:
               var _loc8_:§5214237893237906123423632234§ = this;
               return _loc8_.§use const break§.toString(param1);
            default:
               var _loc10_:§5214237893237906123423632234§ = this;
               var _loc11_:§5214237893237906123423632234§;
               if(_loc10_.§use const break§ == 0 && (_loc11_ = this).§521423190412319054123423632234§ == 0)
               {
                  return "0";
               }
               _loc5_ = new Vector.<String>();
               var _loc12_:§5214237893237906123423632234§;
               var _loc13_:§5214237893237906123423632234§;
               _loc4_ = new §5214239583239596123423632234§((_loc12_ = this).§use const break§,(_loc13_ = this).§521423190412319054123423632234§);
               var _loc14_:§5214237893237906123423632234§ = this;
               if(_loc14_.§521423190412319054123423632234§ < 0)
               {
                  _loc4_.§521423164822316495123423632234§();
                  _loc4_.§5214231576231589123423632234§(1);
               }
               var _loc15_:§5214239583239596123423632234§;
               do
               {
                  _loc6_ = _loc4_.§true while class§(param1);
                  _loc3_ = _loc6_ < 10 ? "0" : "a";
                  _loc5_[_loc5_.length] = String.fromCharCode(_loc3_.charCodeAt(0) + _loc6_);
               }
               while(_loc15_ = _loc4_, _loc15_.§override use override§ != 0);
               _loc2_ = _loc5_.reverse().join("");
               var _loc16_:§5214237893237906123423632234§ = this;
               if(_loc16_.§521423190412319054123423632234§ < 0)
               {
                  return "-" + _loc4_.§while function native§.toString(param1) + _loc2_;
               }
               return _loc4_.§while function native§.toString(param1) + _loc2_;
         }
      }
      
      public function get §while function native§() : int
      {
         return this.§use const break§;
      }
   }
}

