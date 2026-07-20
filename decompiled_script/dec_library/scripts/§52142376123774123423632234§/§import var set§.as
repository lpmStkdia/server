package §52142376123774123423632234§
{
   import §521423158432315856123423632234§.§do use with§;
   import flash.utils.Dictionary;
   import flash.utils.clearInterval;
   import flash.utils.getTimer;
   import flash.utils.setInterval;
   
   public class §import var set§ implements §do use with§
   {
      
      private static var §521423152602315273123423632234§:int;
      
      private static var §5214239210239223123423632234§:Vector.<§import var set§> = new Vector.<§import var set§>();
      
      private static var §5214233845233858123423632234§:Vector.<Object> = new Vector.<Object>();
      
      private var §5214231762231775123423632234§:uint;
      
      private var §class use use§:int;
      
      private var §default var try§:Dictionary = new Dictionary();
      
      public function §import var set§()
      {
         super();
      }
      
      public static function §extends const package§() : void
      {
         if(§5214239210239223123423632234§.length != 0)
         {
            clearInterval(§521423152602315273123423632234§);
            §5214239210239223123423632234§.length = 0;
         }
      }
      
      private static function §5214232257232270123423632234§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§import var set§ = null;
         var _loc3_:int = getTimer();
         _loc1_ = §5214239210239223123423632234§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §5214239210239223123423632234§[_loc1_];
            _loc2_.§5214238089238102123423632234§(_loc3_);
            _loc1_--;
         }
      }
      
      private function §false function break§() : void
      {
         var _loc1_:Number = §5214239210239223123423632234§.indexOf(this);
         if(_loc1_ == -1)
         {
            return;
         }
         §5214239210239223123423632234§.removeAt(_loc1_);
         if(§5214239210239223123423632234§.length == 0)
         {
            clearInterval(§521423152602315273123423632234§);
         }
      }
      
      public function §try var super§() : int
      {
         return this.§class use use§;
      }
      
      public function §false use var§() : void
      {
         this.§false function break§();
         this.§default var try§ = new Dictionary();
      }
      
      public function §extends function null§(param1:Class, param2:Object) : void
      {
         var _loc3_:Vector.<Object> = this.§default var try§[param1];
         if(_loc3_ != null)
         {
            _loc3_.splice(_loc3_.indexOf(param2),1);
         }
      }
      
      private function §super const false§() : void
      {
         if(§5214239210239223123423632234§.length == 0)
         {
            §521423152602315273123423632234§ = setInterval(§5214232257232270123423632234§,1000);
         }
         §5214239210239223123423632234§[§5214239210239223123423632234§.length] = this;
      }
      
      private function §default finally function§(param1:Class) : Vector.<Object>
      {
         var _loc2_:Vector.<Object> = this.§default var try§[param1];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         return §5214233845233858123423632234§;
      }
      
      private function §5214238089238102123423632234§(param1:int) : void
      {
         this.§class use use§ = Math.ceil((this.§5214231762231775123423632234§ - param1) / 1000);
         if(this.§class use use§ <= 0)
         {
            this.§5214232456232469123423632234§(false);
         }
         else
         {
            for each(var _loc2_ in this.§default finally function§(§5214232508232521123423632234§))
            {
               _loc2_.§5214238089238102123423632234§(this);
            }
         }
      }
      
      public function §catch switch false§() : uint
      {
         return this.§5214231762231775123423632234§;
      }
      
      private function §5214232456232469123423632234§(param1:Boolean) : void
      {
         this.§false function break§();
         this.§class use use§ = 0;
         for each(var _loc2_ in this.§default finally function§(§const package null§).concat())
         {
            _loc2_.§5214231604231617123423632234§(this,param1);
         }
         for each(var _loc3_ in this.§default finally function§(§521423105512310564123423632234§).concat())
         {
            _loc3_.§5214234276234289123423632234§(this,param1);
         }
         this.§default var try§ = new Dictionary();
      }
      
      public function §package set default§(param1:Class, param2:Object) : void
      {
         var _loc3_:Vector.<Object> = this.§default var try§[param1];
         if(_loc3_ == null)
         {
            _loc3_ = new Vector.<Object>();
            this.§default var try§[param1] = _loc3_;
         }
         _loc3_[_loc3_.length] = param2;
      }
      
      public function §else finally continue§(param1:uint) : void
      {
         this.§5214231762231775123423632234§ = param1;
         this.§super const false§();
         this.§class use use§ = Math.ceil((param1 - getTimer()) / 1000);
      }
      
      public function §function for var§() : void
      {
         this.§5214232456232469123423632234§(true);
      }
      
      public function §override catch get§() : void
      {
         this.§false use var§();
      }
   }
}

