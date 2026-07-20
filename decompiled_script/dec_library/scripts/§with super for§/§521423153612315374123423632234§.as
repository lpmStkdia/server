package §with super for§
{
   import §521423101572310170123423632234§.§521423124172312430123423632234§;
   import §521423173412317354123423632234§.§521423168422316855123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import §5214234079234092123423632234§.§for package with§;
   import §5214235292235305123423632234§.§case while§;
   import §52142357923592123423632234§.§5214239083239096123423632234§;
   import §52142357923592123423632234§.§native for use§;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.lights.OmniLight;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.BSP;
   import alternativa.engine3d.objects.Mesh;
   import §break const get§.§5214236547236560123423632234§;
   import §do package throw§.§native function implements§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import §get package native§.§import switch include§;
   import §native finally while§.§if super class§;
   
   public class §521423153612315374123423632234§
   {
      
      public static var §521423145952314608123423632234§:§for package with§;
      
      public static var §finally package include§:§import switch include§;
      
      private static const §for set default§:Number = 1000;
      
      public static const §521423133182313331123423632234§:Number = 350;
      
      private static const §5214237490237503123423632234§:Number = 100;
      
      private static const §5214235752235765123423632234§:Number = 1.5;
      
      private var §521423104842310497123423632234§:BSP;
      
      private var §521423148882314901123423632234§:TextureMaterial;
      
      private var §521423189142318927123423632234§:TextureMaterial;
      
      private var §521423106852310698123423632234§:TextureMaterial;
      
      private var §continue function function§:TextureMaterial;
      
      private var §521423111942311207123423632234§:§include switch static§;
      
      private var §5214237873237886123423632234§:OmniLight;
      
      private var §throw const package§:§5214239083239096123423632234§;
      
      private var §52142335023363123423632234§:§5214239083239096123423632234§;
      
      private var §false var return§:§5214239083239096123423632234§;
      
      private var §continue switch set§:Boolean;
      
      public function §521423153612315374123423632234§(param1:String, param2:§native function implements§, param3:§521423168422316855123423632234§, param4:Boolean)
      {
         super();
         this.§521423104842310497123423632234§ = §5214237948237961123423632234§(param3.§521423104842310497123423632234§);
         this.§521423106852310698123423632234§ = §521423145952314608123423632234§.§return var var§(param3.§521423116422311655123423632234§.data);
         this.§521423189142318927123423632234§ = §521423145952314608123423632234§.§return var var§(param3.§return use final§.data);
         this.§continue function function§ = §521423145952314608123423632234§.§return var var§(param3.§521423135572313570123423632234§.data);
         var _loc5_:§native for use§ = §finally package include§.§final catch const§(§if super class§.§static super with§);
         this.§throw const package§ = _loc5_.§521423115832311596123423632234§(§5214236547236560123423632234§.§5214233099233112123423632234§);
         this.§52142335023363123423632234§ = _loc5_.§521423115832311596123423632234§(§5214236547236560123423632234§.§521423181842318197123423632234§);
         this.§false var return§ = _loc5_.§521423115832311596123423632234§(§5214236547236560123423632234§.§52142399972310010123423632234§);
         this.§continue switch set§ = param4;
         this.§static use switch§(param1,param3);
         this.§5214238234238247123423632234§(_loc5_);
         param2.§include catch break§(this.§521423111942311207123423632234§);
         param2.§include catch break§(this.§521423104842310497123423632234§);
      }
      
      private static function §set for throw§(param1:Number, param2:Number, param3:Number) : Number
      {
         return param1 + (param2 - param1) * param3;
      }
      
      private static function §final catch each§(param1:uint, param2:uint, param3:Number) : uint
      {
         var _loc8_:Number = (param1 >> 16 & 0xFF) / 255;
         var _loc12_:Number = (param1 >> 8 & 0xFF) / 255;
         var _loc9_:Number = (param1 & 0xFF) / 255;
         var _loc4_:Number = (param2 >> 16 & 0xFF) / 255;
         var _loc10_:Number = (param2 >> 8 & 0xFF) / 255;
         var _loc5_:Number = (param2 & 0xFF) / 255;
         var _loc6_:int = §set for throw§(_loc8_,_loc4_,param3) * 255;
         var _loc11_:int = §set for throw§(_loc12_,_loc10_,param3) * 255;
         var _loc7_:int = §set for throw§(_loc9_,_loc5_,param3) * 255;
         return _loc6_ << 16 | _loc11_ << 8 | _loc7_;
      }
      
      private static function §521423169682316981123423632234§(param1:BitmapData, param2:BitmapData) : Rectangle
      {
         var _loc3_:int = param2.height;
         var _loc4_:Number = (param1.height - _loc3_) / 2;
         return new Rectangle(_loc4_,_loc4_,_loc3_,_loc3_);
      }
      
      private static function §5214237948237961123423632234§(param1:§case while§) : BSP
      {
         var _loc3_:Mesh = Mesh(param1.§521423188262318839123423632234§[0]);
         var _loc2_:BSP = new BSP();
         _loc2_.createTree(_loc3_);
         return _loc2_;
      }
      
      private static function §else finally final§(param1:BitmapData, param2:BitmapData, param3:int) : Matrix
      {
         var _loc4_:int = param2.height;
         var _loc5_:Matrix = new Matrix();
         _loc5_.tx = (param1.height - _loc4_) / 2 - _loc4_ * param3;
         _loc5_.ty = (param1.height - _loc4_) / 2;
         return _loc5_;
      }
      
      private static function §5214231946231959123423632234§(param1:BitmapData, param2:BitmapData) : BitmapData
      {
         var _loc3_:BitmapData = param1.clone();
         _loc3_.copyChannel(param2,param2.rect,§521423124172312430123423632234§.§var catch default§,8,8);
         return _loc3_;
      }
      
      private static function §521423126912312704123423632234§(param1:BitmapData) : TextureMaterial
      {
         var _loc2_:TextureMaterial = §521423145952314608123423632234§.§return var var§(param1,false);
         _loc2_.resolution = 1000 / param1.width;
         return _loc2_;
      }
      
      public function §var while static§(param1:§native function implements§, param2:§do function else§) : void
      {
         this.§521423104842310497123423632234§.x = param2.x;
         this.§521423104842310497123423632234§.y = param2.y;
         this.§521423104842310497123423632234§.z = param2.§521423155722315585123423632234§;
         param1.§521423117612311774123423632234§(this.§521423104842310497123423632234§);
         this.§521423111942311207123423632234§.x = param2.x;
         this.§521423111942311207123423632234§.y = param2.y;
         this.§521423111942311207123423632234§.z = param2.§521423155722315585123423632234§ + 350;
         param1.§521423117612311774123423632234§(this.§521423111942311207123423632234§);
         this.§5214237873237886123423632234§.x = param2.x;
         this.§5214237873237886123423632234§.y = param2.y;
         this.§5214237873237886123423632234§.z = param2.§521423155722315585123423632234§ + 350;
         param1.§521423117612311774123423632234§(this.§5214237873237886123423632234§);
      }
      
      public function §function const package§(param1:Number, param2:Camera3D) : void
      {
         this.§521423111942311207123423632234§.§521423174852317498123423632234§(param1);
         this.§521423111942311207123423632234§.§5214234150234163123423632234§(param2);
         this.§521423164502316463123423632234§(param1 / 100);
      }
      
      public function §var package function§() : void
      {
         this.§521423110912311104123423632234§(this.§continue function function§);
         this.§5214239788239801123423632234§(this.§false var return§);
      }
      
      private function §static use switch§(param1:String, param2:§521423168422316855123423632234§) : void
      {
         var _loc13_:TextureMaterial = null;
         var _loc5_:TextureMaterial = null;
         var _loc10_:BitmapData = null;
         var _loc3_:BitmapData = null;
         var _loc11_:BitmapData = param2.§521423193412319354123423632234§.data.clone();
         var _loc15_:BitmapData = param2.§5214237968237981123423632234§.data.clone();
         var _loc6_:BitmapData = param2.§521423179682317981123423632234§.data.clone();
         var _loc16_:BitmapData = param2.§521423158792315892123423632234§.data;
         var _loc12_:int = param1.charCodeAt(0) - "A".charCodeAt(0);
         var _loc9_:Rectangle = §521423169682316981123423632234§(_loc11_,_loc16_);
         var _loc7_:Matrix = §else finally final§(_loc11_,_loc16_,_loc12_);
         _loc11_.draw(_loc16_,_loc7_,null,"normal",_loc9_,true);
         _loc15_.draw(_loc16_,_loc7_,null,"normal",_loc9_,true);
         _loc6_.draw(_loc16_,_loc7_,null,"normal",_loc9_,true);
         var _loc8_:TextureMaterial = §521423126912312704123423632234§(_loc11_);
         var _loc14_:TextureMaterial = §521423126912312704123423632234§(_loc15_);
         var _loc4_:TextureMaterial = §521423126912312704123423632234§(_loc6_);
         if(!§continue switch set§)
         {
            _loc10_ = §5214231946231959123423632234§(_loc15_,_loc11_);
            _loc3_ = §5214231946231959123423632234§(_loc6_,_loc11_);
            _loc13_ = §521423126912312704123423632234§(_loc10_);
            _loc5_ = §521423126912312704123423632234§(_loc3_);
         }
         else
         {
            _loc13_ = _loc14_;
            _loc5_ = _loc4_;
         }
         this.§521423111942311207123423632234§ = §continue switch set§ ? new §5214236725236738123423632234§(1000,1000,_loc8_,_loc13_,_loc14_,_loc5_,_loc4_) : new §include switch static§(1000,1000,_loc8_,_loc13_,_loc14_,_loc5_,_loc4_);
      }
      
      private function §521423110912311104123423632234§(param1:TextureMaterial) : void
      {
         if(this.§521423148882314901123423632234§ != param1)
         {
            this.§521423148882314901123423632234§ = param1;
            this.§521423104842310497123423632234§.setMaterialToAllFaces(param1);
         }
      }
      
      private function §5214239788239801123423632234§(param1:§5214239083239096123423632234§) : void
      {
         this.§5214237873237886123423632234§.color = param1.§521423115122311525123423632234§();
         this.§5214237873237886123423632234§.intensity = param1.§521423127162312729123423632234§();
      }
      
      public function §throw for continue§() : void
      {
         this.§521423110912311104123423632234§(this.§521423189142318927123423632234§);
         this.§5214239788239801123423632234§(this.§throw const package§);
      }
      
      private function §521423164502316463123423632234§(param1:Number) : void
      {
         var _loc2_:uint = param1 < 0 ? this.§throw const package§.§521423115122311525123423632234§() : this.§52142335023363123423632234§.§521423115122311525123423632234§();
         var _loc4_:Number = param1 < 0 ? this.§throw const package§.§521423127162312729123423632234§() : this.§52142335023363123423632234§.§521423127162312729123423632234§();
         var _loc3_:Number = param1 > 0 ? param1 : -param1;
         this.§5214237873237886123423632234§.color = §final catch each§(this.§false var return§.§521423115122311525123423632234§(),_loc2_,Math.pow(_loc3_,1.5));
         this.§5214237873237886123423632234§.intensity = §set for throw§(this.§false var return§.§521423127162312729123423632234§(),_loc4_,Math.pow(_loc3_,1.5));
      }
      
      public function §if function false§() : void
      {
         this.§521423110912311104123423632234§(this.§521423106852310698123423632234§);
         this.§5214239788239801123423632234§(this.§52142335023363123423632234§);
      }
      
      private function §5214238234238247123423632234§(param1:§native for use§) : void
      {
         this.§5214237873237886123423632234§ = new OmniLight(0,param1.§catch set final§(),param1.§5214238478238491123423632234§());
         this.§5214239788239801123423632234§(this.§false var return§);
      }
   }
}

