package §implements super true§
{
   import §5214231749231762123423632234§.§5214233710233723123423632234§;
   import §each set default§.§521423144672314480123423632234§;
   import §each set default§.§5214234448234461123423632234§;
   
   internal class §521423183722318385123423632234§ extends §5214233710233723123423632234§
   {
      
      private var §5214231007231020123423632234§:Vector.<§521423144672314480123423632234§>;
      
      private var §521423140712314084123423632234§:int;
      
      private var §import switch default§:Number;
      
      public function §521423183722318385123423632234§()
      {
         super(1,1,0.5,0);
         shadowMapAlphaThreshold = 2;
         depthMapAlphaThreshold = 2;
         useShadowMap = false;
         useLight = false;
      }
      
      public function §52142367423687123423632234§() : void
      {
         setMaterialToAllFaces(null);
         this.§5214231007231020123423632234§ = null;
         this.§521423140712314084123423632234§ = 0;
      }
      
      private function §521423187392318752123423632234§(param1:§521423144672314480123423632234§) : void
      {
         §default finally get§.u = param1.§5214231868231881123423632234§;
         §default finally get§.v = param1.§5214238365238378123423632234§;
         §do var catch§.u = param1.§5214231868231881123423632234§;
         §do var catch§.v = param1.§class null§;
         §native var else§.u = param1.§default for super§;
         §native var else§.v = param1.§class null§;
         §const function override§.u = param1.§default for super§;
         §const function override§.v = param1.§5214238365238378123423632234§;
      }
      
      public function §function const package§(param1:Number, param2:Number) : void
      {
         this.§import switch default§ += param1 * param2;
         if(this.§import switch default§ >= this.§521423140712314084123423632234§)
         {
            this.§import switch default§ = 0;
         }
         this.§521423187392318752123423632234§(this.§5214231007231020123423632234§[int(this.§import switch default§)]);
      }
      
      public function §5214239350239363123423632234§(param1:§5214234448234461123423632234§) : void
      {
         setMaterialToAllFaces(param1.§const package set§);
         this.§5214231007231020123423632234§ = param1.§521423130342313047123423632234§;
         this.§521423140712314084123423632234§ = this.§5214231007231020123423632234§.length;
         this.§import switch default§ = 0;
         this.§521423187392318752123423632234§(this.§5214231007231020123423632234§[0]);
      }
   }
}

