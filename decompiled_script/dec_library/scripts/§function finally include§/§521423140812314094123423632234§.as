package §function finally include§
{
   import §521423101982310211123423632234§.§5214238652238665123423632234§;
   import §use for finally§.§5214235199235212123423632234§;
   
   public class §521423140812314094123423632234§
   {
      
      public function §521423140812314094123423632234§()
      {
         super();
      }
      
      public static function §5214235667235680123423632234§(param1:Vector.<String>, param2:String) : Boolean
      {
         var _loc3_:int = int(param1.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(param1[_loc4_] == param2)
            {
               return true;
            }
            _loc4_++;
         }
         return false;
      }
      
      public static function §5214237926237939123423632234§(param1:Vector.<String>, param2:String) : void
      {
         var _loc3_:int = int(param1.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(param1[_loc4_] == param2)
            {
               param1[_loc4_] = param1[_loc3_ - 1];
               param1.pop();
               break;
            }
            _loc4_++;
         }
      }
      
      public static function §521423119342311947123423632234§(param1:Vector.<§5214235199235212123423632234§>, param2:String) : void
      {
         var _loc3_:int = int(param1.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(param1[_loc4_].§521423136902313703123423632234§ == param2)
            {
               param1[_loc4_] = param1[_loc3_ - 1];
               param1.pop();
               break;
            }
            _loc4_++;
         }
      }
      
      public static function §default function const§(param1:Vector.<§5214238652238665123423632234§>, param2:String) : §5214238652238665123423632234§
      {
         var _loc4_:§5214238652238665123423632234§ = null;
         var _loc5_:int = int(param1.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc5_)
         {
            if(param1[_loc3_].id == param2)
            {
               _loc4_ = param1[_loc3_];
               break;
            }
            _loc3_++;
         }
         return _loc4_;
      }
      
      public static function §5214233030233043123423632234§(param1:Vector.<§5214235199235212123423632234§>, param2:String) : §5214235199235212123423632234§
      {
         var _loc4_:§5214235199235212123423632234§ = null;
         var _loc5_:int = int(param1.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc5_)
         {
            if(param1[_loc3_].§521423136902313703123423632234§ == param2)
            {
               _loc4_ = param1[_loc3_];
               break;
            }
            _loc3_++;
         }
         return _loc4_;
      }
      
      public static function §function var break§(param1:Vector.<§5214238652238665123423632234§>, param2:String) : void
      {
         var _loc3_:int = int(param1.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(param1[_loc4_].id == param2)
            {
               param1[_loc4_] = param1[_loc3_ - 1];
               param1.pop();
               break;
            }
            _loc4_++;
         }
      }
      
      public static function §final use true§(param1:Array, param2:String) : void
      {
         var _loc3_:int = int(param1.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(param1[_loc4_].id == param2)
            {
               param1[_loc4_] = param1[_loc3_ - 1];
               param1.pop();
               break;
            }
            _loc4_++;
         }
      }
   }
}

