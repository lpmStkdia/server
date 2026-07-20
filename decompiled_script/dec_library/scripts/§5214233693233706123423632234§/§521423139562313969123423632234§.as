package §5214233693233706123423632234§
{
   import §5214234079234092123423632234§.§for package with§;
   import §5214235292235305123423632234§.§52142328323296123423632234§;
   import alternativa.engine3d.materials.TextureMaterial;
   import §each set default§.§521423144672314480123423632234§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §for use use§.§521423108362310849123423632234§;
   import §for use use§.§521423172372317250123423632234§;
   import §for use use§.§if package finally§;
   import §true catch false§.§52142358423597123423632234§;
   
   public class §521423139562313969123423632234§ extends EventDispatcher implements §521423172372317250123423632234§
   {
      
      private var §521423145952314608123423632234§:§for package with§;
      
      private var §override catch each§:int;
      
      private var §5214234319234332123423632234§:int;
      
      private var §override function static§:int;
      
      private var §5214232023232036123423632234§:Vector.<§5214236003236016123423632234§>;
      
      private var §native var catch§:Vector.<§52142328323296123423632234§>;
      
      private var §override finally dynamic§:Boolean;
      
      private var §override set case§:Vector.<BitmapData> = new Vector.<BitmapData>();
      
      private var §case while case§:BitmapData;
      
      private var §5214231975231988123423632234§:int;
      
      private var §try package import§:int;
      
      private var §include function in§:Vector.<§5214231404231417123423632234§> = new Vector.<§5214231404231417123423632234§>();
      
      public function §521423139562313969123423632234§(param1:§for package with§, param2:int)
      {
         super();
         this.§521423145952314608123423632234§ = param1;
         this.§override catch each§ = param2;
      }
      
      public static function §52142388723900123423632234§(param1:BitmapData, param2:int = 1) : BitmapData
      {
         var _loc10_:int = 0;
         var _loc9_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:int = 0;
         var _loc6_:int = param1.width + param2 * 2;
         var _loc8_:int = param1.height + param2 * 2;
         var _loc7_:BitmapData = new BitmapData(_loc6_,_loc8_,false,0);
         _loc7_.copyPixels(param1,param1.rect,new Point(param2,param2));
         var _loc11_:int = param1.width;
         var _loc4_:int = param1.height;
         _loc10_ = 0;
         while(_loc10_ < _loc7_.height)
         {
            _loc9_ = 0;
            while(_loc9_ < _loc7_.width)
            {
               if(!(_loc9_ >= param2 && _loc9_ < param2 + _loc11_ && _loc10_ >= param2 && _loc10_ < param2 + _loc4_))
               {
                  _loc5_ = Math.max(0,Math.min(_loc11_ - 1,_loc9_ - param2));
                  _loc3_ = Math.max(0,Math.min(_loc4_ - 1,_loc10_ - param2));
                  _loc7_.setPixel32(_loc9_,_loc10_,param1.getPixel32(_loc5_,_loc3_));
               }
               _loc9_++;
            }
            _loc10_++;
         }
         param1.dispose();
         return _loc7_;
      }
      
      private function §each package static§() : void
      {
         var _loc1_:int = 0;
         this.§native var catch§ = new Vector.<§52142328323296123423632234§>(this.§override catch each§);
         while(_loc1_ < this.§override catch each§)
         {
            this.§native var catch§[_loc1_] = new §52142328323296123423632234§();
            _loc1_++;
         }
      }
      
      private function §521423105482310561123423632234§(param1:String) : Boolean
      {
         if(param1.indexOf("zamin") == 0 && param1.indexOf("newnakhl") == -1)
         {
            return false;
         }
         var _loc4_:Array = param1.split("#");
         var _loc3_:String = _loc4_[0];
         var _loc2_:String = _loc4_[1];
         if(_loc2_.indexOf("cliff_1") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("cliff_2") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("cliff_c2") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("cliff_r") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("concrete_") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("concrete2x2_") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("dark_") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("dd_") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("dg_") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("gd") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("grass_a") == 0)
         {
            return true;
         }
         if(_loc2_.indexOf("grass_b") == 0)
         {
            return true;
         }
         if(_loc3_.indexOf("Land Tiles") == 0 && _loc2_.indexOf("grass2") == 0)
         {
            return true;
         }
         if(_loc2_.indexOf("gravest") == 0)
         {
            return true;
         }
         if(_loc2_.indexOf("grid") == 0)
         {
            return true;
         }
         if(_loc2_.indexOf("ground21") == 0)
         {
            return true;
         }
         if(_loc2_.indexOf("ground22") == 0)
         {
            return true;
         }
         if(_loc2_.indexOf("gr") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("pave") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("pc_") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("pg_") == 0)
         {
            return false;
         }
         if(_loc2_ == "roof.jpg")
         {
            return false;
         }
         if(_loc2_.indexOf("steel_") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("slope") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("spring_") == 0)
         {
            return false;
         }
         if(_loc2_ == "wallbrok.jpg")
         {
            return false;
         }
         if(_loc3_.indexOf("Fort") == 0 && _loc2_.indexOf("wall_") == 0 && _loc2_ != "wall_out.jpg")
         {
            return false;
         }
         if(_loc2_.indexOf("tow_") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("bg_rock") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("land33") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("land02") == 0)
         {
            return false;
         }
         if(_loc2_.indexOf("land1.jpg") == 0)
         {
            return false;
         }
         return true;
      }
      
      private function §5214233404233417123423632234§(param1:§52142328323296123423632234§) : void
      {
         var _loc2_:§5214236003236016123423632234§ = null;
         var _loc3_:§if package finally§ = null;
         if(this.§override function static§ < this.§5214232023232036123423632234§.length)
         {
            param1.§521423145732314586123423632234§ = this.§override function static§;
            _loc2_ = this.§5214232023232036123423632234§[this.§override function static§++];
            _loc3_ = _loc2_.§true while in§();
            if(_loc3_ == null || _loc3_.§5214237626237639123423632234§ == null)
            {
               _loc3_ = new §if package finally§(null);
            }
            param1.§5214235203235216123423632234§(_loc3_,this);
         }
      }
      
      public function §false use var§() : void
      {
         this.§override finally dynamic§ = true;
         this.§5214232023232036123423632234§ = null;
         this.§native var catch§ = null;
         for each(var _loc1_ in this.§override set case§)
         {
            _loc1_.dispose();
         }
         this.§override set case§ = null;
      }
      
      public function §package for null§(param1:Vector.<§5214236003236016123423632234§>, param2:uint) : void
      {
         this.§5214232023232036123423632234§ = param1.concat();
         this.§try package import§ = param2;
         this.§5214234319234332123423632234§ = 0;
         this.§override function static§ = 0;
         this.§each package static§();
         this.§521423146042314617123423632234§();
      }
      
      public function onTextureReady(param1:§521423108362310849123423632234§) : void
      {
         var _loc2_:§52142328323296123423632234§ = §52142328323296123423632234§(param1);
         if(this.§override finally dynamic§)
         {
            _loc2_.§5214232146232159123423632234§();
         }
         else
         {
            this.§override set case§[§override set case§.length] = _loc2_.§function var function§;
            this.§catch use var§(_loc2_);
            ++this.§5214234319234332123423632234§;
            if(this.§5214234319234332123423632234§ == this.§5214232023232036123423632234§.length)
            {
               §5214236665236678123423632234§(§include function in§);
               this.§catch catch get§();
            }
            else
            {
               this.§5214233404233417123423632234§(_loc2_);
            }
         }
      }
      
      private function §5214236665236678123423632234§(param1:Vector.<§5214231404231417123423632234§>) : void
      {
         var _loc15_:TextureMaterial = null;
         var _loc2_:§else package static§ = null;
         var _loc9_:int = 0;
         var _loc18_:§5214231404231417123423632234§ = null;
         var _loc4_:BitmapData = null;
         var _loc11_:int = 0;
         var _loc12_:Rectangle = null;
         var _loc7_:int = 0;
         var _loc13_:PropHook = null;
         var _loc10_:int = 0;
         var _loc17_:§5214231404231417123423632234§ = null;
         var _loc8_:BitmapData = null;
         var _loc5_:Vector.<PropHook> = new <PropHook>[new PropHook("#broktank",256,0),new PropHook("#hang_1",768,0),new PropHook("#hang_2",768,0),new PropHook("#hang_3",768,0),new PropHook("#hang_1",768,768),new PropHook("#hang_2",768,768),new PropHook("#hang_3",768,768),new PropHook("#nubu_1.",0,0),new PropHook("#nubu_1.",0,256),new PropHook("#nubu_1.",0,512),new PropHook("#nubu_1.",0,768),new PropHook("#nubu_1.",0,1024),new PropHook("#nubu_1.",0,1280),new PropHook("#nubu_1.",0,1536),new PropHook("#nubu_1.",0,1792),new PropHook("#nubu_1.",256,1792),new PropHook("#nubu_1.",512,1792),new PropHook("#nubu_1.",768,1792),new PropHook("#nubu_1.",1024,1792),new PropHook("#nubu_1.",1280,1792),new PropHook("#nubu_1.",1536,1792),new PropHook("#nubu_1.",1792,1792),new PropHook("#nubu_1.",1792,0),new PropHook("#nubu_1.",1536,0),new PropHook("#nubu_1.",1536,256),new PropHook("#nubu_1.",1792,256),new PropHook("#nubu_1.",1792,512),new PropHook("#nubu_1.",1792,768),new PropHook("#nubu_1.",1280,1280),new PropHook("#nubu_1."
         ,1280,1536),new PropHook("#nubu_1.",1536,1536),new PropHook("#nubu_1.",1792,1536),new PropHook("#nubu_1.",1024,1200),new PropHook("#nubu_1.",768,1200),new PropHook("#nubu_1.",512,1200),new PropHook("#nubu_1.",256,1200),new PropHook("#nubu_3",0,512),new PropHook("#nubu_3",0,768),new PropHook("#nubu_4",0,512),new PropHook("#nubu_4",256,512),new PropHook("#nubu_4",512,512),new PropHook("#nubu_4",768,512),new PropHook("#nubu_4",0,768),new PropHook("#nubu_4",256,768),new PropHook("#nubu_4",512,768),new PropHook("#nubu_4",768,768),new PropHook("#nubu_8",768,512),new PropHook("#nubu_8",768,768),new PropHook("#nubu_10",768,0),new PropHook("#nubu_10",390,390),new PropHook("#nubu_12",0,768),new PropHook("#nubu_12",256,768),new PropHook("#nubu_12",512,768),new PropHook("#smhouse2",0,0),new PropHook("#smhouse2",768,768),new PropHook("#smhouse4",0,200),new PropHook("#sm_br_1.",768,768),new PropHook("#sm_br_1_",768,0),new PropHook("#sm_br_1_",0,0),new PropHook("#sm_br_1_",0,256),new PropHook("#sm_br_1_"
         ,0,512),new PropHook("#sm_br_1_",0,768),new PropHook("#sm_br_1_",256,768),new PropHook("#sm_br_1_",256,512),new PropHook("#sm_br_1_",256,256),new PropHook("#tower.",256,0),new PropHook("#tower.",256,256),new PropHook("#vilhou4",0,256),new PropHook("#bk_roof",768,0),new PropHook("#bk_roof",768,256),new PropHook("#fahwerk2",768,0),new PropHook("#fahwerk2",768,256),new PropHook("#fahwerk2",768,512),new PropHook("#fahwerk2",768,768),new PropHook("#fahwerk1",0,768),new PropHook("#fahwerk1",256,768),new PropHook("#fahwerk1",512,768),new PropHook("#fahwerk1",768,768),new PropHook("#gate.",768,0),new PropHook("#gate.",768,256),new PropHook("#gate.",768,512),new PropHook("#gate.",768,768),new PropHook("#gate.",512,768),new PropHook("#gate.",256,768),new PropHook("#gate.",0,768),new PropHook("#dot2_2",0,0)];
         var _loc14_:int = int(param1.length);
         if(_loc14_ == 0)
         {
            return;
         }
         if(_loc14_ == 1)
         {
            _loc15_ = this.§521423145952314608123423632234§.§return var var§(param1[0].§function var function§);
            param1[0].§use while const§.§extends const class§(_loc15_,null);
            return;
         }
         param1.sort(this.§5214232494232507123423632234§);
         var _loc16_:int = §5214235957235970123423632234§(param1,0);
         var _loc6_:BitmapData = §case while case§ != null && param1[0].§function var function§.width != 2048 ? §case while case§ : new BitmapData(_loc16_,_loc16_,false,6118498);
         _loc15_ = this.§521423145952314608123423632234§.§return var var§(_loc6_);
         if(_loc6_ == §case while case§)
         {
            _loc2_ = new §else package static§(1024,1024,1024);
            §case while case§ = null;
         }
         else
         {
            _loc2_ = new §else package static§(_loc16_,_loc16_);
         }
         var _loc3_:Point = new Point();
         _loc9_ = 0;
         while(_loc9_ < _loc14_)
         {
            _loc18_ = param1[_loc9_];
            _loc4_ = _loc18_.§function var function§;
            _loc11_ = _loc18_.§false finally for§;
            _loc12_ = _loc2_.§52142345023463123423632234§(_loc4_.width,_loc4_.height);
            if(_loc12_ == null)
            {
               if(_loc14_ - _loc9_ <= 1)
               {
                  _loc15_ = this.§521423145952314608123423632234§.§return var var§(_loc4_);
                  _loc18_.§use while const§.§extends const class§(_loc15_,new §521423144672314480123423632234§(_loc11_ / _loc4_.width,_loc11_ / _loc4_.height,(_loc4_.width - _loc11_) / _loc4_.width,(_loc4_.height - _loc11_) / _loc4_.height));
                  break;
               }
               _loc16_ = §5214235957235970123423632234§(param1,_loc9_);
               if(§case while case§ == null)
               {
                  _loc6_ = new BitmapData(_loc16_,_loc16_,false,6118498);
                  _loc2_ = new §else package static§(_loc16_,_loc16_);
               }
               else
               {
                  _loc6_ = §case while case§;
                  _loc2_ = new §else package static§(1024,1024,1024);
                  §case while case§ = null;
               }
               _loc15_ = this.§521423145952314608123423632234§.§return var var§(_loc6_);
               _loc12_ = _loc2_.§52142345023463123423632234§(_loc4_.width,_loc4_.height);
            }
            _loc3_.x = _loc12_.x;
            _loc3_.y = _loc12_.y;
            _loc6_.copyPixels(_loc4_,_loc4_.rect,_loc3_);
            _loc18_.§use while const§.§extends const class§(_loc15_,new §521423144672314480123423632234§((_loc12_.x + _loc11_) / _loc16_,(_loc12_.y + _loc11_) / _loc16_,(_loc12_.x + _loc4_.width - _loc11_) / _loc16_,(_loc12_.y + _loc4_.height - _loc11_) / _loc16_));
            _loc4_.dispose();
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc13_ = _loc5_[_loc7_];
               if(_loc18_.§catch catch in§ != null && _loc18_.§catch catch in§.indexOf(_loc13_.like) != -1)
               {
                  _loc10_ = _loc9_ + 1;
                  while(_loc10_ < _loc14_)
                  {
                     _loc17_ = param1[_loc10_];
                     if(_loc17_.§function var function§.width == 256 && _loc17_.§function var function§.height == 256)
                     {
                        _loc8_ = _loc17_.§function var function§;
                        _loc3_.x = _loc12_.x + _loc13_.xOffset;
                        _loc3_.y = _loc12_.y + _loc13_.yOffset;
                        _loc6_.copyPixels(_loc8_,_loc8_.rect,_loc3_);
                        _loc11_ = _loc17_.§false finally for§;
                        _loc17_.§use while const§.§extends const class§(_loc15_,new §521423144672314480123423632234§((_loc3_.x + _loc11_) / _loc16_,(_loc3_.y + _loc11_) / _loc16_,(_loc3_.x + _loc8_.width - _loc11_) / _loc16_,(_loc3_.y + _loc8_.height - _loc11_) / _loc16_));
                        _loc8_.dispose();
                        param1.removeAt(_loc10_);
                        _loc5_.removeAt(_loc7_);
                        _loc7_--;
                        _loc14_--;
                        break;
                     }
                     _loc10_++;
                  }
               }
               _loc7_++;
            }
            _loc9_++;
         }
      }
      
      public function §521423108512310864123423632234§() : Vector.<BitmapData>
      {
         return this.§override set case§;
      }
      
      private function §catch use var§(param1:§52142328323296123423632234§) : void
      {
         var _loc7_:String = null;
         var _loc2_:TextureMaterial = null;
         var _loc6_:Boolean = §52142358423597123423632234§.§5214232292232305123423632234§ && !§52142358423597123423632234§.§try const const§;
         var _loc5_:§5214236003236016123423632234§ = this.§5214232023232036123423632234§[param1.§521423145732314586123423632234§];
         var _loc3_:BitmapData = param1.§function var function§;
         var _loc4_:§package while return§ = _loc5_ as §package while return§;
         if(_loc4_ != null)
         {
            _loc7_ = _loc4_.§case for native§();
         }
         if(_loc6_ && _loc4_ != null && !_loc3_.transparent && _loc3_.width == _loc3_.height && (_loc3_.width == 128 || _loc3_.width == 256 || _loc3_.width == 512 || _loc3_.width == 1024 || _loc7_ != null && _loc7_.indexOf("#nubu_1.") != -1) && §521423105482310561123423632234§(_loc7_))
         {
            if(_loc3_.width <= 128)
            {
               §include function in§[§include function in§.length] = new §5214231404231417123423632234§(_loc4_,§52142388723900123423632234§(_loc3_,64),64);
            }
            else
            {
               §include function in§[§include function in§.length] = new §5214231404231417123423632234§(_loc4_,_loc3_,0);
            }
         }
         else
         {
            if(_loc6_ && _loc4_ != null && !_loc3_.transparent)
            {
               if(_loc7_ != null && _loc7_.indexOf("#nubu_14.jpg") != -1)
               {
                  §case while case§ = _loc3_;
               }
               else if(_loc3_.width < 1024)
               {
                  §include function in§[§include function in§.length] = new §5214231404231417123423632234§(_loc4_,§52142388723900123423632234§(_loc3_,64),64);
                  return;
               }
            }
            _loc2_ = this.§521423145952314608123423632234§.§return var var§(_loc3_);
            _loc2_.resolution = 4.2;
            _loc5_.§extends const class§(_loc2_,null);
         }
      }
      
      private function §521423146042314617123423632234§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < §override catch each§)
         {
            this.§5214233404233417123423632234§(§native var catch§[_loc1_]);
            _loc1_++;
         }
      }
      
      private function §catch catch get§() : void
      {
         this.§5214232023232036123423632234§ = null;
         this.§native var catch§ = null;
         this.§include function in§ = null;
         dispatchEvent(new Event("complete"));
      }
      
      private function §5214235957235970123423632234§(param1:Vector.<§5214231404231417123423632234§>, param2:int) : int
      {
         var _loc6_:int = 0;
         var _loc4_:§5214231404231417123423632234§ = null;
         var _loc3_:int = int(param1.length);
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         _loc6_ = param2;
         while(_loc6_ < _loc3_)
         {
            _loc4_ = param1[_loc6_];
            _loc9_ += _loc4_.§function var function§.width * _loc4_.§function var function§.height;
            _loc8_ = Math.max(_loc8_,_loc4_.§function var function§.width);
            _loc6_++;
         }
         var _loc5_:int = 32;
         var _loc10_:int = Math.ceil(Math.sqrt(_loc9_));
         while(_loc5_ < _loc10_)
         {
            _loc5_ <<= 1;
         }
         if(_loc5_ < _loc8_)
         {
            _loc5_ <<= 1;
         }
         var _loc7_:int = 2048;
         if(param1[param2].§function var function§.height == 128)
         {
            _loc7_ = 512;
         }
         return _loc5_ > _loc7_ ? _loc7_ : _loc5_;
      }
      
      private function §5214232494232507123423632234§(param1:§5214231404231417123423632234§, param2:§5214231404231417123423632234§) : int
      {
         return param2.§function var function§.height - param1.§function var function§.height;
      }
   }
}

class PropHook
{
   
   public var like:String;
   
   public var xOffset:int;
   
   public var yOffset:int;
   
   public function PropHook(param1:String, param2:int, param3:int)
   {
      super();
      this.like = param1;
      this.xOffset = param2;
      this.yOffset = param3;
   }
}
