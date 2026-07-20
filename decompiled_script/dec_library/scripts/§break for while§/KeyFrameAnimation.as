package §break for while§
{
   public class KeyFrameAnimation
   {
      
      private var §521423180512318064123423632234§:AnimationTrack;
      
      private var §with finally function§:int;
      
      private var time:Number;
      
      private var §null function override§:§use for function§;
      
      public function KeyFrameAnimation(param1:AnimationTrack, param2:§use for function§)
      {
         super();
         this.§521423180512318064123423632234§ = param1;
         this.§null function override§ = param2;
      }
      
      public function isComplete() : Boolean
      {
         return this.§with finally function§ == this.§521423180512318064123423632234§.getNumFrames() - 1;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.isComplete())
         {
            this.time += param1;
            while(this.time > this.§521423180512318064123423632234§.getFrameTime(this.§with finally function§ + 1))
            {
               ++this.§with finally function§;
               if(this.isComplete())
               {
                  this.time = this.§521423180512318064123423632234§.getMaxTime();
                  break;
               }
            }
            this.§null function override§.setAnimatedValue(this.getValue());
         }
      }
      
      private function getValue() : Number
      {
         if(this.isComplete())
         {
            return this.§521423180512318064123423632234§.getFrameTime(this.§with finally function§);
         }
         var _loc3_:Number = this.§521423180512318064123423632234§.getFrameTime(this.§with finally function§);
         var _loc4_:Number = this.§521423180512318064123423632234§.getFrameTime(this.§with finally function§ + 1);
         var _loc1_:Number = this.§521423180512318064123423632234§.getFrameValue(this.§with finally function§);
         var _loc2_:Number = this.§521423180512318064123423632234§.getFrameValue(this.§with finally function§ + 1);
         return _loc1_ + (_loc2_ - _loc1_) * (this.time - _loc3_) / (_loc4_ - _loc3_);
      }
      
      public function start() : void
      {
         this.time = this.§521423180512318064123423632234§.getMinTime();
         this.§with finally function§ = 0;
      }
   }
}

