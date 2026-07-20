package §5214236158236171123423632234§
{
   import §521423165552316568123423632234§.§default var function§;
   import §5214232264232277123423632234§.§5214237893237906123423632234§;
   import §5214235292235305123423632234§.§case while§;
   import alternativa.engine3d.objects.Mesh;
   import §each set default§.§521423114602311473123423632234§;
   import flash.display.BitmapData;
   import §implements use var§.§try var package§;
   import §true catch false§.§52142358423597123423632234§;
   
   public class §521423105062310519123423632234§
   {
      
      private static const §521423115132311526123423632234§:String = "details.png";
      
      private static const §5214231628231641123423632234§:String = "lightmap.jpg";
      
      private static const §5214233645233658123423632234§:Object = {};
      
      public var §while catch class§:§5214237893237906123423632234§;
      
      public var §const package implements§:BitmapData;
      
      public var §521423179582317971123423632234§:BitmapData;
      
      public function §521423105062310519123423632234§(param1:§case while§)
      {
         super();
         this.§while catch class§ = param1.§false catch override§.id;
         this.§const package implements§ = param1.§override set case§["details.png"] || this.§finally while each§("details.png",65280);
         this.§521423179582317971123423632234§ = param1.§override set case§["lightmap.jpg"] || this.§finally while each§("lightmap.jpg",8355711);
      }
      
      private function §finally while each§(param1:String, param2:uint) : BitmapData
      {
         var _loc3_:BitmapData = §5214233645233658123423632234§[param1];
         if(_loc3_ == null)
         {
            _loc3_ = new §try var package§(param2);
            §5214233645233658123423632234§[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public function §5214235203235216123423632234§(param1:BitmapData) : BitmapData
      {
         var _loc2_:§521423114602311473123423632234§ = null;
         if(!§52142358423597123423632234§.§5214232292232305123423632234§ || §52142358423597123423632234§.§try const const§)
         {
            _loc2_ = §521423114602311473123423632234§(§default var function§.§import use include§().§5214231532231545123423632234§(§521423114602311473123423632234§));
            return _loc2_.§521423135432313556123423632234§(§const package implements§,true);
         }
         return this.§const package implements§.clone();
      }
      
      protected function §5214235654235667123423632234§(param1:Mesh) : Mesh
      {
         if(param1.sorting != 2)
         {
            param1.sorting = 2;
            param1.calculateFacesNormals(true);
            param1.optimizeForDynamicBSP();
            param1.threshold = 0.01;
         }
         return param1;
      }
   }
}

