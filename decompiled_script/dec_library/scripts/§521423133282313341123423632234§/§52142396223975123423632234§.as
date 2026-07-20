package §521423133282313341123423632234§
{
   import §5214231107231120123423632234§.§switch package var§;
   import flash.utils.ByteArray;
   import §native package final§.§521423167552316768123423632234§;
   import §switch var else§.§dynamic finally package§;
   
   public class §52142396223975123423632234§ implements §521423167552316768123423632234§
   {
      
      private var §dynamic finally static§:§521423167552316768123423632234§;
      
      public function §52142396223975123423632234§(param1:§dynamic finally package§)
      {
         super();
         this.§dynamic finally static§ = param1.§5214238550238563123423632234§("521423133282313341123423632234.5214237451237464123423632234");
      }
      
      public function §5214239183239196123423632234§(param1:ByteArray) : Object
      {
         var _loc4_:int = 0;
         var _loc3_:int = param1.readInt();
         var _loc2_:Vector.<§switch package var§> = new Vector.<§switch package var§>(_loc3_,true);
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_[_loc4_] = §switch package var§(this.§dynamic finally static§.§5214239183239196123423632234§(param1));
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §null const break§(param1:ByteArray, param2:Object) : void
      {
         var _loc5_:int = 0;
         var _loc3_:Vector.<§switch package var§> = param2 as Vector.<§switch package var§>;
         var _loc4_:int = int(_loc3_.length);
         param1.writeInt(_loc4_);
         _loc5_ = 0;
         while(_loc5_ < _loc4_)
         {
            this.§dynamic finally static§.§null const break§(param1,_loc3_[_loc5_]);
            _loc5_++;
         }
      }
   }
}

