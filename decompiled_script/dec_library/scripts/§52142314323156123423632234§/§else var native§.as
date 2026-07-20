package §52142314323156123423632234§
{
   import §521423134512313464123423632234§.§5214237687237700123423632234§;
   import §521423165552316568123423632234§.§default var function§;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.materials.TextureMaterial;
   import §do package throw§.§5214235116235129123423632234§;
   import §do package throw§.§native function implements§;
   import §each set default§.§521423107322310745123423632234§;
   import §each set default§.§521423144672314480123423632234§;
   import §throw while throw§.§each const return§;
   
   public class §else var native§ implements §5214235116235129123423632234§
   {
      
      private static const §5214235276235289123423632234§:Number = 0.01;
      
      private var §package for do§:§native function implements§;
      
      private var §const catch continue§:Camera3D;
      
      private var §521423147772314790123423632234§:Vector.<§521423157192315732123423632234§>;
      
      private var §default set continue§:int;
      
      private var §with switch switch§:Number;
      
      private var §import while use§:Number;
      
      private var §521423163672316380123423632234§:Number;
      
      private var §dynamic for catch§:§5214237687237700123423632234§;
      
      public function §else var native§(param1:§native function implements§, param2:int = 2200, param3:Number = 7000, param4:Number = 2400)
      {
         super();
         this.§package for do§ = param1;
         this.§const catch continue§ = param1.§default catch§();
         this.§default set continue§ = param2;
         this.§with switch switch§ = param3;
         this.§import while use§ = param4;
         this.§521423163672316380123423632234§ = §const catch continue§.rotationY;
      }
      
      public function render(param1:int, param2:int) : void
      {
         var _loc4_:int = 0;
         var _loc5_:§521423157192315732123423632234§ = null;
         var _loc3_:Boolean = false;
         var _loc6_:Number = §const catch continue§.rotationY - §521423163672316380123423632234§;
         if((_loc6_ > 0 ? _loc6_ : -_loc6_) >= 0.01)
         {
            _loc3_ = true;
            §521423163672316380123423632234§ = §const catch continue§.rotationY;
         }
         _loc4_ = 0;
         while(_loc4_ < §default set continue§)
         {
            _loc5_ = §521423147772314790123423632234§[_loc4_];
            if(_loc3_)
            {
               _loc5_.§case const get§(§const catch continue§);
            }
            _loc5_.§function const package§(param2,§const catch continue§);
            _loc4_++;
         }
      }
      
      public function set enabled(param1:Boolean) : void
      {
         var _loc6_:int = 0;
         var _loc2_:§521423144672314480123423632234§ = null;
         var _loc7_:§521423157192315732123423632234§ = null;
         if(§dynamic for catch§ != null)
         {
            §dynamic for catch§.§false use var§();
            §521423147772314790123423632234§.length = 0;
            §package for do§.§5214235651235664123423632234§(this);
         }
         if(!param1)
         {
            return;
         }
         this.§dynamic for catch§ = new §5214237687237700123423632234§();
         var _loc5_:Vector.<§521423144672314480123423632234§> = new <§521423144672314480123423632234§>[new §521423144672314480123423632234§(0,0,0.5454545454545454,0.631578947368421),new §521423144672314480123423632234§(0.5454545454545454,0.631578947368421,1,1),new §521423144672314480123423632234§(0,0.631578947368421,0.3181818181818182,1)];
         var _loc4_:§521423107322310745123423632234§ = §521423107322310745123423632234§(§default var function§.§import use include§().§5214231532231545123423632234§(§521423107322310745123423632234§));
         var _loc3_:TextureMaterial = _loc4_.§return var var§(new §each const return§(0,0),false,false);
         this.§521423147772314790123423632234§ = new Vector.<§521423157192315732123423632234§>(§default set continue§);
         _loc6_ = 0;
         while(_loc6_ < §default set continue§)
         {
            _loc2_ = _loc5_[int(Math.random() * 3)];
            _loc7_ = new §521423157192315732123423632234§(_loc3_,§with switch switch§,§import while use§);
            _loc7_.topLeftU = _loc2_.§5214231868231881123423632234§;
            _loc7_.topLeftV = _loc2_.§5214238365238378123423632234§;
            _loc7_.bottomRightU = _loc2_.§default for super§;
            _loc7_.bottomRightV = _loc2_.§class null§;
            _loc7_.§case const get§(§const catch continue§);
            §dynamic for catch§.§package finally var§(_loc7_);
            §521423147772314790123423632234§[_loc6_] = _loc7_;
            _loc6_++;
         }
         §package for do§.§with catch return§(this);
      }
   }
}

