package §5214236397236410123423632234§
{
   import §521423101572310170123423632234§.§5214237009237022123423632234§;
   import §521423101572310170123423632234§.§package switch get§;
   import §521423165552316568123423632234§.§default var function§;
   import §5214232264232277123423632234§.§5214237893237906123423632234§;
   import §5214232958232971123423632234§.§5214232780232793123423632234§;
   import §5214235020235033123423632234§.§521423153252315338123423632234§;
   import §continue for for§.§break native§;
   import §include var false§.§dynamic const const§;
   import platform.client.fp10.core.model.impl.*;
   import §true use var§.§throw finally continue§;
   
   public class §with for null§
   {
      
      private var §521423104832310496123423632234§:§throw finally continue§;
      
      public function §with for null§()
      {
         super();
         this.§521423104832310496123423632234§ = §default var function§.§import use include§().§5214231532231545123423632234§(§throw finally continue§) as §throw finally continue§;
      }
      
      private function §521423145542314567123423632234§(param1:Object) : §package switch get§
      {
         var _loc6_:Object = null;
         var _loc2_:§5214237893237906123423632234§ = §5214237893237906123423632234§.§switch try§(param1.idhigh,param1.idlow);
         var _loc7_:int = int(param1.type);
         var _loc4_:§5214237893237906123423632234§ = §5214237893237906123423632234§.§switch try§(param1.versionhigh,param1.versionlow);
         var _loc3_:Boolean = Boolean(param1.lazy);
         var _loc5_:Vector.<String> = param1.fileNames == undefined ? null : Vector.<String>(param1.fileNames);
         if(_loc7_ == 10)
         {
            _loc6_ = new §5214232780232793123423632234§(param1.alpha);
         }
         else if(_loc7_ == 11)
         {
            _loc6_ = new §dynamic const const§(param1.fps,param1.height,param1.weight,param1.numFrames);
         }
         return new §package switch get§(_loc7_,_loc2_,_loc4_,_loc3_,_loc6_,_loc5_);
      }
      
      public function §set for include§(param1:String, param2:int) : §break native§
      {
         var _temp_1:* = Model;
         var _loc4_:§521423153252315338123423632234§ = new §521423153252315338123423632234§(§5214237893237906123423632234§.§switch try§(1,1),null,"ResourceObject",null);
         var _loc3_:Model = _temp_1;
         platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214238154238167123423632234§;
         platform.client.fp10.core.model.impl.Model.§5214238154238167123423632234§ = _loc4_;
         return new §break native§(param2,this.§const while case§(param1));
      }
      
      private function §include for use§(param1:§package switch get§) : §5214237009237022123423632234§
      {
         var _loc3_:§5214237009237022123423632234§ = null;
         var _loc2_:§5214237893237906123423632234§ = param1.id;
         if(this.§521423104832310496123423632234§.§do var§(_loc2_))
         {
            return this.§521423104832310496123423632234§.§include for use§(_loc2_);
         }
         if(!this.§521423104832310496123423632234§.§include switch false§(param1.type))
         {
            throw new Error("Unknown resource type " + param1.type.toString());
         }
         var _loc4_:Class = this.§521423104832310496123423632234§.§var for use§(param1.type);
         if(param1.§implements catch get§ == null)
         {
            _loc3_ = §5214237009237022123423632234§(new _loc4_(param1));
         }
         else
         {
            _loc3_ = §5214237009237022123423632234§(new _loc4_(param1,param1.§implements catch get§));
         }
         this.§521423104832310496123423632234§.§override catch break§(_loc3_);
         return _loc3_;
      }
      
      private function §const while case§(param1:String) : Vector.<§5214237009237022123423632234§>
      {
         var _loc4_:§5214237009237022123423632234§ = null;
         var _loc6_:Boolean = false;
         var _loc3_:Array = JSON.parse(param1) as Array;
         var _loc5_:Vector.<§5214237009237022123423632234§> = new Vector.<§5214237009237022123423632234§>();
         for each(var _loc2_ in _loc3_)
         {
            var _loc7_:§5214237009237022123423632234§ = _loc4_ = this.§include for use§(this.§521423145542314567123423632234§(_loc2_));
            _loc6_ = !_loc7_.§false catch override§.§5214236765236778123423632234§ && _loc4_.§include set while§ == null;
            if(_loc6_)
            {
               _loc5_[_loc5_.length] = _loc4_;
            }
         }
         return _loc5_;
      }
   }
}

