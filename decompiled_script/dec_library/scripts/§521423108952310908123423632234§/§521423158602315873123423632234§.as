package §521423108952310908123423632234§
{
   import §521423175722317585123423632234§.§5214239797239810123423632234§;
   import flash.utils.Dictionary;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getQualifiedSuperclassName;
   
   public class §521423158602315873123423632234§
   {
      
      private static var §521423147362314749123423632234§:§521423158602315873123423632234§;
      
      private var §521423161082316121123423632234§:Dictionary;
      
      private var §5214233234233247123423632234§:Object;
      
      private var §5214239297239310123423632234§:Dictionary;
      
      private var §5214231774231787123423632234§:Dictionary;
      
      public function §521423158602315873123423632234§()
      {
         super();
         §521423161082316121123423632234§ = new Dictionary(true);
         §5214239297239310123423632234§ = new Dictionary(true);
         §5214231774231787123423632234§ = new Dictionary(true);
         §5214233234233247123423632234§ = §5214239797239810123423632234§.getStyleDefinition();
      }
      
      public static function §5214238859238872123423632234§(param1:Object, param2:String) : Object
      {
         var _loc3_:Class = §5214235034235047123423632234§(param1);
         var _loc4_:Object = §import use include§().§5214239297239310123423632234§[_loc3_];
         return _loc4_ == null ? null : _loc4_[param2];
      }
      
      private static function §52142376723780123423632234§(param1:§5214239797239810123423632234§, param2:String) : Object
      {
         var _loc4_:Class = §5214235034235047123423632234§(param1);
         var _loc3_:§521423158602315873123423632234§ = §import use include§();
         var _loc5_:Object = _loc3_.§5214239297239310123423632234§[_loc4_];
         var _loc6_:Object = _loc5_[param2];
         if(_loc6_ != null)
         {
            return _loc6_;
         }
         _loc6_ = _loc3_.§5214233234233247123423632234§[param2];
         if(_loc6_ != null)
         {
            return _loc6_;
         }
         return _loc3_.§5214231774231787123423632234§[_loc4_][param2];
      }
      
      private static function §5214235034235047123423632234§(param1:Object) : Class
      {
         if(param1 is Class)
         {
            return param1 as Class;
         }
         try
         {
            return getDefinitionByName(getQualifiedClassName(param1)) as Class;
         }
         catch(e:Error)
         {
            if(param1 is §5214239797239810123423632234§)
            {
               try
               {
                  return param1.loaderInfo.applicationDomain.getDefinition(getQualifiedClassName(param1)) as Class;
               }
               catch(e:Error)
               {
               }
            }
         }
         return null;
      }
      
      private static function §import use include§() : §521423158602315873123423632234§
      {
         if(§521423147362314749123423632234§ == null)
         {
            §521423147362314749123423632234§ = new §521423158602315873123423632234§();
         }
         return §521423147362314749123423632234§;
      }
      
      private static function §521423102752310288123423632234§(param1:§5214239797239810123423632234§) : void
      {
         var _loc2_:§521423158602315873123423632234§ = §import use include§();
         var _loc3_:Class = §5214235034235047123423632234§(param1);
         var _loc4_:Object = _loc2_.§5214231774231787123423632234§[_loc3_];
         for(var _loc5_ in _loc4_)
         {
            param1.§super for for§(_loc5_,§52142376723780123423632234§(param1,_loc5_));
         }
      }
      
      public static function §5214235612235625123423632234§(param1:§5214239797239810123423632234§) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Class = null;
         var _loc2_:§521423158602315873123423632234§ = §import use include§();
         var _loc3_:Class = §5214235034235047123423632234§(param1);
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc2_.§521423161082316121123423632234§[_loc3_] == null)
         {
            _loc4_ = null;
            _loc2_.§521423161082316121123423632234§[_loc3_] = new Dictionary(true);
            _loc5_ = _loc3_;
            while(_loc4_ == null)
            {
               if(_loc5_["getStyleDefinition"] != null)
               {
                  _loc4_ = _loc5_["getStyleDefinition"]();
                  break;
               }
               _loc5_ = getDefinitionByName(getQualifiedSuperclassName(_loc5_)) as Class;
            }
            _loc2_.§5214231774231787123423632234§[_loc3_] = _loc4_;
            _loc2_.§5214239297239310123423632234§[_loc3_] = {};
         }
         _loc2_.§521423161082316121123423632234§[_loc3_][param1] = true;
         §521423102752310288123423632234§(param1);
      }
   }
}

