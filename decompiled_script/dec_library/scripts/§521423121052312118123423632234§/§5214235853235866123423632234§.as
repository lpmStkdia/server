package §521423121052312118123423632234§
{
   import §521423158432315856123423632234§.§do use with§;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import §default package continue§.§true var package§;
   import flash.display.BitmapData;
   import flash.utils.Dictionary;
   import §with var final§.§521423113572311370123423632234§;
   import §with var final§.§521423161812316194123423632234§;
   
   public final class §5214235853235866123423632234§ extends Mesh implements §do use with§
   {
      
      private static const §true package var§:Number = 100;
      
      private static const §in finally do§:Number = 10;
      
      private static const §else function use§:Number = 5;
      
      private static const §5214239239239252123423632234§:Number = 0.5;
      
      private static const §5214238351238364123423632234§:Number = 0.75;
      
      private static const §static finally static§:Number = 300;
      
      private static const §each true§:BitmapData = new §521423113572311370123423632234§(0,0);
      
      private static const §return catch switch§:BitmapData = new §521423161812316194123423632234§(0,0);
      
      private static const §5214233311233324123423632234§:Dictionary = new Dictionary();
      
      private static const §for function for§:Dictionary = new Dictionary();
      
      private var §const package set§:TextureMaterial;
      
      private var §throw for native§:Vertex;
      
      private var §5214236415236428123423632234§:Vertex;
      
      private var §true var var§:Vertex;
      
      private var §in finally catch§:Vertex;
      
      private var §false use use§:Vertex;
      
      private var §null switch get§:Vertex;
      
      private var §521423130042313017123423632234§:Vertex;
      
      private var §521423183262318339123423632234§:Vertex;
      
      private var §while catch default§:Face;
      
      private var §import var function§:Face;
      
      private var §each finally import§:Vertex;
      
      private var §5214234942234955123423632234§:Vertex;
      
      private var §521423106352310648123423632234§:Vertex;
      
      private var §static set implements§:Vertex;
      
      private var §extends super get§:Vertex;
      
      private var §while for native§:Vertex;
      
      private var §521423119232311936123423632234§:Vertex;
      
      private var §5214231706231719123423632234§:Vertex;
      
      private var §5214238916238929123423632234§:Face;
      
      private var §5214239958239971123423632234§:Face;
      
      private var §super use package§:Number;
      
      private var §if while switch§:Number;
      
      private var §52142399942310007123423632234§:Number;
      
      private var color:uint;
      
      private var §5214232929232942123423632234§:int;
      
      private var §class switch dynamic§:int;
      
      public function §5214235853235866123423632234§()
      {
         super();
         this.§throw for native§ = addVertex(-1,1,0);
         this.§5214236415236428123423632234§ = addVertex(-1,0,0);
         this.§true var var§ = addVertex(1,0,0);
         this.§in finally catch§ = addVertex(1,1,0);
         this.§false use use§ = addVertex(-1,1,0);
         this.§null switch get§ = addVertex(-1,0,0);
         this.§521423130042313017123423632234§ = addVertex(1,0,0);
         this.§521423183262318339123423632234§ = addVertex(1,1,0);
         this.§while catch default§ = addQuadFace(this.§throw for native§,this.§5214236415236428123423632234§,this.§true var var§,this.§in finally catch§);
         this.§import var function§ = addQuadFace(this.§false use use§,this.§null switch get§,this.§521423130042313017123423632234§,this.§521423183262318339123423632234§);
         this.§each finally import§ = addVertex(-1,1,0);
         this.§5214234942234955123423632234§ = addVertex(-1,0,0);
         this.§521423106352310648123423632234§ = addVertex(1,0,0);
         this.§static set implements§ = addVertex(1,1,0);
         this.§extends super get§ = addVertex(-1,1,0);
         this.§while for native§ = addVertex(-1,0,0);
         this.§521423119232311936123423632234§ = addVertex(1,0,0);
         this.§5214231706231719123423632234§ = addVertex(1,1,0);
         this.§5214238916238929123423632234§ = addQuadFace(this.§each finally import§,this.§5214234942234955123423632234§,this.§521423106352310648123423632234§,this.§static set implements§);
         this.§5214239958239971123423632234§ = addQuadFace(this.§extends super get§,this.§while for native§,this.§521423119232311936123423632234§,this.§5214231706231719123423632234§);
         calculateFacesNormals();
         useLight = false;
         useShadowMap = false;
         sorting = 2;
         shadowMapAlphaThreshold = 2;
         depthMapAlphaThreshold = 2;
         blendMode = "add";
      }
      
      public function §override catch get§() : void
      {
         if(this.color in §5214233311233324123423632234§)
         {
            delete §5214233311233324123423632234§[this.color];
         }
         if(this.color in §for function for§)
         {
            delete §for function for§[this.color];
         }
         this.§const package set§ = null;
         this.§while catch default§.material = null;
         this.§5214238916238929123423632234§.material = null;
         this.§import var function§.material = null;
         this.§5214239958239971123423632234§.material = null;
      }
      
      public function §5214239350239363123423632234§(param1:int) : void
      {
         this.color = param1;
         this.§const package set§ = §true var package§.§521423111082311121123423632234§(§5214233311233324123423632234§,param1,§each true§);
         this.§5214232929232942123423632234§ = this.§const package set§.texture.width;
         this.§class switch dynamic§ = this.§const package set§.texture.height;
         this.§while catch default§.material = this.§const package set§;
         this.§5214238916238929123423632234§.material = this.§const package set§;
         var _loc2_:TextureMaterial = §true var package§.§521423111082311121123423632234§(§for function for§,param1,§return catch switch§,false);
         this.§import var function§.material = _loc2_;
         this.§5214239958239971123423632234§.material = _loc2_;
         var _loc3_:Number = 5;
         this.§throw for native§.x = -_loc3_;
         this.§throw for native§.u = 0;
         this.§5214236415236428123423632234§.x = -_loc3_;
         this.§5214236415236428123423632234§.u = 0;
         this.§true var var§.x = _loc3_;
         this.§true var var§.u = 1;
         this.§in finally catch§.x = _loc3_;
         this.§in finally catch§.u = 1;
         this.§false use use§.x = -_loc3_;
         this.§false use use§.u = 0;
         this.§false use use§.v = 0;
         this.§null switch get§.x = -_loc3_;
         this.§null switch get§.u = 0;
         this.§null switch get§.v = 1;
         this.§521423130042313017123423632234§.x = _loc3_;
         this.§521423130042313017123423632234§.u = 1;
         this.§521423130042313017123423632234§.v = 1;
         this.§521423183262318339123423632234§.x = _loc3_;
         this.§521423183262318339123423632234§.u = 1;
         this.§521423183262318339123423632234§.v = 0;
         this.§each finally import§.x = -_loc3_;
         this.§each finally import§.u = 0;
         this.§5214234942234955123423632234§.x = -_loc3_;
         this.§5214234942234955123423632234§.u = 0;
         this.§521423106352310648123423632234§.x = _loc3_;
         this.§521423106352310648123423632234§.u = 1;
         this.§static set implements§.x = _loc3_;
         this.§static set implements§.u = 1;
         this.§extends super get§.x = -_loc3_;
         this.§extends super get§.u = 0;
         this.§extends super get§.v = 0;
         this.§while for native§.x = -_loc3_;
         this.§while for native§.u = 0;
         this.§while for native§.v = 1;
         this.§521423119232311936123423632234§.x = _loc3_;
         this.§521423119232311936123423632234§.u = 1;
         this.§521423119232311936123423632234§.v = 1;
         this.§5214231706231719123423632234§.x = _loc3_;
         this.§5214231706231719123423632234§.u = 1;
         this.§5214231706231719123423632234§.v = 0;
         this.§super use package§ = 5 * 10 * this.§const package set§.texture.height / this.§const package set§.texture.width;
         this.§if while switch§ = 0;
         this.§52142399942310007123423632234§ = 0;
      }
      
      public function §function const package§(param1:int, param2:Number) : void
      {
         var _loc3_:Number = param1 / 1000;
         this.§throw for native§.y = param2;
         this.§5214236415236428123423632234§.y = 100;
         this.§true var var§.y = 100;
         this.§in finally catch§.y = param2;
         this.§false use use§.y = 100;
         this.§null switch get§.y = 0;
         this.§521423130042313017123423632234§.y = 0;
         this.§521423183262318339123423632234§.y = 100;
         this.§each finally import§.y = param2;
         this.§5214234942234955123423632234§.y = 100;
         this.§521423106352310648123423632234§.y = 100;
         this.§static set implements§.y = param2;
         this.§extends super get§.y = 100;
         this.§while for native§.y = 0;
         this.§521423119232311936123423632234§.y = 0;
         this.§5214231706231719123423632234§.y = 100;
         this.§if while switch§ += 0.5 * _loc3_;
         this.§52142399942310007123423632234§ += 0.75 * _loc3_;
         var _loc8_:Number = Math.sin(this.§if while switch§) * 300;
         var _loc7_:Number = Math.sin(this.§52142399942310007123423632234§) * 300;
         this.§throw for native§.v = (-this.§throw for native§.y + _loc8_) / this.§super use package§;
         this.§5214236415236428123423632234§.v = (-this.§5214236415236428123423632234§.y + _loc8_) / this.§super use package§;
         this.§true var var§.v = (-this.§true var var§.y + _loc8_) / this.§super use package§;
         this.§in finally catch§.v = (-this.§in finally catch§.y + _loc8_) / this.§super use package§;
         this.§each finally import§.v = (-this.§each finally import§.y + _loc7_) / this.§super use package§;
         this.§5214234942234955123423632234§.v = (-this.§5214234942234955123423632234§.y + _loc7_) / this.§super use package§;
         this.§521423106352310648123423632234§.v = (-this.§521423106352310648123423632234§.y + _loc7_) / this.§super use package§;
         this.§static set implements§.v = (-this.§static set implements§.y + _loc7_) / this.§super use package§;
         var _loc4_:Number = §5214232929232942123423632234§ / 2;
         var _loc5_:Number = this.§5214236415236428123423632234§.v * §class switch dynamic§ % §class switch dynamic§;
         if(_loc5_ < 0)
         {
            _loc5_ = §class switch dynamic§ + _loc5_;
         }
         var _loc6_:Number = (§each true§.getPixel(_loc4_,_loc5_) >> 16 & 0xFF) / 255;
         this.§false use use§.v = 1 - _loc6_;
         this.§521423183262318339123423632234§.v = 1 - _loc6_;
         _loc5_ = this.§5214234942234955123423632234§.v * §class switch dynamic§ % §class switch dynamic§;
         if(_loc5_ < 0)
         {
            _loc5_ = §class switch dynamic§ + _loc5_;
         }
         _loc6_ = (§each true§.getPixel(_loc4_,_loc5_) >> 16 & 0xFF) / 255;
         this.§extends super get§.v = 1 - _loc6_;
         this.§5214231706231719123423632234§.v = 1 - _loc6_;
      }
   }
}

