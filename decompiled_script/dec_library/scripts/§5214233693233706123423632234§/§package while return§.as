package §5214233693233706123423632234§
{
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.BSP;
   import §each set default§.§521423144672314480123423632234§;
   import §for use use§.§if package finally§;
   import §package while include§.§while super return§;
   
   public class §package while return§ implements §5214236003236016123423632234§
   {
      
      private var §521423149032314916123423632234§:§while super return§;
      
      private var §521423123272312340123423632234§:String;
      
      private var §switch var finally§:Vector.<BSP> = new Vector.<BSP>();
      
      public function §package while return§(param1:§while super return§, param2:String)
      {
         super();
         this.§521423149032314916123423632234§ = param1;
         this.§521423123272312340123423632234§ = param2;
      }
      
      public function §521423163132316326123423632234§(param1:BSP) : void
      {
         this.§switch var finally§[§switch var finally§.length] = param1;
      }
      
      public function §true while in§() : §if package finally§
      {
         return this.§521423149032314916123423632234§.§override set case§.§throw function catch§(this.§521423123272312340123423632234§);
      }
      
      public function §case for native§() : String
      {
         return §521423149032314916123423632234§.§521423139592313972123423632234§[§521423123272312340123423632234§];
      }
      
      private function §5214231956231969123423632234§(param1:BSP, param2:§521423144672314480123423632234§) : void
      {
         var _loc6_:Vertex = null;
         var _loc3_:Number = param2.§5214231868231881123423632234§;
         var _loc5_:Number = param2.§5214238365238378123423632234§;
         var _loc7_:Number = param2.§default for super§ - _loc3_;
         var _loc4_:Number = param2.§class null§ - _loc5_;
         _loc6_ = param1.vertexList;
         while(_loc6_ != null)
         {
            _loc6_.u = _loc3_ + _loc6_.u * _loc7_;
            _loc6_.v = _loc5_ + _loc6_.v * _loc4_;
            _loc6_ = _loc6_.next;
         }
      }
      
      public function §extends const class§(param1:TextureMaterial, param2:§521423144672314480123423632234§) : void
      {
         var _loc4_:int = 0;
         var _loc3_:int = int(§switch var finally§.length);
         if(_loc3_ > 0)
         {
            param1.resolution = §switch var finally§[0].calculateResolution(param1.texture.width,param1.texture.height);
         }
         while(_loc4_ < _loc3_)
         {
            §switch var finally§[_loc4_].setMaterialToAllFaces(param1);
            if(param2 != null)
            {
               §5214231956231969123423632234§(§switch var finally§[_loc4_],param2);
            }
            _loc4_++;
         }
      }
   }
}

