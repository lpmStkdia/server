package §5214234413234426123423632234§
{
   import §521423100722310085123423632234§.§null finally class§;
   import §521423101572310170123423632234§.§521423124172312430123423632234§;
   import §521423101572310170123423632234§.§5214237009237022123423632234§;
   import §521423138512313864123423632234§.§if with§;
   import §521423143792314392123423632234§.§521423120902312103123423632234§;
   import §521423190922319105123423632234§.§521423104602310473123423632234§;
   import §52142340223415123423632234§.§521423179152317928123423632234§;
   import §52142340223415123423632234§.§while const case§;
   import §5214235292235305123423632234§.§case while§;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Light3D;
   import alternativa.engine3d.core.Object3DContainer;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.View;
   import alternativa.engine3d.core.Wrapper;
   import alternativa.engine3d.lights.OmniLight;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.BSP;
   import alternativa.engine3d.objects.Decal;
   import alternativa.engine3d.objects.Mesh;
   import §continue switch case§.§dynamic const break§;
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Vector3D;
   import flash.utils.Timer;
   import flash.utils.setTimeout;
   import §implements use var§.§finally for implements§;
   import §static catch do§.§static set in§;
   import §true catch false§.§52142358423597123423632234§;
   
   public class §5214237251237264123423632234§ extends §null finally class§ implements §while const case§
   {
      
      public static var §521423164582316471123423632234§:§static set in§;
      
      public static var §521423167652316778123423632234§:§521423120902312103123423632234§;
      
      private static const §function package while§:Number = -1;
      
      private static const §continue var super§:Number = -150;
      
      private static const §52142320323216123423632234§:int = 11;
      
      private static const §521423133292313342123423632234§:Number = -135;
      
      private static const §5214235797235810123423632234§:Number = -730;
      
      private static const §5214238329238342123423632234§:Number = 0.7;
      
      private static const §if const continue§:Number = 13;
      
      private static const §521423189762318989123423632234§:Number = 2.5;
      
      private static const §521423191652319178123423632234§:Vector3D = new Vector3D(0,0,-1);
      
      private static const §521423105982310611123423632234§:RegExp = /light_([A-Za-z]*)_[0-9]/;
      
      private var §with catch const§:§if with§;
      
      private var §extends set with§:Shape;
      
      private var §each use package§:Object3DContainer;
      
      private var §finally package super§:Object3DContainer;
      
      private var §for catch native§:Object3DContainer;
      
      private var §const catch continue§:Camera3D;
      
      private var §false set final§:§while package extends§;
      
      private var §5214238518238531123423632234§:§521423104602310473123423632234§;
      
      private var §override function include§:int = 0;
      
      private var §get finally implements§:Timer;
      
      private var §5214238057238070123423632234§:Mesh;
      
      private var §class switch override§:§case while§;
      
      private var §native use const§:§case while§;
      
      private var §else super final§:int = 0;
      
      private var §continue finally null§:BitmapData;
      
      public function §5214237251237264123423632234§(param1:§case while§)
      {
         super(§521423164582316471123423632234§.§function const finally§("HEADER_YOUR_TANK"),"HEADER_YOUR_TANK");
         this.§5214239122239135123423632234§();
         this.§5214234732234745123423632234§();
         this.§class switch super§();
         var _loc2_:§case while§ = param1;
         if(_loc2_.§false catch override§.§5214236765236778123423632234§ && (_loc3_.§null set case§ & 1) == 0)
         {
            param1.§extends finally import§(new §521423179152317928123423632234§(this));
         }
         else
         {
            this.§5214235251235264123423632234§(param1);
         }
         this.resize(400,300);
         addEventListener("addedToStage",this.§const use use§);
         §521423167652316778123423632234§.addEventListener("SettingsServiceEvent.SETTINGS_CHANGED",this.§try set function§);
      }
      
      private function §521423162822316295123423632234§(param1:Number, param2:Number) : void
      {
         this.§const catch continue§.view.width = (param1 - 11 * 2 - 3) * §dynamic const break§.§5214231303231316123423632234§;
         this.§const catch continue§.view.height = (param2 - 11 * 2 - 3) * §dynamic const break§.§5214231303231316123423632234§;
         if(!§52142358423597123423632234§.§5214232292232305123423632234§ && §dynamic const break§.§5214231303231316123423632234§ == 2)
         {
            this.§const catch continue§.view.width /= 2;
            this.§const catch continue§.view.height /= 2;
         }
         this.§const catch continue§.view.x = 11 + 2;
         this.§const catch continue§.view.y = 11 + 2;
      }
      
      private function §import package function§() : void
      {
         if(this.§override function include§ < 3)
         {
            ++this.§override function include§;
         }
         if(this.§override function include§ == 3)
         {
            if(this.§5214238057238070123423632234§ != null && Boolean(this.§5214238518238531123423632234§.contains(this.§5214238057238070123423632234§)))
            {
               this.§5214238518238531123423632234§.removeChild(this.§5214238057238070123423632234§);
            }
            this.§5214238057238070123423632234§ = this.§null while import§(Mesh(this.§class switch override§.§521423188262318839123423632234§[0]),§521423191652319178123423632234§,2.5,13,0.7);
            this.§5214238518238531123423632234§.addChildAt(this.§5214238057238070123423632234§,0);
            if(!§52142358423597123423632234§.§5214232292232305123423632234§)
            {
               this.§const catch continue§.render();
            }
         }
      }
      
      private function §null while import§(param1:Mesh, param2:Vector3D, param3:Number, param4:int, param5:Number, param6:uint = 0) : Mesh
      {
         var _loc21_:Face = null;
         var _loc14_:Wrapper = null;
         var _loc9_:Vertex = null;
         var _loc25_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc15_:Decal = null;
         param2 = param2.clone();
         param2.normalize();
         var _loc24_:Number = 1e+22;
         var _loc22_:Number = 1e+22;
         var _loc13_:Number = -1e+22;
         var _loc12_:Number = -1e+22;
         var _loc19_:Shape = new Shape();
         _loc21_ = param1.faceList;
         while(_loc21_ != null)
         {
            _loc14_ = _loc21_.wrapper;
            while(_loc14_ != null)
            {
               _loc9_ = _loc14_.vertex;
               _loc25_ = -_loc9_.z / param2.z;
               _loc7_ = _loc9_.x + param2.x * _loc25_;
               _loc8_ = _loc9_.y + param2.y * _loc25_;
               if(_loc7_ < _loc24_)
               {
                  _loc24_ = _loc7_;
               }
               if(_loc7_ > _loc13_)
               {
                  _loc13_ = _loc7_;
               }
               if(_loc8_ < _loc22_)
               {
                  _loc22_ = _loc8_;
               }
               if(_loc8_ > _loc12_)
               {
                  _loc12_ = _loc8_;
               }
               if(_loc14_ == _loc21_.wrapper)
               {
                  _loc19_.graphics.beginFill(param6);
                  _loc19_.graphics.moveTo(_loc7_,_loc8_);
               }
               else
               {
                  _loc19_.graphics.lineTo(_loc7_,_loc8_);
               }
               _loc14_ = _loc14_.next;
            }
            _loc21_ = _loc21_.next;
         }
         _loc24_ = (Math.floor(_loc24_ / param3) - param4) * param3;
         _loc22_ = (Math.floor(_loc22_ / param3) - param4) * param3;
         _loc13_ = (Math.ceil(_loc13_ / param3) + param4) * param3;
         _loc12_ = (Math.ceil(_loc12_ / param3) + param4) * param3;
         var _loc10_:BitmapData = new BitmapData((_loc13_ - _loc24_) / param3,(_loc12_ - _loc22_) / param3,true,0);
         if(this.§continue finally null§ != null)
         {
            this.§continue finally null§.dispose();
         }
         this.§continue finally null§ = _loc10_;
         _loc10_.draw(_loc19_,new Matrix(1 / param3,0,0,-1 / param3,-_loc24_ / param3,_loc12_ / param3));
         _loc10_.applyFilter(_loc10_,_loc10_.rect,§521423124172312430123423632234§.§var catch default§,new BlurFilter(param4,param4,2));
         var _loc23_:TextureMaterial = new TextureMaterial(_loc10_,false,true,0,param3);
         var _loc11_:Mesh = new Mesh();
         var _loc16_:Vertex = _loc11_.addVertex(_loc24_,_loc12_,0,0,0);
         var _loc17_:Vertex = _loc11_.addVertex(_loc24_,_loc22_,0,0,1);
         var _loc18_:Vertex = _loc11_.addVertex(_loc13_,_loc22_,0,1,1);
         var _loc20_:Vertex = _loc11_.addVertex(_loc13_,_loc12_,0,1,0);
         _loc11_.addQuadFace(_loc16_,_loc17_,_loc18_,_loc20_,_loc23_);
         _loc11_.calculateFacesNormals();
         _loc11_.calculateBounds();
         _loc11_.alpha = param5;
         if(§52142358423597123423632234§.§5214232292232305123423632234§)
         {
            _loc15_ = new Decal();
            _loc15_.createGeometry(_loc11_,true);
            _loc15_.x = _loc11_.x;
            _loc15_.y = _loc11_.y;
            _loc15_.z = _loc11_.z;
            _loc15_.alpha = _loc11_.alpha;
            return _loc15_;
         }
         return _loc11_;
      }
      
      public function §5214234464234477123423632234§(param1:§5214237009237022123423632234§) : void
      {
         this.§5214235251235264123423632234§(param1 as §case while§);
      }
      
      private function §throw finally finally§() : void
      {
         if(§52142358423597123423632234§.§5214232292232305123423632234§)
         {
            this.§extends set with§.x = this.§const catch continue§.view.x;
            this.§extends set with§.y = this.§const catch continue§.view.y;
            this.§extends set with§.graphics.clear();
            this.§extends set with§.graphics.beginFill(16711680);
            this.§extends set with§.graphics.drawRect(0,0,this.§const catch continue§.view.width / §dynamic const break§.§5214231303231316123423632234§,this.§const catch continue§.view.height / §dynamic const break§.§5214231303231316123423632234§);
            this.§extends set with§.graphics.endFill();
         }
      }
      
      private function §5214234732234745123423632234§() : void
      {
         this.§with catch const§ = new §if with§(0,0,16744512 - 1);
         addChild(this.§with catch const§);
         this.§with catch const§.mouseEnabled = true;
      }
      
      public function §include super use§(param1:BitmapData) : void
      {
         this.§5214238518238531123423632234§.§include super use§(param1);
         this.§import package function§();
      }
      
      public function animColorLT(param1:§finally for implements§) : void
      {
         this.§5214238518238531123423632234§.§5214237380237393123423632234§(param1);
         this.§import package function§();
      }
      
      private function §521423179822317995123423632234§() : void
      {
         this.§const catch continue§.farClipping = 25000;
         this.§const catch continue§.nearClipping = 50;
         this.§const catch continue§.deferredLighting = true;
         this.§const catch continue§.z = -1100;
         this.§for catch native§.rotationX = -2.0943951023931953;
         this.§5214238518238531123423632234§.z += 10;
      }
      
      private function §class switch super§() : void
      {
         this.§5214238518238531123423632234§ = new §521423104602310473123423632234§();
         this.§each use package§.addChild(this.§5214238518238531123423632234§);
         this.§5214238518238531123423632234§.matrix.appendTranslation(-17,0,0);
      }
      
      private function §const use use§(param1:Event) : void
      {
         removeEventListener("addedToStage",this.§const use use§);
         addEventListener("enterFrame",this.§package set get§,false,-1);
         this.§while use use§();
         if(§52142358423597123423632234§.§5214232292232305123423632234§)
         {
            this.§get finally implements§ = new Timer(350,1);
            this.§get finally implements§.addEventListener("timerComplete",this.§5214235188235201123423632234§);
            this.§get finally implements§.start();
         }
      }
      
      private function §5214235251235264123423632234§(param1:§case while§) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Mesh = null;
         var _loc5_:Array = null;
         var _loc3_:Light3D = null;
         var _loc2_:TextureMaterial = null;
         var _loc8_:BSP = null;
         var _loc4_:int = int(param1.§521423188262318839123423632234§.length);
         while(_loc6_ < _loc4_)
         {
            _loc7_ = param1.§521423188262318839123423632234§[_loc6_] as Mesh;
            if(_loc7_ != null)
            {
               _loc5_ = §521423105982310611123423632234§.exec(_loc7_.name);
               if(_loc5_ != null)
               {
                  switch(_loc5_[1])
                  {
                     case "A":
                        _loc3_ = new OmniLight(16763904,100,600);
                        _loc3_.intensity = 0.6;
                        break;
                     case "B":
                        _loc3_ = new OmniLight(16750848,100,1100);
                        _loc3_.intensity = 0.55;
                        break;
                     case "C":
                        _loc3_ = new OmniLight(14811135,100,1100);
                        _loc3_.intensity = 0.5;
                        break;
                     case "Rd":
                        _loc3_ = new OmniLight(16727074,200,500);
                        _loc3_.intensity = 0.8;
                        break;
                     case "Gr":
                        _loc3_ = new OmniLight(6356736,200,500);
                        _loc3_.intensity = 0.8;
                        break;
                     case "Bl":
                        _loc3_ = new OmniLight(34047,200,500);
                        _loc3_.intensity = 0.8;
                        break;
                     case "Yl":
                     case "Ye":
                        _loc3_ = new OmniLight(16771584,200,500);
                        _loc3_.intensity = 0.8;
                        break;
                     default:
                        _loc3_ = new OmniLight(0,0,0);
                  }
                  _loc3_.x = _loc7_.x;
                  _loc3_.y = _loc7_.y;
                  _loc3_.z = _loc7_.z;
                  _loc3_.calculateBounds();
                  this.§finally package super§.addChild(_loc3_);
               }
               else
               {
                  _loc2_ = TextureMaterial(_loc7_.faceList.material);
                  _loc2_.texture = param1.§521423187272318740123423632234§(_loc6_);
                  _loc7_.setMaterialToAllFaces(_loc2_);
                  _loc8_ = new BSP();
                  _loc8_.createTree(_loc7_);
                  _loc8_.name = _loc7_.name;
                  _loc8_.matrix = _loc7_.matrix;
                  this.§finally package super§.addChild(_loc8_);
                  switch(_loc7_.name)
                  {
                     case "skybox":
                        _loc8_.useLight = false;
                        this.§5214232406232419123423632234§();
                        break;
                     case "girland":
                     case "ball":
                        _loc8_.alpha = 0.99;
                        _loc8_.useLight = false;
                        break;
                     case "pine":
                        this.§finally package super§.removeChild(_loc8_);
                        setTimeout(this.§finally package super§.addChild,0,_loc8_);
                        break;
                     case "trees":
                        _loc8_.alpha = 0.99;
                        break;
                     case "lob":
                        _loc8_.useLight = false;
                        _loc8_.depthMapAlphaThreshold = 2;
                  }
                  this.§finally package super§.removeChild(_loc8_);
                  setTimeout(this.§finally package super§.addChild,0,_loc8_);
               }
            }
            _loc6_++;
         }
      }
      
      private function §package set get§(param1:Event) : void
      {
         this.§false set final§.§function switch package§();
         try
         {
            this.§const catch continue§.render();
         }
         catch(err:Error)
         {
         }
      }
      
      public function resize(param1:Number, param2:Number) : void
      {
         this.width = param1;
         this.height = param2;
         this.§finally var finally§(param1,param2);
         this.§521423162822316295123423632234§(param1,param2);
         this.§throw finally finally§();
         if(!§52142358423597123423632234§.§5214232292232305123423632234§)
         {
            this.§const catch continue§.render();
         }
      }
      
      private function §5214232406232419123423632234§() : void
      {
         this.§const catch continue§.farClipping = 50000;
         this.§const catch continue§.nearClipping = 50;
         this.§const catch continue§.deferredLighting = true;
         this.§const catch continue§.z = -1000;
         this.§for catch native§.rotationX = -2.0943951023931953;
         this.§5214238518238531123423632234§.z += 8;
         addEventListener("click",this.§521423116222311635123423632234§);
      }
      
      public function §static for catch§(param1:§case while§) : void
      {
         this.§native use const§ = param1;
         this.§5214238518238531123423632234§.§static for catch§(this.§native use const§);
         this.§import package function§();
      }
      
      public function §false use var§() : void
      {
         §521423167652316778123423632234§.removeEventListener("SettingsServiceEvent.SETTINGS_CHANGED",this.§try set function§);
         if(this.§const catch continue§.deferredLighting)
         {
            removeEventListener("click",this.§521423116222311635123423632234§);
         }
         removeEventListener("enterFrame",this.§package set get§);
         if(this.§get finally implements§ != null)
         {
            this.§get finally implements§.stop();
            this.§get finally implements§.removeEventListener("timerComplete",this.§5214235188235201123423632234§);
            this.§get finally implements§ = null;
         }
         this.§with catch const§ = null;
         this.§each use package§ = null;
         this.§for catch native§ = null;
         this.§const catch continue§.view.clear();
         this.§const catch continue§ = null;
         this.§5214238518238531123423632234§.§false use var§();
         this.§5214238518238531123423632234§ = null;
         this.§5214238057238070123423632234§ = null;
         this.§class switch override§ = null;
         this.§native use const§ = null;
         if(this.§continue finally null§ != null)
         {
            this.§continue finally null§.dispose();
            this.§continue finally null§ = null;
         }
      }
      
      private function §5214239122239135123423632234§() : void
      {
         this.§each use package§ = new Object3DContainer();
         this.§const catch continue§ = new Camera3D();
         this.§const catch continue§.view = new View(100,100,§52142358423597123423632234§.§try const const§);
         this.§const catch continue§.view.hideLogo();
         addChild(this.§const catch continue§.view);
         this.§for catch native§ = new Object3DContainer();
         this.§each use package§.addChild(this.§for catch native§);
         this.§finally package super§ = new Object3DContainer();
         this.§each use package§.addChild(this.§finally package super§);
         this.§for catch native§.addChild(this.§const catch continue§);
         this.§for catch native§.rotationX = -2.356194490192345;
         this.§const catch continue§.z = -730;
         this.§for catch native§.rotationZ = -2.6179938779914944;
         if(§52142358423597123423632234§.§5214232292232305123423632234§)
         {
            this.§extends set with§ = new Shape();
            this.§extends set with§.blendMode = "erase";
         }
         §const catch continue§.alternatePaintBlend = §521423167652316778123423632234§.§with super else§;
      }
      
      public function §521423149222314935123423632234§(param1:§case while§) : void
      {
         this.§class switch override§ = param1;
         this.§5214238518238531123423632234§.§521423149222314935123423632234§(this.§class switch override§);
         this.§import package function§();
      }
      
      private function §5214235188235201123423632234§(param1:TimerEvent) : void
      {
         if(this.§finally package super§.numChildren == 0)
         {
            this.§get finally implements§.start();
            return;
         }
         addChild(this.§extends set with§);
         this.§get finally implements§.removeEventListener("timerComplete",this.§5214235188235201123423632234§);
         this.§get finally implements§ = null;
      }
      
      private function §521423116222311635123423632234§(param1:MouseEvent) : void
      {
      }
      
      public function §try set function§(param1:Event) : void
      {
         this.§const catch continue§.alternatePaintBlend = §521423167652316778123423632234§.§with super else§;
      }
      
      private function §while use use§() : void
      {
         this.§false set final§ = new §while package extends§();
         var _loc4_:§521423140292314042123423632234§ = new §521423140292314042123423632234§();
         var _loc5_:§final const switch§ = new §final const switch§(this.§false set final§,stage,_loc4_,this.§const catch continue§,this.§for catch native§);
         var _loc3_:§false package false§ = new §false package false§(this.§false set final§,this.§with catch const§,_loc4_,this.§for catch native§);
         var _loc1_:§include else§ = new §include else§(this.§false set final§,this.§with catch const§);
         var _loc2_:§5214236733236746123423632234§ = new §5214236733236746123423632234§(this.§false set final§,this.§with catch const§,this.§for catch native§);
         this.§false set final§.§default catch else§(§false const throw§.§with super dynamic§,_loc3_,_loc5_);
         this.§false set final§.§default catch else§(§false const throw§.§with super dynamic§,_loc1_,_loc5_);
         this.§false set final§.§default catch else§(§false const throw§.§with super dynamic§,_loc2_,_loc5_);
         this.§false set final§.§default catch else§(§false const throw§.§521423998231011123423632234§,_loc5_,_loc3_);
         this.§false set final§.§default catch else§(§false const throw§.§switch const§,_loc3_,_loc1_);
         this.§false set final§.§default catch else§(§false const throw§.§for catch const§,_loc1_,_loc2_);
         this.§false set final§.§521423161172316130123423632234§(_loc1_);
      }
      
      private function §finally var finally§(param1:Number, param2:Number) : void
      {
         this.§with catch const§.width = param1 - 11 * 2;
         this.§with catch const§.height = param2 - 11 * 2;
         this.§with catch const§.x = 11;
         this.§with catch const§.y = 11;
      }
   }
}

