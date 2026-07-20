package §each set default§
{
   import §default super with§.§521423142592314272123423632234§;
   import flash.display.BitmapData;
   import flash.geom.ColorTransform;
   import flash.utils.Dictionary;
   
   public class §get use finally§ implements §521423114602311473123423632234§
   {
      
      private static const §521423108262310839123423632234§:ColorTransform = new ColorTransform();
      
      private var §default for do§:Function;
      
      private const §override set case§:Dictionary = new Dictionary();
      
      private var §case switch if§:ColorTransform;
      
      public function §get use finally§()
      {
         super();
      }
      
      public function §try for return§(param1:ColorTransform) : void
      {
         var _loc2_:ColorTransform = this.§521423151762315189123423632234§(param1);
         if(!§521423142592314272123423632234§.§return throw§(this.§case switch if§,_loc2_))
         {
            this.§case switch if§ = _loc2_;
            this.§if use true§();
            if(this.§default for do§ != null)
            {
               this.§default for do§();
            }
         }
      }
      
      public function §521423135432313556123423632234§(param1:BitmapData, param2:Boolean = true) : BitmapData
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture is null");
         }
         var _loc3_:BitmapData = this.§override set case§[param1];
         if(_loc3_ == null)
         {
            _loc3_ = this.§do var final§(param1,param2);
            this.§override set case§[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public function §52142367423687123423632234§() : void
      {
         var _loc3_:* = undefined;
         var _loc2_:int = 0;
         var _loc1_:BitmapData = null;
         if(this.§case switch if§ == null)
         {
            for(_loc3_ in this.§override set case§)
            {
               delete this.§override set case§[_loc3_];
            }
         }
         else
         {
            _loc2_ = 0;
            for(_loc3_ in this.§override set case§)
            {
               _loc1_ = this.§override set case§[_loc3_];
               _loc1_.dispose();
               delete this.§override set case§[_loc3_];
               _loc2_++;
            }
         }
      }
      
      public function §finally catch use§(param1:Function) : void
      {
         this.§default for do§ = param1;
      }
      
      private function §521423151762315189123423632234§(param1:ColorTransform) : ColorTransform
      {
         var _loc2_:ColorTransform = §521423142592314272123423632234§.clone(param1);
         if(§521423142592314272123423632234§.§return throw§(_loc2_,§521423108262310839123423632234§))
         {
            return null;
         }
         return _loc2_;
      }
      
      private function §do var final§(param1:BitmapData, param2:Boolean = true) : BitmapData
      {
         if(this.§case switch if§ == null)
         {
            return param1;
         }
         if(param2)
         {
            return §521423142592314272123423632234§.§5214239217239230123423632234§(param1,this.§case switch if§);
         }
         return param1.clone();
      }
      
      public function §5214231393231406123423632234§(param1:BitmapData) : void
      {
      }
      
      private function §if use true§() : void
      {
         var _loc1_:BitmapData = null;
         var _loc3_:int = 0;
         for(var _loc2_ in this.§override set case§)
         {
            _loc1_ = this.§override set case§[_loc2_];
            if(_loc1_ != _loc2_)
            {
               _loc1_.dispose();
               _loc3_++;
            }
            this.§override set case§[_loc2_] = this.§do var final§(_loc2_);
         }
      }
   }
}

