package §5214231072231085123423632234§
{
   import §5214231391231404123423632234§.§521423121182312131123423632234§;
   import §521423150222315035123423632234§.§include use override§;
   
   public class §521423184422318455123423632234§ extends §include use override§
   {
      
      public var §super use while§:int = 3;
      
      public var §import for extends§:int = 3;
      
      public var §while catch for§:int = 3;
      
      public var §5214231649231662123423632234§:Vector.<§521423121182312131123423632234§>;
      
      public function §521423184422318455123423632234§()
      {
         super();
         this.§5214231649231662123423632234§ = new Vector.<§521423121182312131123423632234§>();
      }
      
      public function §52142341723430123423632234§(param1:§521423121182312131123423632234§) : void
      {
         param1.§5214235855235868123423632234§ = this.§5214231649231662123423632234§.length;
         this.§5214231649231662123423632234§.push(param1);
         addChild(param1);
      }
      
      public function render() : void
      {
         var _loc1_:§521423121182312131123423632234§ = null;
         _loc1_ = null;
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:int = 0;
         for each(_loc1_ in this.§5214231649231662123423632234§)
         {
            if(_loc1_.§get package static§ || _loc2_ + _loc1_.§521423164072316420123423632234§ > this.§super use while§)
            {
               _loc2_ = 0;
               _loc4_ = 0;
               _loc5_ += this.§while catch for§ + _loc3_;
               _loc3_ = 0;
            }
            _loc2_ += _loc1_.§521423164072316420123423632234§;
            _loc1_.x = _loc4_;
            _loc1_.y = _loc5_;
            _loc4_ += _loc1_.width + this.§import for extends§;
            if(_loc1_.height > _loc3_)
            {
               _loc3_ = _loc1_.height;
            }
         }
      }
      
      public function set §521423103692310382123423632234§(param1:int) : void
      {
         this.§import for extends§ = param1;
         this.§while catch for§ = param1;
      }
      
      public function §false use var§() : void
      {
         var _loc1_:§521423121182312131123423632234§ = null;
         for each(_loc1_ in this.§5214231649231662123423632234§)
         {
            _loc1_.§false use var§();
         }
         this.§5214231649231662123423632234§ = null;
      }
   }
}

