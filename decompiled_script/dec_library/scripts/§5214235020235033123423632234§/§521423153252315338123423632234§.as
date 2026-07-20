package §5214235020235033123423632234§
{
   import §521423158432315856123423632234§.§5214231885231898123423632234§;
   import §521423158432315856123423632234§.§5214233977233990123423632234§;
   import §521423158432315856123423632234§.§default switch§;
   import §521423158432315856123423632234§.§do use with§;
   import §521423158432315856123423632234§.§return var null§;
   import §5214232264232277123423632234§.§5214237893237906123423632234§;
   import §catch set implements§.§set super var§;
   import flash.utils.Dictionary;
   import flash.utils.getDefinitionByName;
   import platform.client.fp10.core.model.impl.*;
   import §true use var§.§function use case§;
   
   public class §521423153252315338123423632234§ implements §5214231885231898123423632234§, §5214233977233990123423632234§
   {
      
      public static var §521423100662310079123423632234§:§function use case§;
      
      private var §521423119252311938123423632234§:String;
      
      private var §var use do§:§5214237893237906123423632234§;
      
      private var §switch catch with§:§return var null§;
      
      private var §521423139902314003123423632234§:§default switch§;
      
      private var data:Dictionary;
      
      private var §true use class§:Dictionary;
      
      private var §5214238302238315123423632234§:Dictionary;
      
      private var §finally while if§:Dictionary;
      
      public function §521423153252315338123423632234§(param1:§5214237893237906123423632234§, param2:§use super package§, param3:String, param4:§default switch§)
      {
         super();
         this.data = new Dictionary();
         this.§var use do§ = param1;
         this.§switch catch with§ = param2;
         this.§521423119252311938123423632234§ = param3;
         this.§521423139902314003123423632234§ = param4;
      }
      
      public function §import const implements§(param1:Model, param2:Class) : Object
      {
         var _loc3_:Dictionary = this.data[param1];
         if(_loc3_ == null)
         {
            return null;
         }
         var _loc4_:Object = _loc3_[param2];
         delete _loc3_[param2];
         return _loc4_;
      }
      
      public function §5214239682239695123423632234§(param1:Model, param2:Class, param3:Object) : void
      {
         var _loc4_:Dictionary = this.data[param1];
         if(_loc4_ == null)
         {
            _loc4_ = new Dictionary();
            this.data[param1] = _loc4_;
         }
         _loc4_[param2] = param3;
      }
      
      private function §finally catch catch§() : void
      {
         var _loc2_:§set super var§ = null;
         var _temp_1:* = Model;
         var _loc6_:§521423153252315338123423632234§ = this;
         var _loc3_:Model = _temp_1;
         platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214238154238167123423632234§;
         platform.client.fp10.core.model.impl.Model.§5214238154238167123423632234§ = _loc6_;
         for each(var _loc1_ in this.§override switch true§.§521423169302316943123423632234§)
         {
            _loc2_ = §521423100662310079123423632234§.§if function native§(_loc1_);
            if(_loc2_ != null)
            {
               _loc2_.clearInitParams();
            }
         }
         Model.popObject();
      }
      
      public function §catch catch for§(param1:Model, param2:Class) : Object
      {
         var _loc3_:Dictionary = this.data[param1];
         return _loc3_ == null ? null : _loc3_[param2];
      }
      
      public function §while for true§(param1:Class) : Boolean
      {
         return this.§5214232136232149123423632234§(param1).length > 0;
      }
      
      private function §switch package native§() : void
      {
         this.§5214233188233201123423632234§(this.§finally while if§);
         this.§5214233188233201123423632234§(this.§true use class§);
         this.§5214233188233201123423632234§(this.§5214238302238315123423632234§);
         this.§finally while if§ = null;
         this.§true use class§ = null;
         this.§5214238302238315123423632234§ = null;
      }
      
      public function §52142367423687123423632234§() : void
      {
         this.§finally catch catch§();
         this.§switch catch with§ = null;
         this.§521423139902314003123423632234§ = null;
         this.§521423113272311340123423632234§();
         this.§switch package native§();
      }
      
      public function get §override switch true§() : §return var null§
      {
         return this.§switch catch with§;
      }
      
      public function get §import finally include§() : §default switch§
      {
         return this.§521423139902314003123423632234§;
      }
      
      private function §521423113272311340123423632234§() : void
      {
         var _loc2_:Dictionary = null;
         var _loc4_:§do use with§ = null;
         for(var _loc3_ in this.data)
         {
            _loc2_ = this.data[_loc3_];
            for(var _loc1_ in _loc2_)
            {
               _loc4_ = _loc2_[_loc1_] as §do use with§;
               if(_loc4_ != null)
               {
                  _loc4_.§override catch get§();
               }
               delete _loc2_[_loc1_];
            }
            delete this.data[_loc3_];
         }
      }
      
      private function §5214233188233201123423632234§(param1:Dictionary) : void
      {
         if(param1 == null)
         {
            return;
         }
         for(var _loc2_ in param1)
         {
            delete param1[_loc2_];
         }
      }
      
      public function get name() : String
      {
         return this.§521423119252311938123423632234§;
      }
      
      public function §521423185532318566123423632234§(param1:Class) : Object
      {
         var _loc3_:* = undefined;
         var _loc4_:Class = null;
         if(this.§true use class§ == null)
         {
            this.§true use class§ = new Dictionary();
         }
         var _loc2_:Object = this.§true use class§[param1];
         if(_loc2_ == null)
         {
            _loc3_ = this.§5214232136232149123423632234§(param1);
            if(_loc3_.length > 1)
            {
            }
            if(_loc3_.length == 0)
            {
               throw new Error("GameObject::adapt() No models have been found. Object: " + this + ", interface: " + param1);
            }
            _loc4_ = §521423100662310079123423632234§.§52142353523548123423632234§(param1);
            _loc2_ = new _loc4_(this,_loc3_[0]);
            this.§true use class§[param1] = _loc2_;
         }
         return _loc2_;
      }
      
      private function §5214232136232149123423632234§(param1:Class) : Vector.<Object>
      {
         var _loc3_:Object = null;
         if(this.§finally while if§ == null)
         {
            this.§finally while if§ = new Dictionary();
         }
         if(param1 in this.§finally while if§)
         {
            return this.§finally while if§[param1];
         }
         var _loc2_:Vector.<Object> = new Vector.<Object>();
         if(this.§override switch true§ != null)
         {
            for each(var _loc4_ in this.§override switch true§.§521423169302316943123423632234§)
            {
               _loc3_ = §521423100662310079123423632234§.§if function native§(_loc4_);
               if(_loc3_ is param1)
               {
                  _loc2_[_loc2_.length] = _loc3_;
               }
            }
         }
         this.§finally while if§[param1] = _loc2_;
         return _loc2_;
      }
      
      public function §5214239800239813123423632234§(param1:Class) : Object
      {
         var _loc3_:* = undefined;
         var _loc4_:Class = null;
         if(this.§5214238302238315123423632234§ == null)
         {
            this.§5214238302238315123423632234§ = new Dictionary();
         }
         var _loc2_:Object = this.§5214238302238315123423632234§[param1];
         if(_loc2_ == null)
         {
            _loc3_ = this.§5214232136232149123423632234§(param1);
            _loc4_ = §521423100662310079123423632234§.§5214239685239698123423632234§(param1);
            _loc2_ = new _loc4_(this,_loc3_);
            this.§5214238302238315123423632234§[param1] = _loc2_;
         }
         return _loc2_;
      }
      
      public function get id() : §5214237893237906123423632234§
      {
         return this.§var use do§;
      }
   }
}

