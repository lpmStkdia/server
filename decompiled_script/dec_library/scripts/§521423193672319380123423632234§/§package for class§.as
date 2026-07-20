package §521423193672319380123423632234§
{
   import flash.utils.ByteArray;
   import §native package final§.§521423167552316768123423632234§;
   import §switch var else§.§dynamic finally package§;
   
   public class §package for class§
   {
      
      public static var §5214234090234103123423632234§:§dynamic finally package§;
      
      public static const §each use class§:int = 8;
      
      private static const §5214234391234404123423632234§:ByteArray = §521423168272316840123423632234§();
      
      private var §521423135952313608123423632234§:int = 8;
      
      private var §catch var case§:Vector.<§521423167552316768123423632234§> = new Vector.<§521423167552316768123423632234§>();
      
      private var §import finally in§:Vector.<Object>;
      
      public function §package for class§()
      {
         super();
      }
      
      private static function §521423168272316840123423632234§() : ByteArray
      {
         var _loc1_:ByteArray = new ByteArray();
         _loc1_.endian = "bigEndian";
         return _loc1_;
      }
      
      public function §521423180452318058123423632234§(param1:Object, param2:int) : void
      {
         throw new Error("Not implemented");
      }
      
      public function §521423117612311774123423632234§(param1:Object) : void
      {
         if(§import finally in§ == null)
         {
            §import finally in§ = new Vector.<Object>();
         }
         this.§import finally in§[§import finally in§.length] = param1;
      }
      
      public function §override import§(param1:ByteArray) : void
      {
         var _loc3_:int = 0;
         param1.position = 4;
         param1.writeInt(this.§5214239737239750123423632234§());
         var _loc2_:int = int(this.§catch var case§.length);
         while(_loc3_ < _loc2_)
         {
            this.§catch var case§[_loc3_].§null const break§(§5214234391234404123423632234§,this.§import finally in§[_loc3_]);
            _loc3_++;
         }
         §5214234090234103123423632234§.§case break§().§521423114622311475123423632234§(§5214234391234404123423632234§);
         param1.writeBytes(§5214234391234404123423632234§);
         this.§521423135952313608123423632234§ = 8 + §5214234391234404123423632234§.length;
         §5214234391234404123423632234§.clear();
         param1.position = 0;
         param1.writeInt(§521423135952313608123423632234§);
      }
      
      public function §5214233209233222123423632234§(param1:String) : void
      {
         this.§catch var case§[§catch var case§.length] = §5214234090234103123423632234§.§5214238550238563123423632234§(param1);
      }
      
      public function §override set default§(param1:ByteArray) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         param1.position = 0;
         var _loc2_:int = int(this.§catch var case§.length);
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.§catch var case§[_loc3_].§5214239183239196123423632234§(param1);
            this.§521423180452318058123423632234§(_loc4_,_loc3_);
            _loc3_++;
         }
      }
      
      public function §5214234392234405123423632234§() : §package for class§
      {
         throw new Error("AbstractPacket::getReference must be overrided!");
      }
      
      public function §521423138342313847123423632234§() : int
      {
         return 0;
      }
      
      public function §switch const true§() : int
      {
         return this.§521423135952313608123423632234§;
      }
      
      public function §5214239737239750123423632234§() : int
      {
         return 0;
      }
   }
}

