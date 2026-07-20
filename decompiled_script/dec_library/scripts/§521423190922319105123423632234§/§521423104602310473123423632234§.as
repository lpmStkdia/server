package §521423190922319105123423632234§
{
   import §5214235292235305123423632234§.§case while§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Object3DContainer;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.tanks.materials.AnimatedPaintMaterial;
   import alternativa.tanks.materials.PaintMaterial;
   import flash.display.BitmapData;
   import §implements use var§.§finally for implements§;
   
   public class §521423104602310473123423632234§ extends Object3DContainer
   {
      
      public static const §true var implements§:String = "tankPart";
      
      private static const §521423115362311549123423632234§:int = 0;
      
      private static const §521423115392311552123423632234§:int = 1;
      
      private static var §class var finally§:BitmapData;
      
      public static const §521423115112311524123423632234§:RegExp = /(box.*|fmnt.*|muzzle.*|laser|rocket)/i;
      
      private var §5214236697236710123423632234§:§case while§;
      
      private var §use super finally§:§case while§;
      
      private var §5214231165231178123423632234§:Mesh;
      
      private var §5214237336237349123423632234§:§5214239091239104123423632234§;
      
      private var §const import§:BitmapData;
      
      private var §521423173242317337123423632234§:Vector.<TextureMaterial> = new Vector.<TextureMaterial>(2);
      
      private var §5214231570231583123423632234§:§finally for implements§;
      
      public function §521423104602310473123423632234§()
      {
         super();
      }
      
      private static function §catch finally§() : BitmapData
      {
         if(§class var finally§ == null)
         {
            §class var finally§ = new BitmapData(1,1,false,6710886);
         }
         return §class var finally§;
      }
      
      public static function §return for try§(param1:Mesh) : Mesh
      {
         var _loc2_:Mesh = Mesh(param1.clone());
         _loc2_.name = "tankPart";
         _loc2_.colorTransform = null;
         _loc2_.shadowMapAlphaThreshold = 0.1;
         _loc2_.calculateVerticesNormalsBySmoothingGroups(0.01);
         return _loc2_;
      }
      
      public function §5214231525231538123423632234§() : Number
      {
         return this.§5214237336237349123423632234§ == null ? 0 : Number(this.§5214237336237349123423632234§.x);
      }
      
      private function §get finally var§(param1:§case while§, param2:Mesh, param3:int) : TextureMaterial
      {
         var _loc4_:TextureMaterial = null;
         if(param1 == null || param2 == null || this.§const import§ == null && this.§5214231570231583123423632234§ == null)
         {
            this.alpha = 0;
            return null;
         }
         this.alpha = 1;
         if(this.§5214231570231583123423632234§ != null)
         {
            _loc4_ = this.§break use throw§(param1,param3);
         }
         else
         {
            _loc4_ = this.§5214235203235216123423632234§(param1,param3);
         }
         param2.setMaterialToAllFaces(_loc4_);
         return _loc4_;
      }
      
      private function §while while with§(param1:§case while§) : Vector.<Mesh>
      {
         var _loc2_:Vector.<Mesh> = new Vector.<Mesh>();
         for each(var _loc3_ in param1.§521423188262318839123423632234§)
         {
            if(_loc3_ is Mesh && !§521423115112311524123423632234§.test(_loc3_.name))
            {
               _loc2_[_loc2_.length] = this.§5214235654235667123423632234§(§return for try§(_loc3_ as Mesh));
            }
         }
         return _loc2_;
      }
      
      private function §5214236009236022123423632234§(param1:§case while§, param2:§5214239091239104123423632234§) : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:Vector.<Mesh> = param2.§while while with§();
         var _loc5_:TextureMaterial = this.§get finally var§(param1,_loc4_[0],1);
         var _loc3_:int = 1;
         while(_loc3_ < _loc4_.length)
         {
            _loc4_[_loc3_].setMaterialToAllFaces(_loc5_);
            _loc3_++;
         }
      }
      
      public function §false use var§() : void
      {
         this.§get use null§();
         this.§521423173242317337123423632234§ = null;
         this.§5214231570231583123423632234§ = null;
         this.§5214231165231178123423632234§ = null;
         this.§5214237336237349123423632234§ = null;
         this.§const import§ = null;
         this.§5214236697236710123423632234§ = null;
         this.§use super finally§ = null;
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
      
      private function §break use throw§(param1:§case while§, param2:int) : TextureMaterial
      {
         var _loc6_:BitmapData = param1.§override set case§["lightmap.jpg"];
         var _loc7_:BitmapData = param1.§override set case§["details.png"];
         var _loc4_:int = this.§5214231570231583123423632234§.data.width / this.§5214231570231583123423632234§.§5214233613233626123423632234§;
         var _loc5_:int = this.§5214231570231583123423632234§.data.height / this.§5214231570231583123423632234§.§521423115002311513123423632234§;
         var _loc3_:AnimatedPaintMaterial = new AnimatedPaintMaterial(this.§5214231570231583123423632234§.data,_loc6_,_loc7_,_loc4_,_loc5_,this.§5214231570231583123423632234§.§521423100092310022123423632234§,this.§5214231570231583123423632234§.§521423140712314084123423632234§);
         if(this.§521423173242317337123423632234§[param2] != null)
         {
            this.§521423173242317337123423632234§[param2].dispose();
         }
         this.§521423173242317337123423632234§[param2] = _loc3_;
         return _loc3_;
      }
      
      public function §521423186812318694123423632234§() : Number
      {
         return this.§5214237336237349123423632234§ == null ? 0 : Number(this.§5214237336237349123423632234§.z);
      }
      
      private function §521423100872310100123423632234§() : void
      {
         if(this.§5214231165231178123423632234§ == null || this.§5214237336237349123423632234§ == null)
         {
            return;
         }
         var _loc1_:Object3D = this.§5214236697236710123423632234§.§521423186642318677123423632234§(/mount/i)[0];
         this.§5214237336237349123423632234§.x = _loc1_.x;
         this.§5214237336237349123423632234§.y = _loc1_.y;
         this.§5214237336237349123423632234§.z = _loc1_.z;
      }
      
      private function §5214235203235216123423632234§(param1:§case while§, param2:int) : TextureMaterial
      {
         var _loc4_:BitmapData = param1.§override set case§["lightmap.jpg"];
         var _loc5_:BitmapData = param1.§override set case§["details.png"];
         var _loc3_:TextureMaterial = new PaintMaterial(this.§const import§,_loc4_,_loc5_);
         if(this.§521423173242317337123423632234§[param2] != null)
         {
            this.§521423173242317337123423632234§[param2].dispose();
         }
         this.§521423173242317337123423632234§[param2] = _loc3_;
         return _loc3_;
      }
      
      public function §static for catch§(param1:§case while§) : void
      {
         if(this.§5214237336237349123423632234§ != null)
         {
            for each(var _loc2_ in this.§5214237336237349123423632234§.§while while with§())
            {
               _loc2_.setMaterialToAllFaces(null);
            }
            removeChild(this.§5214237336237349123423632234§);
         }
         if(param1 == null)
         {
            return;
         }
         this.§use super finally§ = param1;
         this.§5214237336237349123423632234§ = new §5214239091239104123423632234§();
         this.§5214237336237349123423632234§.§521423185252318538123423632234§(this.§while while with§(param1));
         addChild(this.§5214237336237349123423632234§);
         this.§5214236009236022123423632234§(param1,this.§5214237336237349123423632234§);
         this.§521423100872310100123423632234§();
      }
      
      public function §5214237380237393123423632234§(param1:§finally for implements§) : void
      {
         this.§const import§ = null;
         this.§get use null§();
         this.§5214231570231583123423632234§ = param1;
         this.§5214236009236022123423632234§(this.§use super finally§,this.§5214237336237349123423632234§);
         this.§get finally var§(this.§5214236697236710123423632234§,this.§5214231165231178123423632234§,0);
      }
      
      private function §get use null§() : void
      {
         if(this.§521423173242317337123423632234§[0] != null)
         {
            this.§521423173242317337123423632234§[0].dispose();
            this.§521423173242317337123423632234§[0] = null;
         }
         if(this.§521423173242317337123423632234§[1] != null)
         {
            this.§521423173242317337123423632234§[1].dispose();
            this.§521423173242317337123423632234§[1] = null;
         }
      }
      
      public function §include super use§(param1:BitmapData) : void
      {
         this.§5214231570231583123423632234§ = null;
         this.§get use null§();
         this.§const import§ = param1 != null ? param1 : §catch finally§();
         this.§5214236009236022123423632234§(this.§use super finally§,this.§5214237336237349123423632234§);
         this.§get finally var§(this.§5214236697236710123423632234§,this.§5214231165231178123423632234§,0);
      }
      
      public function §catch switch try§() : Number
      {
         return this.§5214237336237349123423632234§ == null ? 0 : Number(this.§5214237336237349123423632234§.y);
      }
      
      public function §521423149222314935123423632234§(param1:§case while§) : void
      {
         if(this.§5214231165231178123423632234§ != null)
         {
            this.§5214231165231178123423632234§.setMaterialToAllFaces(null);
            removeChild(this.§5214231165231178123423632234§);
         }
         if(param1 == null)
         {
            return;
         }
         this.§5214236697236710123423632234§ = param1;
         this.§5214231165231178123423632234§ = this.§5214235654235667123423632234§(§return for try§(param1.§521423188262318839123423632234§[0] as Mesh));
         addChild(this.§5214231165231178123423632234§);
         if(this.§5214237336237349123423632234§ != null)
         {
            addChild(this.§5214237336237349123423632234§);
         }
         this.§5214231165231178123423632234§.x = 0;
         this.§5214231165231178123423632234§.y = 0;
         this.§5214231165231178123423632234§.z = 0;
         this.§get finally var§(param1,this.§5214231165231178123423632234§,0);
         this.§521423100872310100123423632234§();
      }
   }
}

