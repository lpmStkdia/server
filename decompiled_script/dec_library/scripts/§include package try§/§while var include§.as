package §include package try§
{
   import §5214239493239506123423632234§.§521423181162318129123423632234§;
   import §5214239493239506123423632234§.§521423191762319189123423632234§;
   import §5214239493239506123423632234§.§5214238967238980123423632234§;
   
   public class §while var include§
   {
      
      private var §each const do§:§do with§;
      
      public function §while var include§(param1:§521423191762319189123423632234§)
      {
         super();
         this.§each const do§ = param1 as §do with§;
         param1.§try super do§("cmd","help","List of all commands",null,this.§521423117422311755123423632234§);
         param1.§try super do§("cmd","help","Help for a specific command",new <§5214238967238980123423632234§>[§5214238967238980123423632234§.§5214235563235576123423632234§],this.§521423762389123423632234§);
      }
      
      private function §521423762389123423632234§(param1:§521423181162318129123423632234§, param2:String) : void
      {
         var _loc4_:int = 0;
         var _loc5_:§521423122912312304123423632234§ = null;
         var _loc3_:Boolean = false;
         _loc4_ = 0;
         while(_loc4_ < this.§each const do§.§5214231104231117123423632234§.length)
         {
            _loc5_ = this.§each const do§.§5214231104231117123423632234§[_loc4_];
            if(_loc5_.§521423722385123423632234§ + "." + _loc5_.§false package with§ == param2 || _loc5_.§521423722385123423632234§ + "." + _loc5_.§false package with§ == "cmd." + param2)
            {
               param1.§521423110002311013123423632234§(_loc5_.§521423722385123423632234§ + "." + _loc5_.§false package with§ + " " + _loc5_.§do while get§());
               _loc3_ = true;
            }
            _loc4_++;
         }
         if(!_loc3_)
         {
            param1.§521423110002311013123423632234§("Command not found " + param2);
         }
      }
      
      private function §return for in§(param1:§521423122912312304123423632234§, param2:§521423122912312304123423632234§) : Number
      {
         var _loc3_:int = param1.§521423722385123423632234§.localeCompare(param2.§521423722385123423632234§);
         if(_loc3_ != 0)
         {
            return _loc3_;
         }
         return param1.§false package with§.localeCompare(param2.§false package with§);
      }
      
      private function §521423117422311755123423632234§(param1:§521423181162318129123423632234§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:§521423122912312304123423632234§ = null;
         var _loc2_:Vector.<§521423122912312304123423632234§> = this.§each const do§.§5214231104231117123423632234§.sort(this.§return for in§);
         _loc3_ = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc4_ = _loc2_[_loc3_];
            param1.§521423110002311013123423632234§(_loc4_.§521423722385123423632234§ + "." + _loc4_.§false package with§);
            _loc3_++;
         }
      }
   }
}

