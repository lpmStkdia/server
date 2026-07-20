package §5214235292235305123423632234§
{
   import §521423101572310170123423632234§.§521423134722313485123423632234§;
   import §521423101572310170123423632234§.§5214237009237022123423632234§;
   import §521423101572310170123423632234§.§default function return§;
   import §521423101572310170123423632234§.§package switch get§;
   import §521423101572310170123423632234§.§set switch each§;
   import §5214231835231848123423632234§.§default var do§;
   import §5214237436237449123423632234§.§5214237633237646123423632234§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.loaders.Parser3DS;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import §class function true§.§5214231297231310123423632234§;
   import §dynamic function include§.§521423165942316607123423632234§;
   import §dynamic function include§.§5214233295233308123423632234§;
   import flash.display.BitmapData;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.Capabilities;
   import flash.utils.ByteArray;
   import flash.utils.setTimeout;
   import §for use use§.§if package finally§;
   
   public class §case while§ extends §5214237009237022123423632234§
   {
      
      public static var §package var import§:§5214237633237646123423632234§;
      
      public static const §super super finally§:int = 17;
      
      private static const §native use super§:int = 1;
      
      private static const §521423172312317244123423632234§:int = 2;
      
      private static const §false while native§:int = 3;
      
      private static const §521423189802318993123423632234§:int = 4;
      
      protected static const §5214238996239009123423632234§:int = 4;
      
      protected static const §5214237048237061123423632234§:int = 8;
      
      private static const §5214232765232778123423632234§:String = "images.xml";
      
      private static const §521423112672311280123423632234§:String = "object.3ds";
      
      public var §override set case§:Object;
      
      public var §521423188262318839123423632234§:Vector.<Object3D>;
      
      public var §521423104522310465123423632234§:Vector.<Object3D>;
      
      private var §final set true§:§set switch each§;
      
      private var §try finally dynamic§:§521423165942316607123423632234§;
      
      private var §try switch with§:ResourceData = new ResourceData();
      
      private var §5214232515232528123423632234§:ByteArray;
      
      private var §get use const§:int = -1;
      
      public function §case while§(param1:§package switch get§)
      {
         super(param1);
      }
      
      private function §5214238729238742123423632234§(param1:Event) : void
      {
         this.§override set case§ = this.§try switch with§.batchConstructor.textures;
         this.§5214239551239564123423632234§(true);
      }
      
      private function §break super catch§() : void
      {
         if(this.§final set true§ != null)
         {
            this.§final set true§.removeEventListener("open",this.§for var switch§);
            this.§final set true§.removeEventListener("complete",this.§return var break§);
            this.§final set true§.removeEventListener("ioError",this.§5214238374238387123423632234§);
            this.§final set true§.removeEventListener("securityError",this.§5214238374238387123423632234§);
            this.§final set true§ = null;
         }
      }
      
      private function §return var break§(param1:Event) : void
      {
         var _loc4_:XML = XML(this.§final set true§.data);
         this.§break super catch§();
         if(_loc4_.name() != "images")
         {
            var _loc6_:§case while§;
            throw new Error("Invalid map.xml contents. ResourceId=" + (_loc6_ = this).§false catch override§.id);
         }
         var _loc5_:Object = {};
         var _loc3_:int = 0;
         for each(var _loc2_ in _loc4_.image)
         {
            _loc3_++;
            _loc5_[_loc2_.@name] = new §5214233295233308123423632234§(_loc2_.attribute("new-name"),_loc2_.@alpha);
         }
         if(_loc3_ > 0)
         {
            this.§try finally dynamic§ = new §521423165942316607123423632234§(_loc5_);
            this.§try finally dynamic§.addEventListener("open",this.§5214235120235133123423632234§);
            this.§try finally dynamic§.addEventListener("complete",this.§case use finally§);
            this.§try finally dynamic§.addEventListener("loaderError",this.§var const null§);
            this.§try finally dynamic§.§null use set§(§521423128472312860123423632234§);
            this.§get use const§ = 3;
            §5214231431231444123423632234§();
         }
         else
         {
            this.§521423113322311345123423632234§();
         }
      }
      
      private function §5214235120235133123423632234§(param1:Event) : void
      {
         §include use catch§();
      }
      
      private function §5214238374238387123423632234§(param1:ErrorEvent) : void
      {
         §5214237869237882123423632234§.§in finally return§(this,param1.text);
      }
      
      private function §var const null§(param1:§5214231297231310123423632234§) : void
      {
         §switch var while§(4);
      }
      
      override public function §52142316923182123423632234§(param1:§default function return§) : void
      {
         var _loc5_:int = 0;
         var _loc2_:ImageData = null;
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeInt(this.§try switch with§.modelData.length);
         _loc3_.writeBytes(this.§try switch with§.modelData);
         var _loc4_:uint = this.§try switch with§.imageData.length;
         _loc3_.writeInt(_loc4_);
         while(_loc5_ < _loc4_)
         {
            _loc2_ = this.§try switch with§.imageData[_loc5_];
            _loc3_.writeUTF(_loc2_.name);
            _loc3_.writeInt(_loc2_.data.§5214237626237639123423632234§.length);
            _loc3_.writeBytes(_loc2_.data.§5214237626237639123423632234§);
            if(_loc2_.data.§super const each§ == null)
            {
               _loc3_.writeInt(0);
            }
            else
            {
               _loc3_.writeInt(_loc2_.data.§super const each§.length);
               _loc3_.writeBytes(_loc2_.data.§super const each§);
            }
            _loc5_++;
         }
         this.§try switch with§ = null;
         param1.§set use class§(this,_loc3_);
      }
      
      private function §for var switch§(param1:Event) : void
      {
         §include use catch§();
      }
      
      private function §5214232908232921123423632234§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:Mesh = null;
         var _loc1_:Parser3DS = new Parser3DS();
         _loc1_.parse(this.§try switch with§.modelData);
         this.§521423188262318839123423632234§ = _loc1_.objects;
         this.§521423104522310465123423632234§ = _loc1_.parents;
         while(_loc2_ < this.§521423188262318839123423632234§.length)
         {
            _loc3_ = this.§521423188262318839123423632234§[_loc2_] as Mesh;
            if(_loc3_ != null)
            {
               this.§5214235654235667123423632234§(_loc3_);
            }
            _loc2_++;
         }
         if(this.§try switch with§.imageData.length > 0)
         {
            this.§try switch with§.batchConstructor.addEventListener("complete",this.§5214238729238742123423632234§);
            this.§try switch with§.batchConstructor.run(4,this.§try switch with§.imageData);
         }
         else
         {
            this.§5214239551239564123423632234§(false);
         }
      }
      
      private function §case use finally§(param1:Event) : void
      {
         var _loc2_:Object = this.§try finally dynamic§.§override set case§.data;
         for(var _loc3_ in _loc2_)
         {
            this.§try switch with§.imageData.push(new ImageData(_loc3_,this.§try finally dynamic§.§override set case§.§throw function catch§(_loc3_)));
         }
         this.§521423146442314657123423632234§();
         this.§521423113322311345123423632234§();
      }
      
      private function §include for super§(param1:Event) : void
      {
         this.§try switch with§.modelData = this.§final set true§.data;
         this.§5214232515232528123423632234§ = this.§try switch with§.modelData;
         this.§class switch with§();
         this.§5214232908232921123423632234§();
      }
      
      override public function §override catch get§() : void
      {
         switch(this.§get use const§ - 2)
         {
            case 0:
               this.§final set true§.close();
               this.§break super catch§();
               break;
            case 1:
               this.§try finally dynamic§.§override catch get§();
               break;
            case 2:
               this.§final set true§.close();
         }
         this.§override set case§ = null;
         this.§try finally dynamic§ = null;
         this.§final set true§ = null;
      }
      
      public function §521423186642318677123423632234§(param1:RegExp) : Vector.<Object3D>
      {
         var _loc2_:* = undefined;
         var _loc4_:int = 0;
         var _loc5_:Object3D = null;
         var _loc3_:int = int(this.§521423188262318839123423632234§.length);
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§521423188262318839123423632234§[_loc4_];
            if(_loc5_.name != null && _loc5_.name.match(param1) != null)
            {
               if(_loc2_ == null)
               {
                  _loc2_ = new Vector.<Object3D>();
               }
               _loc2_[_loc2_.length] = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      private function §catch set class§(param1:Event) : void
      {
         §include use catch§();
      }
      
      private function §521423146442314657123423632234§() : void
      {
         if(this.§try finally dynamic§ != null)
         {
            this.§try finally dynamic§.removeEventListener("open",this.§5214235120235133123423632234§);
            this.§try finally dynamic§.removeEventListener("complete",this.§case use finally§);
            this.§try finally dynamic§.removeEventListener("loaderError",this.§var const null§);
            this.§try finally dynamic§ = null;
         }
      }
      
      override public function §null use set§(param1:String, param2:§521423134722313485123423632234§) : void
      {
         super.§null use set§(param1,param2);
         this.§var set get§();
      }
      
      override public function §521423172812317294123423632234§(param1:ByteArray, param2:§521423134722313485123423632234§) : Boolean
      {
         var _loc7_:int = 0;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc8_:ByteArray = null;
         var _loc9_:int = 0;
         var _loc3_:ByteArray = null;
         this.§5214237869237882123423632234§ = param2;
         var _loc10_:int = param1.readInt();
         this.§try switch with§.modelData = new ByteArray();
         param1.readBytes(this.§try switch with§.modelData,0,_loc10_);
         this.§5214232515232528123423632234§ = this.§try switch with§.modelData;
         var _loc6_:int = param1.readInt();
         while(_loc7_ < _loc6_)
         {
            _loc4_ = param1.readUTF();
            _loc5_ = param1.readInt();
            _loc8_ = new ByteArray();
            param1.readBytes(_loc8_,0,_loc5_);
            _loc9_ = param1.readInt();
            _loc3_ = null;
            if(_loc9_ > 0)
            {
               _loc3_ = new ByteArray();
               param1.readBytes(_loc3_,0,_loc9_);
            }
            this.§try switch with§.imageData[§try switch with§.imageData.length] = new ImageData(_loc4_,new §if package finally§(_loc8_,_loc3_));
            _loc7_++;
         }
         this.§5214232908232921123423632234§();
         return true;
      }
      
      override public function §throw var super§() : void
      {
         if(this.§override set case§ != null)
         {
            for each(var _loc1_ in this.§override set case§)
            {
               _loc1_.dispose();
            }
         }
      }
      
      private function §521423113322311345123423632234§() : void
      {
         this.§final set true§ = new §set switch each§();
         this.§final set true§.dataFormat = "binary";
         this.§final set true§.addEventListener("open",this.§catch set class§);
         this.§final set true§.addEventListener("complete",this.§include for super§);
         this.§final set true§.addEventListener("ioError",this.§5214238374238387123423632234§);
         this.§final set true§.addEventListener("securityError",this.§5214238374238387123423632234§);
         this.§final set true§.load(new URLRequest(§521423128472312860123423632234§ + "object.3ds"));
         this.§get use const§ = 4;
         §5214231431231444123423632234§();
      }
      
      private function §5214235654235667123423632234§(param1:Mesh) : void
      {
         param1.weldVertices(0.001,0.0001);
         param1.weldFaces(0.01,0.001,0.01);
         param1.calculateVerticesNormalsByAngle(1.1344640137963142,0.01);
         param1.clipping = 2;
         param1.sorting = 1;
         param1.calculateBounds();
      }
      
      public function §521423187272318740123423632234§(param1:int) : BitmapData
      {
         var _loc3_:Mesh = this.§521423188262318839123423632234§[param1] as Mesh;
         if(_loc3_ == null || _loc3_.faceList == null)
         {
            return null;
         }
         var _loc2_:TextureMaterial = _loc3_.faceList.material as TextureMaterial;
         if(_loc2_ == null)
         {
            return null;
         }
         return this.§override set case§[_loc2_.diffuseMapURL];
      }
      
      private function §var set get§() : void
      {
         this.§final set true§ = new §set switch each§();
         this.§final set true§.addEventListener("open",this.§for var switch§);
         this.§final set true§.addEventListener("complete",this.§return var break§);
         this.§final set true§.addEventListener("ioError",this.§5214238374238387123423632234§);
         this.§final set true§.addEventListener("securityError",this.§5214238374238387123423632234§);
         this.§final set true§.load(new URLRequest(§521423128472312860123423632234§ + "images.xml"));
         §5214231431231444123423632234§();
         this.§get use const§ = 2;
      }
      
      private function §class switch with§() : void
      {
         if(this.§final set true§ != null)
         {
            this.§final set true§.removeEventListener("open",this.§catch set class§);
            this.§final set true§.removeEventListener("complete",this.§include for super§);
            this.§final set true§.removeEventListener("ioError",this.§5214238374238387123423632234§);
            this.§final set true§.removeEventListener("securityError",this.§5214238374238387123423632234§);
            this.§final set true§ = null;
         }
      }
      
      override public function get §in super get§() : String
      {
         return "3DS";
      }
      
      override protected function §521423120912312104123423632234§() : void
      {
         switch(this.§get use const§ - 2)
         {
            case 0:
               this.§final set true§.close();
               this.§break super catch§();
               this.§var set get§();
               break;
            case 1:
               this.§try finally dynamic§.§5214231496231509123423632234§();
               break;
            case 2:
               this.§final set true§.close();
               this.§class switch with§();
               this.§521423113322311345123423632234§();
         }
      }
      
      private function §5214239551239564123423632234§(param1:Boolean) : void
      {
         if(§false function continue§(4 | 8) || !§package var import§.enabled)
         {
            var _loc2_:§default var do§ = §default var do§;
            if(flash.system.Capabilities.playerType == "Desktop" || flash.system.Capabilities.playerType == "External")
            {
               this.§try switch with§ = null;
            }
         }
         if(param1)
         {
            §521423108502310863123423632234§();
         }
         else
         {
            setTimeout(§521423108502310863123423632234§,0);
         }
      }
   }
}

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.utils.ByteArray;
import §for use use§.§521423108362310849123423632234§;
import §for use use§.§521423172372317250123423632234§;
import §for use use§.§if package finally§;

class ResourceData
{
   
   public var modelData:ByteArray;
   
   public var imageData:Vector.<ImageData> = new Vector.<ImageData>();
   
   public var batchConstructor:BatchTextureConstructor = new BatchTextureConstructor();
   
   public function ResourceData()
   {
      super();
   }
}

class ImageData
{
   
   public var name:String;
   
   public var data:§if package finally§;
   
   public function ImageData(param1:String, param2:§if package finally§)
   {
      super();
      this.name = param1;
      this.data = param2;
   }
}

class BatchTextureConstructor extends EventDispatcher implements §521423172372317250123423632234§
{
   
   public var textures:Object;
   
   private var d23b873:Vector.<ImageData>;
   
   private var f3749a:int;
   
   private var e666e484:int;
   
   private var b1be0947:int;
   
   private var d5dbdd1d:int;
   
   private var a32c2537:int;
   
   private var e2c085a2:Vector.<§52142328323296123423632234§>;
   
   public function BatchTextureConstructor()
   {
      super();
   }
   
   public function run(param1:int, param2:Vector.<ImageData>) : void
   {
      var _loc3_:int = 0;
      this.f3749a = param1;
      this.d23b873 = param2;
      this.textures = {};
      this.e2c085a2 = new Vector.<§52142328323296123423632234§>(param1);
      while(_loc3_ < param1)
      {
         this.e2c085a2[_loc3_] = new §52142328323296123423632234§();
         _loc3_++;
      }
      this.a32c2537 = 0;
      this.b1be0947 = 0;
      this.d5122d8f();
   }
   
   private function d5122d8f() : void
   {
      var _loc2_:int = 0;
      var _loc1_:§52142328323296123423632234§ = null;
      this.d5dbdd1d = 0;
      var _loc3_:int = this.b1be0947 + this.f3749a;
      if(_loc3_ > this.d23b873.length)
      {
         _loc3_ = int(this.d23b873.length);
      }
      this.e666e484 = _loc3_ - this.b1be0947;
      while(_loc2_ < this.e666e484)
      {
         _loc1_ = this.e2c085a2[_loc2_];
         _loc1_.§521423145732314586123423632234§ = this.b1be0947 + _loc2_;
         _loc1_.§5214235203235216123423632234§(this.d23b873[_loc1_.§521423145732314586123423632234§].data,this);
         _loc2_++;
      }
      this.b1be0947 = _loc3_;
   }
   
   private function complete() : void
   {
      this.e2c085a2 = null;
      this.d23b873 = null;
      dispatchEvent(new Event("complete"));
   }
   
   public function onTextureReady(param1:§521423108362310849123423632234§) : void
   {
      var _loc2_:§52142328323296123423632234§ = §52142328323296123423632234§(param1);
      this.textures[this.d23b873[_loc2_.§521423145732314586123423632234§].name] = _loc2_.§function var function§;
      ++this.a32c2537;
      ++this.d5dbdd1d;
      if(this.a32c2537 == this.d23b873.length)
      {
         this.complete();
      }
      else if(this.d5dbdd1d == this.e666e484)
      {
         this.d5122d8f();
      }
   }
}
