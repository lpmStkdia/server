package §package while include§
{
   import §521423123782312391123423632234§.§5214238897238910123423632234§;
   import §521423123782312391123423632234§.§use for native§;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.loaders.Parser3DS;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.engine3d.objects.Occluder;
   import flash.utils.ByteArray;
   import §for use use§.§if package finally§;
   
   public class §while super return§ extends §get use var§
   {
      
      public static const §switch set try§:String = "$$$_DEFAULT_TEXTURE_$$$";
      
      public static var §catch static§:Number = 0.01;
      
      public static var §521423193802319393123423632234§:Number = 0.01;
      
      public static var §override function default§:Number = 0.01;
      
      public static var §5214233377233390123423632234§:Number = 0.01;
      
      public static var §5214235786235799123423632234§:int = 1;
      
      public static var §static function in§:Number = 0.001;
      
      public static var §override function var§:Number = 0.001;
      
      public static var §521423572370123423632234§:Number = 0.001;
      
      public static var §5214235179235192123423632234§:Number = 0.01;
      
      public var §override set case§:§use for native§;
      
      public var §set switch get§:Vector.<Occluder>;
      
      public var §521423139592313972123423632234§:Object = {};
      
      public function §while super return§(param1:ByteArray, param2:String, param3:Object, param4:§5214238897238910123423632234§, param5:§use for native§, param6:String)
      {
         super(1);
         this.§switch function with§(param1,param2,param3,param4,param5,param6);
      }
      
      private function §5214231169231182123423632234§(param1:ByteArray, param2:String) : Mesh
      {
         var _loc6_:int = 0;
         var _loc8_:Object3D = null;
         var _loc3_:String = null;
         param1.position = 0;
         var _loc4_:Parser3DS = new Parser3DS();
         _loc4_.parse(param1);
         var _loc5_:Vector.<Object3D> = _loc4_.objects;
         var _loc9_:int = int(_loc5_.length);
         var _loc7_:Mesh = null;
         while(_loc6_ < _loc9_)
         {
            _loc8_ = _loc5_[_loc6_];
            _loc3_ = String(_loc8_.name.toLowerCase());
            if(_loc3_.indexOf("occl") == 0)
            {
               this.§class finally final§(Mesh(_loc8_));
            }
            else if(param2 == _loc3_)
            {
               _loc7_ = Mesh(_loc8_);
            }
            _loc6_++;
         }
         return _loc7_ != null ? _loc7_ : Mesh(_loc5_[0]);
      }
      
      override public function §package super extends§() : void
      {
         var _loc2_:§if package finally§ = null;
         super.§package super extends§();
         for(var _loc1_ in this.§override set case§.data)
         {
            _loc2_ = this.§override set case§.data[_loc1_];
            trace("\t" + _loc1_,_loc2_.§5214237626237639123423632234§.bytesAvailable,_loc2_.§super const each§);
         }
      }
      
      private function §class finally final§(param1:Mesh) : void
      {
         param1.weldVertices(§521423193802319393123423632234§,§5214235786235799123423632234§);
         param1.weldFaces(§override function default§,§5214235786235799123423632234§,§5214233377233390123423632234§);
         var _loc2_:Occluder = new Occluder();
         _loc2_.createForm(param1,true);
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.z = param1.z;
         _loc2_.rotationX = param1.rotationX;
         _loc2_.rotationY = param1.rotationY;
         _loc2_.rotationZ = param1.rotationZ;
         if(this.§set switch get§ == null)
         {
            this.§set switch get§ = new Vector.<Occluder>();
         }
         this.§set switch get§[§set switch get§.length] = _loc2_;
      }
      
      private function §switch function with§(param1:ByteArray, param2:String, param3:Object, param4:§5214238897238910123423632234§, param5:§use for native§, param6:String) : void
      {
         var _loc7_:String = null;
         var _loc10_:§if package finally§ = null;
         var _loc11_:Mesh = this.§5214231169231182123423632234§(param1,param2);
         this.§5214235654235667123423632234§(_loc11_);
         this.§52142367123684123423632234§ = _loc11_;
         var _loc8_:String = this.§5214236865236878123423632234§(_loc11_);
         if(_loc8_ == null && param3 == null)
         {
            throw new Error("PropMesh: no textures found");
         }
         if(param3 == null)
         {
            param3 = {};
         }
         if(_loc8_ != null)
         {
            param3["$$$_DEFAULT_TEXTURE_$$$"] = _loc8_;
         }
         this.§override set case§ = new §use for native§();
         for(var _loc9_ in param3)
         {
            _loc7_ = String(param3[_loc9_]);
            if(param5 == null)
            {
               _loc10_ = new §if package finally§(param4.§throw function catch§(_loc7_),null);
            }
            else
            {
               _loc10_ = param5.§throw function catch§(_loc7_);
            }
            this.§override set case§.§get function in§(_loc9_,_loc10_);
            §521423139592313972123423632234§[_loc9_] = param6 + "#" + _loc7_;
         }
      }
      
      private function §5214235654235667123423632234§(param1:Mesh) : void
      {
         param1.weldVertices(§static function in§,§override function var§);
         param1.weldFaces(§521423572370123423632234§,§override function var§,§5214235179235192123423632234§);
         param1.threshold = §catch static§;
      }
      
      private function §5214236865236878123423632234§(param1:Mesh) : String
      {
         var _loc3_:TextureMaterial = null;
         var _loc2_:Face = param1.faceList;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_.material as TextureMaterial;
            if(_loc3_ != null)
            {
               return _loc3_.diffuseMapURL.toLowerCase();
            }
            _loc2_ = _loc2_.next;
         }
         return null;
      }
   }
}

