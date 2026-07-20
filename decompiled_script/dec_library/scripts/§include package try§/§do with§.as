package §include package try§
{
   import §5214239493239506123423632234§.§521423181162318129123423632234§;
   import §5214239493239506123423632234§.§521423191762319189123423632234§;
   import §5214239493239506123423632234§.§5214238967238980123423632234§;
   
   public class §do with§ implements §521423191762319189123423632234§
   {
      
      private static const §if const null§:RegExp = /(?:[^"\s]+)|(?:"[^"]*")/g;
      
      private const §finally set do§:String = "cmd";
      
      public var §5214231104231117123423632234§:Vector.<§521423122912312304123423632234§> = new Vector.<§521423122912312304123423632234§>();
      
      public function §do with§()
      {
         super();
      }
      
      public function §implements function const§(param1:String, param2:§521423181162318129123423632234§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc6_:* = undefined;
         var _loc5_:Vector.<String> = this.§5214238452238465123423632234§(param1);
         var _loc7_:§super for static§ = new §super for static§();
         this.§521423116082311621123423632234§(_loc5_[0],[],_loc7_);
         _loc3_ = 1;
         while(_loc3_ < _loc5_.length)
         {
            _loc4_ = _loc5_[_loc3_];
            _loc6_ = _loc7_.§5214237265237278123423632234§;
            _loc7_ = new §super for static§();
            this.§521423116082311621123423632234§(_loc4_,[_loc6_],_loc7_);
            _loc3_++;
         }
         param2.§catch use if§(_loc7_.§5214237265237278123423632234§);
      }
      
      private function §for switch get§(param1:§521423122912312304123423632234§, param2:String, param3:String) : Boolean
      {
         return param1.§521423722385123423632234§ == param2 && param1.§false package with§ == param3;
      }
      
      public function §for while if§(param1:String, param2:String, param3:Vector.<§5214238967238980123423632234§>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:§521423122912312304123423632234§ = null;
         if(param3 == null)
         {
            param3 = new Vector.<§5214238967238980123423632234§>();
         }
         _loc4_ = 0;
         while(_loc4_ < this.§5214231104231117123423632234§.length)
         {
            _loc5_ = this.§5214231104231117123423632234§[_loc4_];
            if(this.§for switch get§(_loc5_,param1,param2))
            {
               if(_loc5_.§521423153732315386123423632234§.toString() == param3.toString())
               {
                  this.§5214231104231117123423632234§.removeAt(_loc4_);
                  return;
               }
            }
            _loc4_++;
         }
      }
      
      public function §try super do§(param1:String, param2:String, param3:String, param4:Vector.<§5214238967238980123423632234§>, param5:Function) : void
      {
         if(param4 == null)
         {
            param4 = new Vector.<§5214238967238980123423632234§>();
         }
         var _loc6_:§521423122912312304123423632234§ = new §521423122912312304123423632234§(param1,param2,param3,param4,param5);
         this.§5214231104231117123423632234§[§5214231104231117123423632234§.length] = _loc6_;
      }
      
      private function §5214238452238465123423632234§(param1:String) : Vector.<String>
      {
         var _loc6_:int = 0;
         var _loc3_:String = null;
         var _loc2_:String = null;
         var _loc8_:Vector.<String> = new Vector.<String>();
         var _loc4_:Boolean = true;
         var _loc5_:int = 0;
         _loc6_ = 0;
         while(_loc6_ < param1.length)
         {
            _loc3_ = param1.charAt(_loc6_);
            if(_loc3_ == "\"")
            {
               _loc4_ = !_loc4_;
            }
            if(_loc3_ == "|" && _loc4_)
            {
               _loc2_ = param1.substr(_loc5_,_loc6_ - _loc5_);
               _loc8_[_loc8_.length] = _loc2_;
               _loc5_ = _loc6_ + 1;
            }
            _loc6_++;
         }
         var _loc7_:String = param1.substr(_loc5_,param1.length - _loc5_);
         _loc8_[_loc8_.length] = _loc7_;
         return _loc8_;
      }
      
      private function §521423116082311621123423632234§(param1:String, param2:Array, param3:§521423181162318129123423632234§) : void
      {
         var _loc7_:int = 0;
         var _loc6_:Array = null;
         var _loc5_:String = null;
         var _loc9_:String = null;
         var _loc11_:§521423122912312304123423632234§ = null;
         param1 = param1.replace(/^\s+|\s+$/g,"");
         var _loc4_:Array = param1.match(§if const null§);
         if(_loc4_.length == 0)
         {
            throw new §if finally catch§(param1,"");
         }
         var _loc10_:Array = (_loc4_[0] as String).split(".");
         if(_loc10_.length == 1)
         {
            _loc5_ = "cmd";
            _loc9_ = String(_loc10_[0]);
         }
         else
         {
            if(_loc10_.length != 2)
            {
               throw new §static var final§(param1);
            }
            _loc5_ = String(_loc10_[0]);
            _loc9_ = String(_loc10_[1]);
         }
         _loc4_.shift();
         while(_loc7_ < this.§5214231104231117123423632234§.length)
         {
            _loc11_ = this.§5214231104231117123423632234§[_loc7_];
            if(this.§for switch get§(_loc11_,_loc5_,_loc9_))
            {
               if(_loc11_.§521423153732315386123423632234§.length === _loc4_.length + param2.length)
               {
                  _loc6_ = this.§static while dynamic§(_loc11_.§521423153732315386123423632234§,_loc4_);
                  _loc6_ = _loc6_.concat(param2);
                  _loc11_.§final finally do§(_loc6_,param3);
                  return;
               }
            }
            _loc7_++;
         }
         var _loc8_:String = "";
         _loc7_ = 0;
         while(_loc7_ < this.§5214231104231117123423632234§.length)
         {
            _loc11_ = this.§5214231104231117123423632234§[_loc7_];
            if(_loc11_.§521423722385123423632234§ != "cmd")
            {
               if(_loc11_.§false package with§ == _loc9_ || _loc11_.§521423722385123423632234§ == _loc5_ || _loc11_.§521423722385123423632234§ == _loc9_)
               {
                  _loc8_ += _loc11_.§521423722385123423632234§ + "." + _loc11_.§false package with§ + " " + _loc11_.§do while get§() + "\n";
               }
            }
            _loc7_++;
         }
         throw new §if finally catch§(param1,_loc8_);
      }
      
      private function §static while dynamic§(param1:Vector.<§5214238967238980123423632234§>, param2:Array) : Array
      {
         var _loc5_:int = 0;
         var _loc7_:String = null;
         var _loc6_:String = null;
         var _loc3_:Array = [];
         var _loc4_:int = int(param2.length);
         _loc5_ = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = param2[_loc5_];
            switch(param1[_loc5_])
            {
               case §5214238967238980123423632234§.§5214235563235576123423632234§:
                  _loc6_ = _loc7_;
                  if(_loc6_.charAt(0) == "\"")
                  {
                     _loc6_ = _loc6_.substr(1);
                  }
                  if(_loc6_.charAt(_loc6_.length - 1) == "\"")
                  {
                     _loc6_ = _loc6_.substr(0,_loc6_.length - 1);
                  }
                  _loc3_[_loc5_] = _loc6_;
                  break;
               case §5214238967238980123423632234§.§else var function§:
                  _loc3_[_loc5_] = int(_loc7_);
                  break;
               case §5214238967238980123423632234§.§get use class§:
                  _loc3_[_loc5_] = uint(_loc7_);
                  break;
               case §5214238967238980123423632234§.§5214237060237073123423632234§:
                  _loc3_[_loc5_] = Number(_loc7_);
                  break;
               default:
                  _loc3_[_loc5_] = null;
            }
            _loc5_++;
         }
         return _loc3_;
      }
   }
}

