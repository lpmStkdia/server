package §521423152962315309123423632234§
{
   import §5214232264232277123423632234§.§5214237893237906123423632234§;
   import §5214234985234998123423632234§.§521423137682313781123423632234§;
   import §5214236617236630123423632234§.§false switch const§;
   import §catch set implements§.§521423109732310986123423632234§;
   import §catch set implements§.§521423127512312764123423632234§;
   import §implements package import§.§521423113102311323123423632234§;
   import §implements package import§.§521423188692318882123423632234§;
   import platform.client.fp10.core.model.impl.Model;
   import §use const if§.§5214239200239213123423632234§;
   
   public class §521423127422312755123423632234§ extends §521423188692318882123423632234§ implements §521423113102311323123423632234§, §521423127512312764123423632234§, §521423109732310986123423632234§, §521423132382313251123423632234§
   {
      
      public static var §521423119112311924123423632234§:§521423137682313781123423632234§;
      
      private var §521423194442319457123423632234§:Vector.<§5214237893237906123423632234§>;
      
      public function §521423127422312755123423632234§()
      {
         super();
      }
      
      public function §5214239357239370123423632234§(param1:§5214237893237906123423632234§) : void
      {
         if(!this.§if const§())
         {
            return;
         }
         this.§521423194442319457123423632234§[§521423194442319457123423632234§.length] = param1;
         §5214239200239213123423632234§.§5214237382237395123423632234§().dispatchEvent(new §5214239200239213123423632234§("ClansListEvent.OUTGOING" + "ClansListEvent.ADD",param1));
      }
      
      public function §5214234096234109123423632234§(param1:§5214237893237906123423632234§) : void
      {
         if(!this.§if const§())
         {
            return;
         }
         var _loc2_:int = this.§521423194442319457123423632234§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this.§521423194442319457123423632234§.removeAt(_loc2_);
            §5214239200239213123423632234§.§5214237382237395123423632234§().dispatchEvent(new §5214239200239213123423632234§("ClansListEvent.OUTGOING" + "ClansListEvent.REMOVE",param1));
         }
      }
      
      public function §finally package break§() : void
      {
         if(!this.§if const§())
         {
            return;
         }
         this.§521423194442319457123423632234§ = §521423127052312718123423632234§().§521423188262318839123423632234§.concat();
      }
      
      public function §class var each§() : Vector.<§5214237893237906123423632234§>
      {
         return this.§521423194442319457123423632234§;
      }
      
      private function §if const§() : Boolean
      {
         var _loc1_:§false switch const§ = §false switch const§(platform.client.fp10.core.model.impl.Model.§5214238154238167123423632234§.§521423185532318566123423632234§(§false switch const§));
         return _loc1_.§implements package try§();
      }
      
      public function §else for case§() : void
      {
         if(!this.§if const§())
         {
            return;
         }
         this.§521423194442319457123423632234§.length = 0;
      }
   }
}

