package §break for while§
{
   public class AnimationTrack
   {
      
      private var §try const get§:Vector.<Number>;
      
      private var §function get§:Vector.<Number>;
      
      private var numFrames:int;
      
      private var §5214231635231648123423632234§:Number;
      
      private var §521423110502311063123423632234§:Number;
      
      public function AnimationTrack(param1:Vector.<Number>, param2:Vector.<Number>)
      {
         super();
         this.§try const get§ = param1;
         this.§function get§ = param2;
         this.numFrames = param1.length;
         this.§5214231635231648123423632234§ = param1[0];
         this.§521423110502311063123423632234§ = param1[this.numFrames - 1];
      }
      
      public function getMaxTime() : Number
      {
         return this.§521423110502311063123423632234§;
      }
      
      public function getMinTime() : Number
      {
         return this.§5214231635231648123423632234§;
      }
      
      public function getFrameTime(param1:int) : Number
      {
         return this.§try const get§[param1];
      }
      
      public function getNumFrames() : int
      {
         return this.numFrames;
      }
      
      public function getFrameValue(param1:int) : Number
      {
         return this.§function get§[param1];
      }
   }
}

