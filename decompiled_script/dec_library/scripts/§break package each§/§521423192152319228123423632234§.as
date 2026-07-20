package §break package each§
{
   import §521423111492311162123423632234§.§catch catch continue§;
   import §5214231749231762123423632234§.§5214235173235186123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.Dictionary;
   
   public class §521423192152319228123423632234§ implements §false use do§
   {
      
      private static const §false for null§:int = 10;
      
      private static const §throw super package§:int = 21;
      
      private static const §521423162542316267123423632234§:§do function else§ = new §do function else§();
      
      private var §521423149392314952123423632234§:Vector.<§5214237231237244123423632234§> = new Vector.<§5214237231237244123423632234§>();
      
      private var §521423157972315810123423632234§:int;
      
      private var §null for null§:Dictionary = new Dictionary();
      
      private var §5214231751231764123423632234§:int;
      
      private var §521423181122318125123423632234§:Boolean;
      
      public function §521423192152319228123423632234§()
      {
         super();
      }
      
      public static function §default use do§(param1:Sound) : §false use do§
      {
         var _loc2_:SoundChannel = param1.play(0,1,new SoundTransform(0));
         if(_loc2_ != null)
         {
            _loc2_.stop();
            return new §521423192152319228123423632234§();
         }
         return new §extends while else§();
      }
      
      private function §while package override§(param1:int) : void
      {
         var _loc3_:int = 0;
         var _loc2_:§5214237231237244123423632234§ = null;
         _loc3_ = param1;
         while(_loc3_ < this.§521423157972315810123423632234§)
         {
            _loc2_ = this.§521423149392314952123423632234§[_loc3_];
            _loc2_.§false for with§.enabled = false;
            if(_loc2_.§false for with§.§5214231751231764123423632234§ == 0)
            {
               _loc2_.§false for with§.§false use var§();
               §5214237231237244123423632234§.§false use var§(_loc2_);
               this.§521423149392314952123423632234§.removeAt(_loc3_);
               --this.§521423157972315810123423632234§;
               _loc3_--;
            }
            _loc3_++;
         }
      }
      
      private function §break set include§(param1:§5214237231237244123423632234§, param2:§5214237231237244123423632234§) : Number
      {
         return param1.§521423160602316073123423632234§ - param2.§521423160602316073123423632234§;
      }
      
      private function §5214236402236415123423632234§(param1:SoundChannel) : void
      {
         param1.addEventListener("soundComplete",this.§521423105552310568123423632234§);
         this.§null for null§[param1] = true;
         ++this.§5214231751231764123423632234§;
      }
      
      private function §5214232927232940123423632234§(param1:int, param2:§catch catch continue§) : int
      {
         var _loc5_:int = 0;
         var _loc3_:§5214237231237244123423632234§ = null;
         var _loc4_:int = 0;
         var _loc6_:int = 0;
         while(_loc5_ < this.§521423157972315810123423632234§)
         {
            _loc3_ = this.§521423149392314952123423632234§[_loc5_];
            _loc4_ = _loc3_.§false for with§.§5214231751231764123423632234§;
            if(_loc4_ == 0)
            {
               _loc3_.§false for with§.§false use var§();
               §5214237231237244123423632234§.§false use var§(_loc3_);
               this.§521423149392314952123423632234§.removeAt(_loc5_);
               --this.§521423157972315810123423632234§;
               _loc5_--;
            }
            else if(_loc6_ + _loc4_ > 21)
            {
               if(_loc6_ == 21)
               {
                  break;
               }
               _loc3_.§false for with§.enabled = false;
            }
            else
            {
               _loc3_.§false for with§.enabled = true;
               _loc3_.§false for with§.§5214233261233274123423632234§(param1,param2);
               _loc6_ += _loc4_;
            }
            _loc5_++;
         }
         return _loc5_;
      }
      
      public function §521423102582310271123423632234§(param1:Sound, param2:int = 0, param3:int = 0, param4:SoundTransform = null) : SoundChannel
      {
         var _loc5_:SoundChannel = null;
         if(this.§case var else§(param1))
         {
            _loc5_ = param1.play(param2,param3,param4);
            if(_loc5_ != null)
            {
               this.§5214236402236415123423632234§(_loc5_);
            }
            return _loc5_;
         }
         return null;
      }
      
      public function §use finally case§(param1:§5214235173235186123423632234§) : void
      {
         var _loc3_:int = 0;
         var _loc2_:§5214237231237244123423632234§ = null;
         while(_loc3_ < this.§521423157972315810123423632234§)
         {
            _loc2_ = this.§521423149392314952123423632234§[_loc3_];
            if(_loc2_.§false for with§ == param1)
            {
               param1.§false use var§();
               §5214237231237244123423632234§.§false use var§(_loc2_);
               this.§521423149392314952123423632234§.removeAt(_loc3_);
               --this.§521423157972315810123423632234§;
               return;
            }
            _loc3_++;
         }
      }
      
      public function §521423101822310195123423632234§(param1:§5214235173235186123423632234§) : void
      {
         if(this.§dynamic finally with§(param1))
         {
            param1.enabled = true;
            this.§521423149392314952123423632234§[§521423157972315810123423632234§] = §5214237231237244123423632234§.§5214231870231883123423632234§(0,param1);
            ++this.§521423157972315810123423632234§;
         }
      }
      
      private function §case var else§(param1:Sound) : Boolean
      {
         return !this.§521423181122318125123423632234§ && this.§5214231751231764123423632234§ < 10 && param1 != null;
      }
      
      private function §521423105552310568123423632234§(param1:Event) : void
      {
         this.§521423130132313026123423632234§(param1.target as SoundChannel);
      }
      
      public function §521423130132313026123423632234§(param1:SoundChannel) : void
      {
         if(param1 != null && this.§null for null§[param1] != null)
         {
            this.§5214239218239231123423632234§(param1);
         }
      }
      
      private function §5214232120232133123423632234§(param1:§do function else§) : void
      {
         var _loc6_:int = 0;
         var _loc2_:§5214237231237244123423632234§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         while(_loc6_ < this.§521423157972315810123423632234§)
         {
            _loc2_ = this.§521423149392314952123423632234§[_loc6_];
            _loc2_.§false for with§.§521423125142312527123423632234§(§521423162542316267123423632234§);
            _loc3_ = param1.x - §521423162542316267123423632234§.x;
            _loc4_ = param1.y - §521423162542316267123423632234§.y;
            _loc5_ = param1.§521423155722315585123423632234§ - §521423162542316267123423632234§.§521423155722315585123423632234§;
            _loc2_.§521423160602316073123423632234§ = _loc3_ * _loc3_ + _loc4_ * _loc4_ + _loc5_ * _loc5_;
            _loc6_++;
         }
         this.§521423149392314952123423632234§.sort(this.§break set include§);
      }
      
      public function §5214236896236909123423632234§(param1:Boolean) : void
      {
         this.§521423181122318125123423632234§ = param1;
      }
      
      public function §521423125592312572123423632234§() : void
      {
         for(var _loc1_ in this.§null for null§)
         {
            this.§5214239218239231123423632234§(_loc1_);
         }
      }
      
      private function §dynamic finally with§(param1:§5214235173235186123423632234§) : Boolean
      {
         return !this.§521423181122318125123423632234§ && param1 != null && this.§set super get§(param1) < 0;
      }
      
      public function §5214237703237716123423632234§() : void
      {
         var _loc1_:§5214237231237244123423632234§ = null;
         while(this.§521423149392314952123423632234§.length > 0)
         {
            _loc1_ = this.§521423149392314952123423632234§.pop();
            _loc1_.§false for with§.§false use var§();
            §5214237231237244123423632234§.§false use var§(_loc1_);
         }
         this.§521423157972315810123423632234§ = 0;
      }
      
      public function §get while const§(param1:int, param2:§catch catch continue§) : void
      {
         var _loc3_:int = 0;
         if(this.§521423157972315810123423632234§ > 0)
         {
            this.§5214232120232133123423632234§(param2.§finally package case§);
            _loc3_ = this.§5214232927232940123423632234§(param1,param2);
            this.§while package override§(_loc3_);
         }
      }
      
      private function §set super get§(param1:§5214235173235186123423632234§) : int
      {
         var _loc2_:int = 0;
         var _loc3_:§5214237231237244123423632234§ = null;
         while(_loc2_ < this.§521423157972315810123423632234§)
         {
            _loc3_ = this.§521423149392314952123423632234§[_loc2_];
            if(_loc3_.§false for with§ == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      private function §5214239218239231123423632234§(param1:SoundChannel) : void
      {
         param1.stop();
         param1.removeEventListener("soundComplete",this.§521423105552310568123423632234§);
         delete this.§null for null§[param1];
         --this.§5214231751231764123423632234§;
      }
   }
}

