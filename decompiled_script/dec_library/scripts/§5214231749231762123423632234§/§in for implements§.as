package §5214231749231762123423632234§
{
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.objects.Mesh;
   import §each set default§.§521423144672314480123423632234§;
   import §each set default§.§5214234448234461123423632234§;
   
   public class §in for implements§ extends Mesh
   {
      
      private var §default finally get§:Vertex;
      
      private var §do var catch§:Vertex;
      
      private var §native var else§:Vertex;
      
      private var §const function override§:Vertex;
      
      private var §5214231007231020123423632234§:Vector.<§521423144672314480123423632234§>;
      
      private var §521423140712314084123423632234§:int;
      
      private var §default const final§:Number = 0;
      
      public function §in for implements§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 0, param5:Number = 10)
      {
         super();
         this.§5214238921238934123423632234§(param1,param2,param3,param4,param5);
         sorting = 2;
         calculateBounds();
         calculateFacesNormals();
         this.§521423185292318542123423632234§();
         this.softAttenuation = 130;
         this.shadowMapAlphaThreshold = 2;
         this.depthMapAlphaThreshold = 2;
      }
      
      public function §52142367423687123423632234§() : void
      {
         setMaterialToAllFaces(null);
         this.§5214231007231020123423632234§ = null;
         this.§521423140712314084123423632234§ = 0;
      }
      
      private function §521423187392318752123423632234§(param1:§521423144672314480123423632234§) : void
      {
         this.§default finally get§.u = param1.§5214231868231881123423632234§;
         this.§default finally get§.v = param1.§5214238365238378123423632234§;
         this.§do var catch§.u = param1.§5214231868231881123423632234§;
         this.§do var catch§.v = param1.§class null§;
         this.§native var else§.u = param1.§default for super§;
         this.§native var else§.v = param1.§class null§;
         this.§const function override§.u = param1.§default for super§;
         this.§const function override§.v = param1.§5214238365238378123423632234§;
      }
      
      private function §521423185292318542123423632234§() : void
      {
         var _loc1_:Vector.<Vertex> = this.vertices;
         this.§default finally get§ = _loc1_[0];
         this.§do var catch§ = _loc1_[1];
         this.§native var else§ = _loc1_[2];
         this.§const function override§ = _loc1_[3];
      }
      
      public function §5214237254237267123423632234§(param1:Number) : void
      {
         var _loc2_:int = param1 * this.§default const final§;
         if(_loc2_ >= this.§521423140712314084123423632234§)
         {
            _loc2_ = this.§521423140712314084123423632234§ - 1;
         }
         this.§521423187392318752123423632234§(this.§5214231007231020123423632234§[_loc2_]);
      }
      
      private function §5214238921238934123423632234§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc10_:Number = param1 / 2;
         var _loc8_:Number = param2 / 2;
         var _loc9_:Vector.<Number> = Vector.<Number>([param3 - _loc10_,param4 + _loc8_,param5,param3 - _loc10_,param4 - _loc8_,param5,param3 + _loc10_,param4 - _loc8_,param5,param3 + _loc10_,param4 + _loc8_,param5]);
         var _loc7_:Vector.<Number> = Vector.<Number>([0,0,0,1,1,1,1,0]);
         var _loc6_:Vector.<int> = Vector.<int>([4,0,1,2,3,4,0,3,2,1]);
         addVerticesAndFaces(_loc9_,_loc7_,_loc6_,true);
      }
      
      public function §5214239350239363123423632234§(param1:§5214234448234461123423632234§, param2:Number) : void
      {
         setMaterialToAllFaces(param1.§const package set§);
         this.§5214231007231020123423632234§ = param1.§521423130342313047123423632234§;
         this.§521423140712314084123423632234§ = this.§5214231007231020123423632234§.length;
         this.§default const final§ = param2;
      }
      
      public function §5214235209235222123423632234§() : Number
      {
         return this.§521423140712314084123423632234§ / this.§default const final§;
      }
   }
}

