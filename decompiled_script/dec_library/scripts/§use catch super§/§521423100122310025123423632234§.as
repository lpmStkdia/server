package §use catch super§
{
   import §521423118492311862123423632234§.§521423125452312558123423632234§;
   import §5214232595232608123423632234§.§true set function§;
   import §catch set implements§.§521423127512312764123423632234§;
   import §extends var else§.§while override§;
   import §function finally include§.§521423140812314094123423632234§;
   import §function use§.§521423120252312038123423632234§;
   import platform.client.fp10.core.model.impl.Model;
   import §var set catch§.§521423149892315002123423632234§;
   import §var set catch§.§default const finally§;
   import §with set class§.§for use switch§;
   
   public class §521423100122310025123423632234§ extends §521423149892315002123423632234§ implements §default const finally§, §while package get§, §while override§, §521423127512312764123423632234§
   {
      
      public static var §5214239065239078123423632234§:§521423125452312558123423632234§;
      
      public static var §521423103602310373123423632234§:§true set function§;
      
      public static var §521423124212312434123423632234§:§521423120252312038123423632234§;
      
      public function §521423100122310025123423632234§()
      {
         super();
      }
      
      public function §5214233361233374123423632234§(param1:String) : void
      {
         this.data().friends.push(param1);
         this.§case while include§();
      }
      
      public function §5214234426234439123423632234§(param1:String) : void
      {
         §521423140812314094123423632234§.§5214237926237939123423632234§(this.data().friends,param1);
         this.§case while include§();
      }
      
      private function §case while include§() : void
      {
         §5214239065239078123423632234§.§521423193972319410123423632234§(platform.client.fp10.core.model.impl.Model.§5214238154238167123423632234§.name,this.data().users.length,this.data().friends.length);
      }
      
      public function §5214232964232977123423632234§() : int
      {
         return this.data().users.length;
      }
      
      public function §521423181302318143123423632234§(param1:String) : void
      {
         §521423140812314094123423632234§.§5214237926237939123423632234§(this.data().users,param1);
         §521423124212312434123423632234§.§function finally function§(param1);
         if(§521423103602310373123423632234§.§implements while try§(param1,§for use switch§.§super while case§))
         {
            this.§5214234426234439123423632234§(param1);
         }
         this.§case while include§();
      }
      
      public function §finally package break§() : void
      {
         var _loc1_:String = null;
         var _loc2_:BattleDMData = this.data();
         var _loc3_:Vector.<String> = §521423127052312718123423632234§().§each package var§;
         var _loc4_:int = _loc3_.length - 1;
         while(_loc4_ >= 0)
         {
            _loc1_ = _loc3_[_loc4_];
            _loc2_.users.push(_loc1_);
            §521423124212312434123423632234§.§521423173092317322123423632234§(_loc1_,platform.client.fp10.core.model.impl.Model.§5214238154238167123423632234§);
            if(§521423103602310373123423632234§.§implements while try§(_loc1_,§for use switch§.§super while case§))
            {
               _loc2_.friends.push(_loc1_);
            }
            _loc4_--;
         }
      }
      
      public function §52142352318123423632234§() : int
      {
         return this.data().friends.length;
      }
      
      private function data() : BattleDMData
      {
         var _loc1_:BattleDMData = BattleDMData(getData(BattleDMData));
         if(_loc1_ == null)
         {
            _loc1_ = new BattleDMData();
            putData(BattleDMData,_loc1_);
         }
         return _loc1_;
      }
      
      public function §521423150792315092123423632234§(param1:String) : void
      {
         this.data().users.push(param1);
         §521423124212312434123423632234§.§521423173092317322123423632234§(param1,platform.client.fp10.core.model.impl.Model.§5214238154238167123423632234§);
         if(§521423103602310373123423632234§.§implements while try§(param1,§for use switch§.§super while case§))
         {
            this.§5214233361233374123423632234§(param1);
         }
         this.§case while include§();
      }
   }
}

class BattleDMData
{
   
   public var users:Vector.<String> = new Vector.<String>();
   
   public var friends:Vector.<String> = new Vector.<String>();
   
   public function BattleDMData()
   {
      super();
   }
}
