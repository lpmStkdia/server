package §default package continue§
{
   public class §5214233932233945123423632234§
   {
      
      private static var §false while implements§:Vector.<String>;
      
      private static var §true catch set§:int;
      
      private static var §continue null§:int;
      
      private static var §static package function§:int;
      
      private static const §const var package§:RegExp = /[^bpfvбпфвcgjkqsxzсцзкгхdtдтlлйmnмнrржшщч]/g;
      
      private static const §super finally native§:RegExp = /[bpfvбпфв]+/g;
      
      private static const §set while false§:RegExp = /[cgjkqsxzсцзкгх]+/g;
      
      private static const §521423165982316611123423632234§:RegExp = /[dtдт]+/g;
      
      private static const §else for break§:RegExp = /[lлй]+/g;
      
      private static const §5214233347233360123423632234§:RegExp = /[mnмн]+/g;
      
      private static const §521423122842312297123423632234§:RegExp = /[rр]+/g;
      
      private static const §override const each§:RegExp = /[жшщч]+/g;
      
      private static var §const switch native§:Vector.<Vector.<String>> = new Vector.<Vector.<String>>();
      
      public function §5214233932233945123423632234§()
      {
         super();
      }
      
      public static function §throw for import§(param1:String, param2:Boolean = false) : Vector.<String>
      {
         var _loc3_:int = 0;
         param1 = §5214234151234164123423632234§(param1);
         var _loc5_:Array = param1.split(" ");
         var _loc7_:Vector.<String> = new Vector.<String>();
         for each(var _loc6_ in _loc5_)
         {
            if(_loc6_ != "")
            {
               _loc7_[_loc7_.length] = _loc6_;
            }
         }
         var _loc4_:Vector.<String> = new Vector.<String>();
         for each(var _loc8_ in _loc7_)
         {
            _loc4_[_loc4_.length] = §5214233932233945123423632234§.§extends use class§(_loc8_);
         }
         if(param2 && _loc4_.length > 0 && (_loc7_.length >= §continue null§ || param1.length >= §true catch set§))
         {
            _loc3_ = int(§const switch native§.length);
            §const switch native§[_loc3_] = _loc4_;
            if(++_loc3_ > §static package function§)
            {
               §const switch native§.shift();
            }
         }
         return _loc4_;
      }
      
      private static function §extends use class§(param1:String) : String
      {
         var _loc4_:int = 0;
         var _loc6_:String = null;
         var _loc3_:RegExp = null;
         var _loc2_:Number = NaN;
         var _loc5_:String = param1.substr(0,1).toUpperCase();
         param1 = param1.substr(1).toLowerCase().replace(§const var package§,"");
         param1 = param1.replace(§super finally native§,"1").replace(§set while false§,"2").replace(§521423165982316611123423632234§,"3").replace(§else for break§,"4").replace(§5214233347233360123423632234§,"5").replace(§521423122842312297123423632234§,"6").replace(§override const each§,"7");
         _loc4_ = 0;
         while(_loc4_ < 10)
         {
            _loc6_ = _loc4_.toString();
            _loc3_ = new RegExp(_loc6_ + "{2,}");
            param1 = param1.replace(_loc3_,_loc6_);
            _loc4_++;
         }
         if(param1.length > 4)
         {
            param1 = param1.substr(0,4);
         }
         else
         {
            _loc2_ = 0;
            param1 += _loc2_.toFixed(4 - param1.length).substr(2);
         }
         return _loc5_ + param1;
      }
      
      public static function §5214239350239363123423632234§(param1:Vector.<String>, param2:int, param3:int, param4:int) : void
      {
         §5214233932233945123423632234§.§false while implements§ = param1;
         §5214233932233945123423632234§.§true catch set§ = param2;
         §5214233932233945123423632234§.§continue null§ = param3;
         §5214233932233945123423632234§.§static package function§ = param4;
      }
      
      private static function §5214234151234164123423632234§(param1:String) : String
      {
         var _loc3_:String = null;
         for each(var _loc2_ in §false while implements§)
         {
            _loc3_ = "(http://|https://)?(www\\.)?" + _loc2_ + "[-a-zA-Z0-9./#%_]+";
            param1 = param1.replace(new RegExp(_loc3_,"gi")," ");
         }
         return param1.replace(/[\s_!@#$%^&*()"'\{\}_=+~,.;:\-\/?\[\]\/]+/g," ");
      }
      
      public static function §5214236101236114123423632234§(param1:String) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Vector.<String> = §throw for import§(param1);
         if(param1.length < §true catch set§ && _loc5_.length < §continue null§)
         {
            return true;
         }
         if(§5214233932233945123423632234§.§super function implements§(param1) < 0.3 || §5214233932233945123423632234§.§521423151932315206123423632234§(_loc5_) < 0.59)
         {
            return false;
         }
         for each(var _loc3_ in §const switch native§)
         {
            _loc2_ = Math.max(_loc5_.length,_loc3_.length) / Math.min(_loc5_.length,_loc3_.length);
            if(_loc2_ < 1.5)
            {
               _loc4_ = §in for if§(_loc5_,_loc3_);
               if(_loc4_ > 0.7)
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      private static function §in for if§(param1:Vector.<String>, param2:Vector.<String>) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:Number = 0;
         var _loc3_:int = param1.indexOf(param2[0]);
         if(param1.length > 1 && _loc3_ > -1 && _loc3_ < param1.length / 2)
         {
            param1 = param1.slice(_loc3_);
         }
         var _loc4_:int = Math.min(param1.length,param2.length);
         _loc5_ = 0;
         while(_loc5_ < _loc4_)
         {
            if(param1[_loc5_] == param2[_loc5_])
            {
               _loc6_ += 1;
            }
            else if(_loc5_ > 0 && param1[_loc5_] == param2[_loc5_ - 1])
            {
               _loc6_ += 0.5;
            }
            else if(_loc5_ < _loc4_ - 1 && param1[_loc5_] == param2[_loc5_ + 1])
            {
               _loc6_ += 0.5;
            }
            _loc5_++;
         }
         return _loc6_ / _loc4_;
      }
      
      private static function §521423151932315206123423632234§(param1:Vector.<String>) : Number
      {
         if(param1.length < 1)
         {
            return 1;
         }
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(var _loc3_ in param1)
         {
            if(_loc2_.indexOf(_loc3_) < 0)
            {
               _loc2_[_loc2_.length] = _loc3_;
            }
         }
         return _loc2_.length / param1.length;
      }
      
      public static function §super function implements§(param1:String) : Number
      {
         var _loc2_:String = param1.replace(/[\s_!@#$%^&*()"'\{\}_=+~,.;:\-\/?\[\]\/]+/g,"");
         return _loc2_.length / param1.length;
      }
   }
}

