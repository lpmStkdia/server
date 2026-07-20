package §521423167402316753123423632234§
{
   import §521423117312311744123423632234§.§true const implements§;
   import §521423188792318892123423632234§.§do function else§;
   import §each set default§.§for switch else§;
   import flash.geom.ColorTransform;
   
   public class §if package final§ extends §for switch else§
   {
      
      private static var §static set extends§:int = -1;
      
      private static var §break null§:Vector.<§if package final§> = new Vector.<§if package final§>(20);
      
      public var §521423181742318187123423632234§:§do function else§ = new §do function else§();
      
      public var §5214231176231189123423632234§:Number = 0;
      
      public var §import switch default§:Number;
      
      public var §5214234768234781123423632234§:int;
      
      public function §if package final§()
      {
         super(100,100);
         softAttenuation = 130;
         colorTransform = new ColorTransform();
      }
      
      public static function §521423160962316109123423632234§() : §if package final§
      {
         if(§static set extends§ == -1)
         {
            return new §if package final§();
         }
         var _loc1_:§if package final§ = §break null§[§static set extends§];
         §break null§[§static set extends§--] = null;
         _loc1_.§case const get§();
         return _loc1_;
      }
      
      private static function §521423147252314738123423632234§(param1:§true const implements§, param2:§true const implements§, param3:Number, param4:ColorTransform) : void
      {
         param4.alphaMultiplier = param1.§521423193192319332123423632234§ + param3 * (param2.§521423193192319332123423632234§ - param1.§521423193192319332123423632234§);
         param4.alphaOffset = param1.§5214234390234403123423632234§ + param3 * (param2.§5214234390234403123423632234§ - param1.§5214234390234403123423632234§);
         param4.redMultiplier = param1.§5214233369233382123423632234§ + param3 * (param2.§5214233369233382123423632234§ - param1.§5214233369233382123423632234§);
         param4.redOffset = param1.§for finally false§ + param3 * (param2.§for finally false§ - param1.§for finally false§);
         param4.greenMultiplier = param1.§implements package use§ + param3 * (param2.§implements package use§ - param1.§implements package use§);
         param4.greenOffset = param1.§521423149262314939123423632234§ + param3 * (param2.§521423149262314939123423632234§ - param1.§521423149262314939123423632234§);
         param4.blueMultiplier = param1.§break package const§ + param3 * (param2.§break package const§ - param1.§break package const§);
         param4.blueOffset = param1.§5214235264235277123423632234§ + param3 * (param2.§5214235264235277123423632234§ - param1.§5214235264235277123423632234§);
      }
      
      private static function §5214239829239842123423632234§(param1:§true const implements§, param2:ColorTransform) : void
      {
         param2.alphaMultiplier = param1.§521423193192319332123423632234§;
         param2.alphaOffset = param1.§5214234390234403123423632234§;
         param2.redMultiplier = param1.§5214233369233382123423632234§;
         param2.redOffset = param1.§for finally false§;
         param2.greenMultiplier = param1.§implements package use§;
         param2.greenOffset = param1.§521423149262314939123423632234§;
         param2.blueMultiplier = param1.§break package const§;
         param2.blueOffset = param1.§5214235264235277123423632234§;
      }
      
      public function §native const set§(param1:Number, param2:Vector.<§true const implements§>) : void
      {
         var _loc3_:Number = NaN;
         var _loc5_:§true const implements§ = null;
         var _loc4_:int = 0;
         var _loc6_:§true const implements§ = null;
         if(param2 != null)
         {
            _loc3_ = this.§5214231176231189123423632234§ / param1;
            if(_loc3_ <= 0)
            {
               _loc5_ = param2[0];
               §5214239829239842123423632234§(_loc5_,colorTransform);
            }
            else if(_loc3_ >= 1)
            {
               _loc5_ = param2[param2.length - 1];
               §5214239829239842123423632234§(_loc5_,colorTransform);
            }
            else
            {
               _loc4_ = 1;
               _loc5_ = param2[0];
               _loc6_ = param2[1];
               while(_loc6_.§521423191332319146123423632234§ < _loc3_)
               {
                  _loc4_++;
                  _loc5_ = _loc6_;
                  _loc6_ = param2[_loc4_];
               }
               _loc3_ = (_loc3_ - _loc5_.§521423191332319146123423632234§) / (_loc6_.§521423191332319146123423632234§ - _loc5_.§521423191332319146123423632234§);
               §521423147252314738123423632234§(_loc5_,_loc6_,_loc3_,colorTransform);
            }
            alpha = colorTransform.alphaMultiplier;
         }
      }
      
      public function §case const get§() : void
      {
         var _loc1_:ColorTransform = colorTransform;
         if(_loc1_ != null)
         {
            _loc1_.redMultiplier = 1;
            _loc1_.greenMultiplier = 1;
            _loc1_.blueMultiplier = 1;
            _loc1_.alphaMultiplier = 1;
            _loc1_.redOffset = 0;
            _loc1_.greenOffset = 0;
            _loc1_.blueOffset = 0;
            _loc1_.alphaOffset = 0;
         }
         alpha = 1;
      }
      
      public function §get var false§() : void
      {
         §52142367423687123423632234§();
         §break null§[++§static set extends§] = this;
      }
   }
}

