package §use const if§
{
   import §521423158432315856123423632234§.§5214231885231898123423632234§;
   import §5214232264232277123423632234§.§5214237893237906123423632234§;
   import §5214234985234998123423632234§.§521423137682313781123423632234§;
   import flash.utils.Dictionary;
   import §throw for each§.§521423136102313623123423632234§;
   import §var while dynamic§.§throw break§;
   import §with import§.§var with§;
   
   public class §include for continue§ extends §521423136102313623123423632234§
   {
      
      public static var §521423119112311924123423632234§:§521423137682313781123423632234§;
      
      private static var §521423134362313449123423632234§:RegExp = /\-|\./;
      
      private static var §super function in§:RegExp = /\*/g;
      
      private var §521423106792310692123423632234§:Function;
      
      private var §const finally override§:Dictionary = new Dictionary();
      
      private var §dynamic for each§:String = "";
      
      private var §521423150702315083123423632234§:Object = ["id"];
      
      private var §521423149482314961123423632234§:Object = null;
      
      private var §dynamic package continue§:String;
      
      private var §get use do§:RegExp;
      
      public function §include for continue§()
      {
         super();
      }
      
      private static function §include set final§(param1:String) : RegExp
      {
         param1 = param1.replace(§521423134362313449123423632234§,"\\$&").replace(§super function in§,".*");
         param1 = "^" + param1;
         return new RegExp(param1,"i");
      }
      
      override public function sortOn(param1:Object, param2:Object = null) : *
      {
         this.§521423150702315083123423632234§ = param1;
         this.§521423149482314961123423632234§ = param2;
         super.sortOn(this.§521423150702315083123423632234§,this.§521423149482314961123423632234§);
      }
      
      public function §521423129612312974123423632234§() : void
      {
         super.sortOn(this.§521423150702315083123423632234§,this.§521423149482314961123423632234§);
      }
      
      public function §throw while import§() : void
      {
         if(this.§dynamic for each§ != "")
         {
            super.removeAll();
            for each(var _loc1_ in this.§const finally override§)
            {
               if(this.§5214236792236805123423632234§(_loc1_))
               {
                  super.§52142341723430123423632234§(_loc1_);
               }
            }
         }
         this.§521423129612312974123423632234§();
      }
      
      private function §native switch static§(param1:§5214237893237906123423632234§) : String
      {
         var _loc3_:§5214231885231898123423632234§ = §521423119112311924123423632234§.§521423186822318695123423632234§(param1);
         var _loc2_:§throw break§ = _loc3_.§521423185532318566123423632234§(§throw break§) as §throw break§;
         return _loc2_.§native switch static§();
      }
      
      public function set §521423129642312977123423632234§(param1:Function) : void
      {
         this.§521423106792310692123423632234§ = param1;
      }
      
      public function get §521423129642312977123423632234§() : Function
      {
         return this.§521423106792310692123423632234§;
      }
      
      public function §521423103082310321123423632234§(param1:§5214237893237906123423632234§) : void
      {
         if(param1 in this.§const finally override§)
         {
            super.§5214239032239045123423632234§(this.§const finally override§[param1]);
            delete this.§const finally override§[param1];
         }
      }
      
      public function §package while class§(param1:String, param2:String) : void
      {
         if(param2 == "" && this.§dynamic for each§ != "")
         {
            this.§521423180262318039123423632234§();
            return;
         }
         this.§dynamic package continue§ = param1;
         this.§dynamic for each§ = param2;
         this.§get use do§ = §include set final§(this.§dynamic for each§);
         this.§throw while import§();
      }
      
      override public function getItemAt(param1:uint) : Object
      {
         var _loc2_:Object = super.getItemAt(param1);
         if(this.§521423106792310692123423632234§ != null)
         {
            this.§521423106792310692123423632234§(_loc2_);
         }
         return _loc2_;
      }
      
      public function §521423120422312055123423632234§(param1:§5214237893237906123423632234§, param2:String, param3:Boolean = true) : Object
      {
         var _loc4_:Object = {};
         _loc4_.id = param1;
         _loc4_.type = param2;
         _loc4_.name = this.§native switch static§(param1);
         _loc4_.isNew = §var with§.§521423185722318585123423632234§(param1);
         this.§const finally override§[param1] = _loc4_;
         super.§52142341723430123423632234§(this.§const finally override§[param1]);
         if(param3)
         {
            this.§5214231643231656123423632234§();
         }
         return this.§const finally override§[param1];
      }
      
      public function §521423180262318039123423632234§(param1:Boolean = true) : void
      {
         this.§dynamic for each§ = "";
         if(!param1)
         {
            return;
         }
         super.removeAll();
         for each(var _loc2_ in this.§const finally override§)
         {
            super.§52142341723430123423632234§(_loc2_);
         }
         this.§521423129612312974123423632234§();
      }
      
      public function §5214231643231656123423632234§() : void
      {
         this.§throw while import§();
      }
      
      private function §5214236792236805123423632234§(param1:Object) : Boolean
      {
         return param1.hasOwnProperty(this.§dynamic package continue§) && param1[this.§dynamic package continue§].search(this.§get use do§) != -1;
      }
   }
}

