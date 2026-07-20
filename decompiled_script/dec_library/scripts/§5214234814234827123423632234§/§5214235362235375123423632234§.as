package §5214234814234827123423632234§
{
   import §521423124962312509123423632234§.§521423112892311302123423632234§;
   import §521423188072318820123423632234§.§5214237914237927123423632234§;
   import §521423188072318820123423632234§.§for const if§;
   import §521423188072318820123423632234§.§include switch finally§;
   import §521423188072318820123423632234§.§return package super§;
   import §521423188072318820123423632234§.§switch while try§;
   import §521423188072318820123423632234§.§throw package class§;
   import §521423188072318820123423632234§.§try function throw§;
   import §521423188072318820123423632234§.§var for set§;
   import §5214237876237889123423632234§.§5214236594236607123423632234§;
   import §5214238675238688123423632234§.§finally set package§;
   import §extends set else§.§use while each§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.utils.Timer;
   import §throw for each§.§521423136102313623123423632234§;
   
   public class §5214235362235375123423632234§ extends Sprite
   {
      
      private var §final switch§:§5214237914237927123423632234§ = new §5214237914237927123423632234§();
      
      protected var §else var case§:§5214236594236607123423632234§ = new §5214236594236607123423632234§();
      
      protected var §dynamic const native§:§521423136102313623123423632234§ = new §521423136102313623123423632234§();
      
      protected var §break use null§:int = 1;
      
      protected var §throw static§:Timer = null;
      
      private var §52142344323456123423632234§:int = 100;
      
      protected var §for var native§:int = 100;
      
      public function §5214235362235375123423632234§()
      {
         super();
         addEventListener("addedToStage",this.§521423138002313813123423632234§);
      }
      
      public static function §521423186572318670123423632234§(param1:int, param2:int, param3:Boolean) : BitmapData
      {
         var _loc8_:§var for set§ = null;
         var _loc7_:Sprite = new Sprite();
         var _loc4_:Vector.<int> = new <int>[0,param1 - 120,param1 - 1];
         var _loc5_:int = 0;
         var _loc6_:BitmapData = new BitmapData(param1,20,true,0);
         _loc5_ = 0;
         while(_loc5_ < 2)
         {
            if(param2 == _loc5_)
            {
               if(param3)
               {
                  _loc8_ = new §switch while try§();
               }
               else
               {
                  _loc8_ = new §for const if§();
               }
            }
            else if(param3)
            {
               _loc8_ = new §include switch finally§();
            }
            else
            {
               _loc8_ = new §try function throw§();
            }
            _loc8_.width = _loc4_[_loc5_ + 1] - _loc4_[_loc5_] - 2;
            _loc8_.height = 18;
            _loc8_.x = _loc4_[_loc5_];
            _loc7_.addChild(_loc8_);
            _loc5_++;
         }
         _loc6_.draw(_loc7_);
         return _loc6_;
      }
      
      public function §5214238503238516123423632234§(param1:Vector.<§use while each§>) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§use while each§ = null;
         for each(_loc3_ in param1)
         {
            _loc2_ = {};
            _loc2_.userId = _loc3_.§521423136902313703123423632234§;
            _loc2_.income = _loc3_.§521423190082319021123423632234§;
            _loc2_.sort = this.§break use null§;
            this.§dynamic const native§.§52142341723430123423632234§(_loc2_);
         }
         this.sort();
      }
      
      override public function set height(param1:Number) : void
      {
         this.§52142344323456123423632234§ = param1;
         this.§else var case§.height = this.§52142344323456123423632234§ - 20;
      }
      
      public function §52142367423687123423632234§() : void
      {
         var _loc1_:Object = {};
         var _loc2_:int = 0;
         while(_loc2_ < this.§dynamic const native§.§521423135952313608123423632234§)
         {
            _loc1_ = this.§dynamic const native§.getItemAt(_loc2_);
            _loc1_.sort = this.§break use null§;
            this.§dynamic const native§.§each function in§(_loc1_,_loc2_);
            _loc2_++;
         }
         this.sort();
      }
      
      private function sort() : void
      {
         if(this.§break use null§ == 0)
         {
            this.§dynamic const native§.sortOn("userId");
         }
         else
         {
            this.§dynamic const native§.sortOn("income",0x10 | 2);
         }
         this.§dynamic const native§.§continue set try§();
      }
      
      protected function §521423138002313813123423632234§(param1:Event) : void
      {
         removeEventListener("addedToStage",this.§521423138002313813123423632234§);
         this.§break use null§ = 1;
         this.§else var case§.§5214232437232450123423632234§ = 20;
         this.§else var case§.§with switch include§("cellRenderer",§each import§);
         this.§else var case§.§52142333123344123423632234§ = this.§dynamic const native§;
         §521423112892311302123423632234§.§default switch if§(this.§else var case§);
         addChild(this.§final switch§);
         addChild(this.§else var case§);
         this.§else var case§.y = 20;
         this.§final switch§.addEventListener("StatListUpdateSort",this.§use function const§);
      }
      
      protected function §use function const§(param1:§finally set package§) : void
      {
         this.§break use null§ = param1.§521423122892312302123423632234§;
         this.§52142367423687123423632234§();
         this.width = this.§for var native§;
      }
      
      override public function set width(param1:Number) : void
      {
         this.§for var native§ = param1;
         var _loc2_:Boolean = this.§else var case§.§5214235053235066123423632234§ > 0;
         var _loc3_:int = _loc2_ ? int(this.§for var native§ + 6) : this.§for var native§;
         this.§else var case§.width = _loc3_;
         this.§final switch§.width = _loc2_ ? _loc3_ - 15 : _loc3_;
         §throw package class§.§521423106492310662123423632234§ = new Bitmap(§521423186572318670123423632234§(_loc2_ ? int(_loc3_ - 15) : _loc3_,this.§break use null§,false));
         §return package super§.§521423106492310662123423632234§ = new Bitmap(§521423186572318670123423632234§(_loc2_ ? int(_loc3_ - 15) : _loc3_,this.§break use null§,true));
         this.§dynamic const native§.§continue set try§();
      }
   }
}

