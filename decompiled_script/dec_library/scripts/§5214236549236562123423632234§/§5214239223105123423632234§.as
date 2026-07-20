package §5214236549236562123423632234§
{
   import flash.utils.ByteArray;
   
   public class §5214239223105123423632234§
   {
      
      private var §else use null§:Object;
      
      public function §5214239223105123423632234§(param1:ByteArray)
      {
         super();
         if(param1 != null)
         {
            this.§throw while do§(param1);
         }
      }
      
      public function §throw while do§(param1:ByteArray) : void
      {
         var _loc3_:ByteArray = null;
         var _loc6_:FileInfo = null;
         param1.endian = "bigEndian";
         var _loc4_:int = 0;
         var _loc2_:int = param1.readInt();
         var _loc5_:Vector.<FileInfo> = new Vector.<FileInfo>(_loc2_);
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            _loc5_[_loc4_] = new FileInfo(param1.readUTF(),param1.readInt());
            _loc4_++;
         }
         this.§else use null§ = {};
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_ = new ByteArray();
            _loc6_ = _loc5_[_loc4_];
            param1.readBytes(_loc3_,0,_loc6_.size);
            this.§else use null§[_loc6_.name] = _loc3_;
            _loc4_++;
         }
      }
      
      public function §521423191072319120123423632234§(param1:String) : ByteArray
      {
         if(this.§else use null§ == null)
         {
            return null;
         }
         return ByteArray(this.§else use null§[param1]);
      }
      
      public function get data() : Object
      {
         return this.§else use null§;
      }
   }
}

class FileInfo
{
   
   public var name:String;
   
   public var size:int;
   
   public function FileInfo(param1:String, param2:int)
   {
      super();
      this.name = param1.toLowerCase();
      this.size = param2;
   }
}
