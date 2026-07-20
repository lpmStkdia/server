package §5214233693233706123423632234§
{
   import §521423122282312241123423632234§.§5214238026238039123423632234§;
   import §5214231886231899123423632234§.§5214231214231227123423632234§;
   import §521423188792318892123423632234§.§521423136762313689123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import §super return§.§521423106262310639123423632234§;
   import §super return§.§5214232134232147123423632234§;
   import §super return§.§dynamic function continue§;
   
   public class §521423151462315159123423632234§
   {
      
      private static const §package for include§:int = 255;
      
      private static const §521423179212317934123423632234§:§5214238026238039123423632234§ = new §5214238026238039123423632234§(0,1);
      
      private static const §521423133592313372123423632234§:§do function else§ = new §do function else§();
      
      private static const §finally package case§:§do function else§ = new §do function else§();
      
      private static const §throw finally extends§:§do function else§ = new §do function else§();
      
      private static const §521423164412316454123423632234§:§521423136762313689123423632234§ = new §521423136762313689123423632234§();
      
      public function §521423151462315159123423632234§()
      {
         super();
      }
      
      private static function §override for true§(param1:XMLList) : Vector.<§5214231214231227123423632234§>
      {
         var _loc4_:int = 0;
         var _loc7_:XML = null;
         var _loc3_:§5214231214231227123423632234§ = null;
         var _loc5_:XMLList = param1.child("collision-plane");
         var _loc2_:int = _loc5_.length();
         var _loc6_:Vector.<§5214231214231227123423632234§> = new Vector.<§5214231214231227123423632234§>(_loc2_);
         §521423133592313372123423632234§.§521423155722315585123423632234§ = 0;
         while(_loc4_ < _loc2_)
         {
            _loc7_ = _loc5_[_loc4_];
            §521423133592313372123423632234§.x = 0.5 * Number(_loc7_.child("width"));
            §521423133592313372123423632234§.y = 0.5 * Number(_loc7_.child("length"));
            _loc3_ = new §5214232134232147123423632234§(§521423133592313372123423632234§,255,§521423179212317934123423632234§);
            §521423113012311314123423632234§(_loc3_,_loc7_);
            _loc6_[_loc4_] = _loc3_;
            _loc4_++;
         }
         return _loc6_;
      }
      
      private static function §5214239194239207123423632234§(param1:XMLList, param2:§do function else§) : void
      {
         param2.x = param1.child("x");
         param2.y = param1.child("y");
         param2.§521423155722315585123423632234§ = param1.child("z");
      }
      
      private static function §521423113012311314123423632234§(param1:§5214231214231227123423632234§, param2:XML) : void
      {
         §5214239194239207123423632234§(param2.child("position"),§finally package case§);
         §5214239194239207123423632234§(param2.child("rotation"),§throw finally extends§);
         §521423164412316454123423632234§.§set const get§(§throw finally extends§.x,§throw finally extends§.y,§throw finally extends§.§521423155722315585123423632234§);
         param1.§521423126962312709123423632234§.§include use extends§(§521423164412316454123423632234§,§finally package case§);
      }
      
      private static function §5214236764236777123423632234§(param1:XMLList) : Vector.<§5214231214231227123423632234§>
      {
         var _loc4_:int = 0;
         var _loc7_:XML = null;
         var _loc3_:§5214231214231227123423632234§ = null;
         var _loc5_:XMLList = param1.child("collision-box");
         var _loc2_:int = _loc5_.length();
         var _loc6_:Vector.<§5214231214231227123423632234§> = new Vector.<§5214231214231227123423632234§>(_loc2_);
         while(_loc4_ < _loc2_)
         {
            _loc7_ = _loc5_[_loc4_];
            §5214239194239207123423632234§(_loc7_.child("size"),§521423133592313372123423632234§);
            §521423133592313372123423632234§.§521423128812312894123423632234§(0.5);
            _loc3_ = new §dynamic function continue§(§521423133592313372123423632234§,255,§521423179212317934123423632234§);
            §521423113012311314123423632234§(_loc3_,_loc7_);
            _loc6_[_loc4_] = _loc3_;
            _loc4_++;
         }
         return _loc6_;
      }
      
      private static function §with function implements§(param1:XMLList) : Vector.<§5214231214231227123423632234§>
      {
         var _loc4_:int = 0;
         var _loc10_:XML = null;
         var _loc3_:§5214231214231227123423632234§ = null;
         var _loc5_:§do function else§ = new §do function else§();
         var _loc6_:§do function else§ = new §do function else§();
         var _loc7_:§do function else§ = new §do function else§();
         var _loc8_:XMLList = param1.child("collision-triangle");
         var _loc2_:int = _loc8_.length();
         var _loc9_:Vector.<§5214231214231227123423632234§> = new Vector.<§5214231214231227123423632234§>(_loc2_);
         while(_loc4_ < _loc2_)
         {
            _loc10_ = _loc8_[_loc4_];
            §5214239194239207123423632234§(_loc10_.child("v0"),_loc5_);
            §5214239194239207123423632234§(_loc10_.child("v1"),_loc6_);
            §5214239194239207123423632234§(_loc10_.child("v2"),_loc7_);
            _loc3_ = new §521423106262310639123423632234§(_loc5_,_loc6_,_loc7_,255,§521423179212317934123423632234§);
            §521423113012311314123423632234§(_loc3_,_loc10_);
            _loc9_[_loc4_] = _loc3_;
            _loc4_++;
         }
         return _loc9_;
      }
      
      public static function §throw while do§(param1:XML) : Vector.<§5214231214231227123423632234§>
      {
         var _loc3_:Vector.<§5214231214231227123423632234§> = new Vector.<§5214231214231227123423632234§>();
         var _loc2_:XMLList = param1.child("collision-geometry");
         §5214236904236917123423632234§(§override for true§(_loc2_),_loc3_);
         §5214236904236917123423632234§(§5214236764236777123423632234§(_loc2_),_loc3_);
         §5214236904236917123423632234§(§with function implements§(_loc2_),_loc3_);
         return _loc3_;
      }
      
      private static function §5214236904236917123423632234§(param1:Vector.<§5214231214231227123423632234§>, param2:Vector.<§5214231214231227123423632234§>) : void
      {
         var _loc4_:int = 0;
         var _loc3_:int = 0;
         var _loc5_:int = int(param2.length);
         _loc4_ = 0;
         _loc3_ = int(param1.length);
         while(_loc4_ < _loc3_)
         {
            param2[_loc5_ + _loc4_] = param1[_loc4_];
            _loc4_++;
         }
      }
   }
}

