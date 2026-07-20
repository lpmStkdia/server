package §each set default§
{
   import §5214234079234092123423632234§.§for package with§;
   import §5214236158236171123423632234§.§521423105062310519123423632234§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.tanks.materials.AnimatedPaintMaterial;
   import alternativa.tanks.materials.PaintMaterial;
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import §implements use var§.§5214232504232517123423632234§;
   import §implements use var§.§finally for implements§;
   import §true catch false§.§52142358423597123423632234§;
   
   public class §while package if§ implements §for package with§
   {
      
      private static const §52142396723980123423632234§:String = "-nomips";
      
      private var §5214236710236723123423632234§:§5214234588234601123423632234§ = new §5214234588234601123423632234§();
      
      private var §521423132522313265123423632234§:§5214232267232280123423632234§;
      
      private var §import set override§:Boolean;
      
      private const §521423173242317337123423632234§:Vector.<TextureMaterial> = new Vector.<TextureMaterial>();
      
      private const §for while with§:Dictionary = new Dictionary();
      
      private var §5214239071239084123423632234§:Dictionary = new Dictionary();
      
      private const §521423142152314228123423632234§:Dictionary = new Dictionary();
      
      public function §while package if§(param1:§5214232267232280123423632234§)
      {
         super();
         this.§521423132522313265123423632234§ = param1;
      }
      
      public function §try if§(param1:TextureMaterial) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:§521423154122315425123423632234§ = this.§521423142152314228123423632234§[param1];
         if(_loc2_ != null)
         {
            ++this.§5214236710236723123423632234§.§catch var if§;
            --_loc2_.§var var final§;
            if(_loc2_.§var var final§ == 0)
            {
               this.§function catch package§(_loc2_);
            }
         }
      }
      
      protected function §5214235852235865123423632234§(param1:TextureMaterial) : §521423154122315425123423632234§
      {
         return this.§521423142152314228123423632234§[param1];
      }
      
      public function §dynamic super static§() : §5214234588234601123423632234§
      {
         return this.§5214236710236723123423632234§;
      }
      
      private function §521423164032316416123423632234§(param1:TextureMaterial) : void
      {
         param1.mipMapping = 0;
      }
      
      private function §521423161422316155123423632234§(param1:TextureMaterial) : void
      {
         param1.texture = null;
         param1.textureATF = null;
         param1.textureATFAlpha = null;
      }
      
      public function §set finally class§(param1:§5214232504232517123423632234§, param2:§521423105062310519123423632234§) : PaintMaterial
      {
         var _loc3_:§521423154122315425123423632234§ = null;
         ++this.§5214236710236723123423632234§.§var do§;
         var _loc8_:§5214232504232517123423632234§ = param1;
         var _loc5_:String = _loc8_.§false catch override§.id + " " + param2.§while catch class§;
         if(_loc5_ in this.§for while with§)
         {
            _loc3_ = this.§for while with§[_loc5_];
            ++_loc3_.§var var final§;
            return _loc3_.§const package set§ as PaintMaterial;
         }
         var _loc6_:BitmapData = param2.§521423179582317971123423632234§;
         var _loc7_:BitmapData = param2.§const package implements§;
         if(!§52142358423597123423632234§.§5214232292232305123423632234§ || §52142358423597123423632234§.§try const const§)
         {
            _loc6_ = §521423135432313556123423632234§(_loc6_,true);
            _loc7_ = §521423135432313556123423632234§(_loc7_,true);
         }
         var _loc4_:PaintMaterial = new PaintMaterial(param1.data,_loc6_,_loc7_,this.§import set override§ ? 2 : 0);
         _loc4_.resolution = 4;
         _loc3_ = this.§521423194122319425123423632234§(_loc5_,_loc4_);
         ++_loc3_.§var var final§;
         this.§521423173242317337123423632234§[§521423173242317337123423632234§.length] = _loc4_;
         ++this.§5214236710236723123423632234§.§5214231800231813123423632234§;
         return _loc4_;
      }
      
      private function §5214236993237006123423632234§() : void
      {
         if(!this.§import set override§)
         {
            this.§import set override§ = true;
            this.§521423116472311660123423632234§(this.§52142312314123423632234§);
            this.§521423116472311660123423632234§(this.§521423132122313225123423632234§);
         }
      }
      
      public function §include use null§(param1:TextureMaterial) : void
      {
         var _loc2_:§521423154122315425123423632234§ = this.§521423124362312449123423632234§(null,param1);
         ++_loc2_.§var var final§;
         this.§521423142152314228123423632234§[param1] = _loc2_;
         this.§521423173242317337123423632234§[§521423173242317337123423632234§.length] = param1;
      }
      
      public function §521423171212317134123423632234§(param1:ByteArray, param2:Boolean = true) : TextureMaterial
      {
         var _loc3_:TextureMaterial = null;
         if(param1 in this.§5214239071239084123423632234§)
         {
            _loc3_ = this.§5214239071239084123423632234§[param1];
         }
         else
         {
            _loc3_ = new TextureMaterial();
            _loc3_.mipMapping = this.§import set override§ ? 2 : 0;
            _loc3_.textureATF = param1;
            if(!param2)
            {
               _loc3_.name = "-nomips";
            }
            this.§521423173242317337123423632234§[§521423173242317337123423632234§.length] = _loc3_;
         }
         return _loc3_;
      }
      
      private function §import set§(param1:BitmapData, param2:Boolean, param3:Boolean) : TextureMaterial
      {
         var _loc4_:BitmapData = this.§521423135432313556123423632234§(param1,param2);
         var _loc5_:TextureMaterial = this.§521423132522313265123423632234§.§true finally false§(_loc4_,this.§import set override§ && param3);
         this.§521423173242317337123423632234§[§521423173242317337123423632234§.length] = _loc5_;
         ++this.§5214236710236723123423632234§.§5214231800231813123423632234§;
         return _loc5_;
      }
      
      public function §5214236074236087123423632234§(param1:Boolean) : void
      {
         if(this.§import set override§ != param1)
         {
            if(param1)
            {
               this.§5214236993237006123423632234§();
            }
            else
            {
               this.§extends function with§();
            }
         }
      }
      
      public function §521423148232314836123423632234§(param1:§finally for implements§, param2:§521423105062310519123423632234§) : AnimatedPaintMaterial
      {
         var _loc4_:§521423154122315425123423632234§ = null;
         ++this.§5214236710236723123423632234§.§var do§;
         var _loc10_:§finally for implements§ = param1;
         var _loc7_:String = _loc10_.§false catch override§.id + " " + param2.§while catch class§;
         if(_loc7_ in this.§for while with§)
         {
            _loc4_ = this.§for while with§[_loc7_];
            ++_loc4_.§var var final§;
            return _loc4_.§const package set§ as AnimatedPaintMaterial;
         }
         var _loc3_:int = param1.data.width / param1.§5214233613233626123423632234§;
         var _loc5_:int = param1.data.height / param1.§521423115002311513123423632234§;
         var _loc8_:BitmapData = param2.§521423179582317971123423632234§;
         var _loc9_:BitmapData = param2.§const package implements§;
         if(!§52142358423597123423632234§.§5214232292232305123423632234§ || §52142358423597123423632234§.§try const const§)
         {
            _loc8_ = §521423135432313556123423632234§(_loc8_,true);
            _loc9_ = §521423135432313556123423632234§(_loc9_,true);
         }
         var _loc6_:AnimatedPaintMaterial = new AnimatedPaintMaterial(param1.data,_loc8_,_loc9_,_loc3_,_loc5_,param1.§521423100092310022123423632234§,param1.§521423140712314084123423632234§,this.§import set override§ ? 2 : 0);
         _loc4_ = this.§521423194122319425123423632234§(_loc7_,_loc6_);
         ++_loc4_.§var var final§;
         this.§521423173242317337123423632234§[§521423173242317337123423632234§.length] = _loc6_;
         ++this.§5214236710236723123423632234§.§5214231800231813123423632234§;
         return _loc6_;
      }
      
      protected function §521423116472311660123423632234§(param1:Function) : void
      {
         for each(var _loc2_ in this.§521423173242317337123423632234§)
         {
            param1(_loc2_);
         }
      }
      
      public function §return var var§(param1:BitmapData, param2:Boolean = true, param3:Boolean = true) : TextureMaterial
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture is null");
         }
         ++this.§5214236710236723123423632234§.§var do§;
         var _loc4_:§521423154122315425123423632234§ = this.§implements use default§(param1,param2,param3);
         ++_loc4_.§var var final§;
         return _loc4_.§const package set§;
      }
      
      private function §521423124362312449123423632234§(param1:BitmapData, param2:TextureMaterial) : §521423154122315425123423632234§
      {
         var _loc3_:§521423154122315425123423632234§ = new §521423154122315425123423632234§(param1,param2);
         this.§for while with§[param1] = _loc3_;
         this.§521423142152314228123423632234§[param2] = _loc3_;
         return _loc3_;
      }
      
      public function §52142367423687123423632234§() : void
      {
         var _loc1_:* = undefined;
         this.§521423116472311660123423632234§(this.§521423161422316155123423632234§);
         this.§521423173242317337123423632234§.length = 0;
         for(_loc1_ in this.§for while with§)
         {
            delete this.§for while with§[_loc1_];
         }
         for(_loc1_ in this.§521423142152314228123423632234§)
         {
            delete this.§521423142152314228123423632234§[_loc1_];
         }
         for(_loc1_ in this.§5214239071239084123423632234§)
         {
            delete this.§5214239071239084123423632234§[_loc1_];
         }
         this.§5214236710236723123423632234§.§52142367423687123423632234§();
      }
      
      private function §521423194122319425123423632234§(param1:String, param2:TextureMaterial) : §521423154122315425123423632234§
      {
         var _loc3_:§521423154122315425123423632234§ = new §521423154122315425123423632234§(param1,param2);
         this.§for while with§[param1] = _loc3_;
         this.§521423142152314228123423632234§[param2] = _loc3_;
         return _loc3_;
      }
      
      private function §52142312314123423632234§(param1:TextureMaterial) : void
      {
         param1.disposeResource();
      }
      
      protected function §521423135432313556123423632234§(param1:BitmapData, param2:Boolean) : BitmapData
      {
         throw new Error("Not implemented");
      }
      
      private function §521423132122313225123423632234§(param1:TextureMaterial) : void
      {
         if(param1.name != "-nomips")
         {
            param1.mipMapping = 2;
         }
         else
         {
            param1.mipMapping = 0;
         }
      }
      
      private function §function catch package§(param1:§521423154122315425123423632234§) : void
      {
         ++this.§5214236710236723123423632234§.§while set return§;
         var _loc2_:TextureMaterial = param1.§const package set§;
         if(param1.§521423127542312767123423632234§ in this.§for while with§)
         {
            delete this.§for while with§[param1.§521423127542312767123423632234§];
         }
         delete this.§521423142152314228123423632234§[_loc2_];
         param1.§const package set§ = null;
         var _loc3_:int = this.§521423173242317337123423632234§.indexOf(_loc2_);
         this.§521423173242317337123423632234§.removeAt(_loc3_);
         _loc2_.dispose();
      }
      
      private function §extends function with§() : void
      {
         if(this.§import set override§)
         {
            this.§import set override§ = false;
            this.§521423116472311660123423632234§(this.§52142312314123423632234§);
            this.§521423116472311660123423632234§(this.§521423164032316416123423632234§);
         }
      }
      
      private function §implements use default§(param1:BitmapData, param2:Boolean, param3:Boolean = true) : §521423154122315425123423632234§
      {
         var _loc5_:TextureMaterial = null;
         var _loc4_:§521423154122315425123423632234§ = this.§for while with§[param1];
         if(_loc4_ == null)
         {
            _loc5_ = this.§import set§(param1,param2,param3);
            if(!param3)
            {
               _loc5_.name = "-nomips";
            }
            _loc4_ = this.§521423124362312449123423632234§(param1,_loc5_);
         }
         return _loc4_;
      }
   }
}

