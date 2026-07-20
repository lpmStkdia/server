package §do package throw§
{
   import §5214238500238513123423632234§.§521423124982312511123423632234§;
   import alternativa.engine3d.objects.Decal;
   import flash.utils.getTimer;
   
   public class §521423152692315282123423632234§ implements §5214235116235129123423632234§
   {
      
      public static var §else set super§:§521423124982312511123423632234§;
      
      private var §5214238745238758123423632234§:int;
      
      private var §521423117652311778123423632234§:Vector.<§finally catch import§> = new Vector.<§finally catch import§>();
      
      private var §final use§:int;
      
      public function §521423152692315282123423632234§(param1:int)
      {
         super();
         this.§5214238745238758123423632234§ = param1;
      }
      
      public function render(param1:int, param2:int) : void
      {
         var _loc5_:int = 0;
         var _loc3_:§finally catch import§ = null;
         var _loc4_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = this.§final use§;
         _loc5_ = 0;
         while(_loc5_ < _loc7_)
         {
            _loc3_ = this.§521423117652311778123423632234§[_loc5_];
            _loc4_ = param1 - _loc3_.§case function package§;
            if(_loc4_ > this.§5214238745238758123423632234§)
            {
               _loc6_++;
               §else set super§.§52142329523308123423632234§().§final function if§(_loc3_.§5214238888238901123423632234§);
               --this.§final use§;
            }
            else
            {
               _loc3_.§5214238888238901123423632234§.alpha = 1 - _loc4_ / this.§5214238745238758123423632234§;
               if(_loc6_ > 0)
               {
                  this.§521423117652311778123423632234§[_loc5_ - _loc6_] = _loc3_;
               }
            }
            _loc5_++;
         }
         _loc5_ = this.§final use§;
         while(_loc5_ < _loc7_)
         {
            this.§521423117652311778123423632234§[_loc5_] = null;
            _loc5_++;
         }
      }
      
      public function §5214231576231589123423632234§(param1:Decal) : void
      {
         this.§521423117652311778123423632234§[this.§final use§++] = new §finally catch import§(param1,getTimer());
      }
   }
}

