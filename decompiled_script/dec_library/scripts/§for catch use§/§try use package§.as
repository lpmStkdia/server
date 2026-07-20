package §for catch use§
{
   import §521423138512313864123423632234§.§finally function return§;
   import §5214236812236825123423632234§.§521423165792316592123423632234§;
   import §5214236812236825123423632234§.§5214236902236915123423632234§;
   import §do package throw§.§5214235116235129123423632234§;
   import flash.display.Shape;
   import flash.display.Sprite;
   import §import package include§.§finally finally implements§;
   import §with super for§.*;
   
   public class §try use package§ extends Sprite implements §5214235116235129123423632234§, §521423165792316592123423632234§
   {
      
      private static const §set while implements§:int = 1;
      
      private var §class package false§:Shape = new Shape();
      
      private var §var for extends§:Vector.<§include for if§>;
      
      private var §for var native§:int;
      
      private var §52142344323456123423632234§:int;
      
      public function §try use package§(param1:Vector.<§521423192252319238123423632234§>, param2:Boolean)
      {
         super();
         this.§5214231986231999123423632234§(param1,param2);
         this.§5214239125239138123423632234§(param1.length);
         addChild(this.§class package false§);
         this.§521423152722315285123423632234§();
      }
      
      public function §function const package§() : void
      {
         for each(var _loc1_ in this.§var for extends§)
         {
            _loc1_.§function const package§();
         }
      }
      
      private function §5214235113235126123423632234§(param1:Vector.<§521423192252319238123423632234§>) : Vector.<§521423192252319238123423632234§>
      {
         return param1.concat().sort(this.§continue while§);
      }
      
      override public function get width() : Number
      {
         return this.§for var native§;
      }
      
      private function §continue while§(param1:§521423192252319238123423632234§, param2:§521423192252319238123423632234§) : Number
      {
         if(param1.§5214238075238088123423632234§() < param2.§5214238075238088123423632234§())
         {
            return -1;
         }
         if(param1.§5214238075238088123423632234§() > param2.§5214238075238088123423632234§())
         {
            return 1;
         }
         return 0;
      }
      
      public function §5214233413233426123423632234§() : void
      {
         if(parent != null)
         {
            parent.removeChild(this);
         }
      }
      
      private function §5214231986231999123423632234§(param1:Vector.<§521423192252319238123423632234§>, param2:Boolean) : void
      {
         var _loc7_:int = 0;
         var _loc9_:§521423192252319238123423632234§ = null;
         var _loc3_:§include for if§ = null;
         var _loc8_:§finally function return§ = null;
         var _loc4_:Vector.<§521423192252319238123423632234§> = this.§5214235113235126123423632234§(param1);
         var _loc5_:int = 2;
         this.§var for extends§ = new Vector.<§include for if§>(param1.length);
         var _loc6_:int = int(_loc4_.length);
         while(_loc7_ < _loc6_)
         {
            _loc9_ = _loc4_[_loc7_];
            _loc3_ = new §include for if§(_loc9_,param2);
            _loc3_.x = _loc5_;
            _loc3_.y = 2;
            addChild(_loc3_);
            _loc8_ = _loc3_.§import for for§();
            _loc8_.y = 8;
            _loc8_.x = int(_loc3_.x + (_loc3_.width - _loc8_.width) / 2);
            if(_loc7_ < _loc4_.length - 1)
            {
               this.§class package false§.graphics.lineStyle(0,16777215);
               this.§class package false§.graphics.moveTo(_loc3_.x + 36,2);
               this.§class package false§.graphics.lineTo(_loc3_.x + 36,38);
            }
            this.§var for extends§[_loc7_] = _loc3_;
            _loc5_ += _loc3_.width + 1;
            _loc7_++;
         }
      }
      
      private function §521423152722315285123423632234§() : void
      {
         var _loc1_:§include for if§ = null;
         for each(_loc1_ in this.§var for extends§)
         {
            addChild(_loc1_.§import for for§());
         }
      }
      
      override public function get height() : Number
      {
         return this.§52142344323456123423632234§;
      }
      
      private function §5214239125239138123423632234§(param1:int) : void
      {
         var _loc2_:§finally finally implements§ = new §finally finally implements§();
         _loc2_.width = param1 * (36 + 1) - 1 + 4;
         addChild(_loc2_);
         this.§for var native§ = _loc2_.width;
         this.§52142344323456123423632234§ = _loc2_.height;
      }
      
      public function §5214236794236807123423632234§(param1:§5214236902236915123423632234§) : void
      {
      }
      
      public function render(param1:int, param2:int) : void
      {
         this.§function const package§();
      }
   }
}

