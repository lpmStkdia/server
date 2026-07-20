package §5214231749231762123423632234§
{
   import §521423188792318892123423632234§.§do function else§;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §5214235807235820123423632234§
   {
      
      private static const §521423122762312289123423632234§:Number = 1000;
      
      private static const §default finally switch§:Number = 5000;
      
      private static const §5214238606238619123423632234§:Number = 5;
      
      private static var §break null§:§5214235807235820123423632234§;
      
      private var §false super true§:§5214235807235820123423632234§;
      
      private var §521423186372318650123423632234§:Number;
      
      private var §class use const§:Number;
      
      private var §in var super§:Sound;
      
      private var §throw set native§:SoundChannel;
      
      private var §521423126962312709123423632234§:SoundTransform = new SoundTransform(0);
      
      private var §package finally in§:Number = 1;
      
      private var §521423129762312989123423632234§:Number = 1;
      
      private var §5214231872231885123423632234§:Number = 1;
      
      public function §5214235807235820123423632234§(param1:Sound, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.§5214239350239363123423632234§(param1,param2,param3,param4,param5);
      }
      
      public static function §5214231870231883123423632234§(param1:Sound, param2:Number = 1, param3:Number = 1000, param4:Number = 5000, param5:Number = 5) : §5214235807235820123423632234§
      {
         var _loc6_:§5214235807235820123423632234§ = null;
         if(§break null§ == null)
         {
            return new §5214235807235820123423632234§(param1,param3,param4,param5,param2);
         }
         _loc6_ = §break null§;
         _loc6_.§5214239350239363123423632234§(param1,param3,param4,param5,param2);
         §break null§ = _loc6_.§false super true§;
         _loc6_.§false super true§ = null;
         return _loc6_;
      }
      
      public static function §false use var§(param1:§5214235807235820123423632234§) : void
      {
         param1.§52142367423687123423632234§();
         if(§break null§ == null)
         {
            §break null§ = param1;
         }
         else
         {
            param1.§false super true§ = §break null§;
            §break null§ = param1;
         }
      }
      
      public function §5214239350239363123423632234§(param1:Sound, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         this.§in var super§ = param1;
         this.§521423186372318650123423632234§ = param2;
         this.§521423129762312989123423632234§ = param5;
         this.§class use const§ = (Math.sqrt(param4) - 1) / (param3 - param2);
         this.§521423175892317602123423632234§ = 1;
      }
      
      private function §implements function for§() : void
      {
         this.§5214231872231885123423632234§ = this.§521423129762312989123423632234§ * this.§package finally in§;
      }
      
      public function §52142367423687123423632234§() : void
      {
         this.§function for var§();
         this.§in var super§ = null;
      }
      
      public function get §else var return§() : SoundChannel
      {
         return this.§throw set native§;
      }
      
      public function §5214238634238647123423632234§() : Boolean
      {
         return this.§throw set native§ != null;
      }
      
      public function get §521423175892317602123423632234§() : Number
      {
         return this.§package finally in§;
      }
      
      public function §function for var§() : void
      {
         if(this.§throw set native§ != null)
         {
            this.§throw set native§.stop();
            this.§throw set native§ = null;
         }
      }
      
      public function set §521423175892317602123423632234§(param1:Number) : void
      {
         this.§package finally in§ = param1;
         this.§implements function for§();
      }
      
      public function §extends finally dynamic§(param1:§do function else§, param2:§do function else§, param3:§do function else§, param4:SoundTransform) : void
      {
         var _loc9_:Number = NaN;
         var _loc6_:Number = param2.x - param1.x;
         var _loc7_:Number = param2.y - param1.y;
         var _loc8_:Number = param2.§521423155722315585123423632234§ - param1.§521423155722315585123423632234§;
         var _loc5_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_ + _loc8_ * _loc8_);
         if(_loc5_ < this.§521423186372318650123423632234§)
         {
            param4.volume = 1;
            param4.pan = 0;
         }
         else
         {
            _loc9_ = 1 + this.§class use const§ * (_loc5_ - this.§521423186372318650123423632234§);
            _loc9_ = 1 / (_loc9_ * _loc9_);
            param4.volume = _loc9_;
            _loc5_ = 1 / _loc5_;
            _loc6_ *= _loc5_;
            _loc7_ *= _loc5_;
            _loc8_ *= _loc5_;
            param4.pan = (_loc6_ * param3.x + _loc7_ * param3.y + _loc8_ * param3.§521423155722315585123423632234§) * (1 - _loc9_);
         }
      }
      
      public function §5214233261233274123423632234§(param1:int, param2:int) : SoundChannel
      {
         if(this.§throw set native§ != null)
         {
            this.§throw set native§.stop();
         }
         return this.§throw set native§ = this.§in var super§.play(param1,param2);
      }
      
      public function get §finally package case§() : Number
      {
         return this.§throw set native§ == null ? 0 : this.§throw set native§.position;
      }
      
      public function §5214235070235083123423632234§(param1:§do function else§, param2:§do function else§, param3:§do function else§) : void
      {
         if(this.§throw set native§ != null)
         {
            this.§extends finally dynamic§(param1,param2,param3,this.§521423126962312709123423632234§);
            this.§521423126962312709123423632234§.volume *= this.§5214231872231885123423632234§;
            this.§throw set native§.soundTransform = this.§521423126962312709123423632234§;
         }
      }
      
      public function get §5214231466231479123423632234§() : Number
      {
         return this.§521423129762312989123423632234§;
      }
      
      public function set §5214231466231479123423632234§(param1:Number) : void
      {
         this.§521423129762312989123423632234§ = param1;
         this.§implements function for§();
      }
   }
}

