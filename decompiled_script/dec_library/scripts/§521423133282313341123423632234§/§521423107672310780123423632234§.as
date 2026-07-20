package §521423133282313341123423632234§
{
   import §5214231375231388123423632234§.§5214231930231943123423632234§;
   import §5214232264232277123423632234§.§5214237893237906123423632234§;
   import flash.utils.ByteArray;
   import §native package final§.§521423167552316768123423632234§;
   import §switch var else§.§dynamic finally package§;
   
   public class §521423107672310780123423632234§ implements §521423167552316768123423632234§
   {
      
      public const §52142323123244123423632234§:Class = §5214231930231943123423632234§;
      
      private var §5214233629233642123423632234§:§521423167552316768123423632234§;
      
      public function §521423107672310780123423632234§(param1:§dynamic finally package§)
      {
         super();
         this.§5214233629233642123423632234§ = param1.§5214238550238563123423632234§("native function continue.52142351823531123423632234");
      }
      
      public function §null const break§(param1:ByteArray, param2:Object) : void
      {
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§5214231930231943123423632234§ = §5214231930231943123423632234§(param2);
         this.§5214233629233642123423632234§.§null const break§(param1,_loc3_.§521423188262318839123423632234§);
      }
      
      public function §5214239183239196123423632234§(param1:ByteArray) : Object
      {
         var _loc6_:int = 0;
         var _loc2_:§5214231930231943123423632234§ = new §5214231930231943123423632234§();
         var _loc4_:Vector.<String> = this.§5214233629233642123423632234§.§5214239183239196123423632234§(param1) as Vector.<String>;
         var _loc3_:int = int(_loc4_.length);
         var _loc7_:ByteArray = new ByteArray();
         var _loc5_:Vector.<§5214237893237906123423632234§> = new Vector.<§5214237893237906123423632234§>(_loc3_);
         _loc6_ = 0;
         while(_loc6_ < _loc3_)
         {
            _loc7_.writeUTFBytes(_loc4_[_loc6_]);
            _loc7_.length = 8;
            _loc7_.position = 0;
            _loc5_[_loc6_] = §5214237893237906123423632234§.§switch try§(_loc7_.readInt(),_loc7_.readInt());
            _loc7_.clear();
            _loc6_++;
         }
         _loc2_.§521423188262318839123423632234§ = _loc5_;
         return _loc2_;
      }
   }
}

