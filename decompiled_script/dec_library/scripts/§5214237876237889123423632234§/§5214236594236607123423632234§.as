package §5214237876237889123423632234§
{
   import §521423115552311568123423632234§.§521423108402310853123423632234§;
   import §521423115552311568123423632234§.§5214234016234029123423632234§;
   import §521423175722317585123423632234§.§5214239797239810123423632234§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §5214236594236607123423632234§ extends §use use var§
   {
      
      protected var §native function if§:String = "icon";
      
      protected var §5214232252232265123423632234§:Number = 20;
      
      protected var §521423129382312951123423632234§:Object;
      
      public function §5214236594236607123423632234§()
      {
         super();
      }
      
      public static function getStyleDefinition() : Object
      {
         return §use use var§.getStyleDefinition();
      }
      
      override protected function §5214234065234078123423632234§() : void
      {
         var _loc13_:Boolean = false;
         var _loc12_:§5214239797239810123423632234§ = null;
         var _loc5_:Object = null;
         var _loc1_:§5214239797239810123423632234§ = null;
         var _loc6_:uint = 0;
         var _loc2_:Object = null;
         var _loc3_:§521423108402310853123423632234§ = null;
         §set switch else§.x = §set switch else§.y = 0;
         var _loc8_:Rectangle = §set switch else§.scrollRect;
         _loc8_.x = §do var for§;
         _loc8_.y = Math.floor(§521423114362311449123423632234§) % §5214232437232450123423632234§;
         §set switch else§.scrollRect = _loc8_;
         var _loc9_:uint = Math.floor(§521423114362311449123423632234§ / §5214232437232450123423632234§);
         var _loc10_:uint = Math.min(§521423135952313608123423632234§,_loc9_ + §function package function§ + 1);
         var _loc4_:Dictionary = §5214232844232857123423632234§ = new Dictionary(true);
         _loc6_ = _loc9_;
         while(_loc6_ < _loc10_)
         {
            _loc4_[§521423179282317941123423632234§.getItemAt(_loc6_)] = true;
            _loc6_++;
         }
         var _loc11_:Dictionary = new Dictionary(true);
         while(§521423108342310847123423632234§.length > 0)
         {
            _loc3_ = §521423108342310847123423632234§.pop() as §521423108402310853123423632234§;
            _loc2_ = _loc3_.data;
            if(_loc4_[_loc2_] == null || §true switch use§[_loc2_] == true)
            {
               §5214234358234371123423632234§.push(_loc3_);
            }
            else
            {
               _loc11_[_loc2_] = _loc3_;
               §true switch use§[_loc2_] = true;
            }
            §else var case§.removeChild(_loc3_ as DisplayObject);
         }
         §true switch use§ = new Dictionary(true);
         _loc6_ = _loc9_;
         while(_loc6_ < _loc10_)
         {
            _loc13_ = false;
            _loc2_ = §521423179282317941123423632234§.getItemAt(_loc6_);
            if(_loc11_[_loc2_] != null)
            {
               _loc13_ = true;
               _loc3_ = _loc11_[_loc2_];
               delete _loc11_[_loc2_];
            }
            else if(§5214234358234371123423632234§.length > 0)
            {
               _loc3_ = §5214234358234371123423632234§.pop() as §521423108402310853123423632234§;
            }
            else
            {
               _loc3_ = §continue while case§(§default catch false§("cellRenderer")) as §521423108402310853123423632234§;
               _loc12_ = _loc3_ as §5214239797239810123423632234§;
               if(_loc12_ != null)
               {
                  _loc12_.addEventListener("click",§5214238659238672123423632234§,false,0,true);
                  _loc12_.addEventListener("rollOver",§5214234845234858123423632234§,false,0,true);
                  _loc12_.addEventListener("rollOut",§5214234845234858123423632234§,false,0,true);
                  _loc12_.addEventListener("change",§5214235502235515123423632234§,false,0,true);
                  _loc12_.doubleClickEnabled = true;
                  _loc12_.addEventListener("doubleClick",§521423169872317000123423632234§,false,0,true);
                  for(var _loc7_ in §while var throw§)
                  {
                     _loc12_.§with switch include§(_loc7_,§while var throw§[_loc7_]);
                  }
               }
            }
            §else var case§.addChild(_loc3_ as Sprite);
            §521423108342310847123423632234§.push(_loc3_);
            _loc3_.y = §5214232437232450123423632234§ * (_loc6_ - _loc9_);
            _loc3_.setSize(§false switch dynamic§ + §5214239328239341123423632234§,§5214232437232450123423632234§);
            _loc5_ = null;
            if(§native function if§ != null)
            {
               _loc5_ = _loc2_[§native function if§];
            }
            if(!_loc13_)
            {
               _loc3_.data = _loc2_;
            }
            _loc3_.listData = new §5214234016234029123423632234§(_loc5_,this,_loc6_,_loc6_,0);
            _loc3_.selected = §function for use§.indexOf(_loc6_) != -1;
            _loc1_ = _loc3_ as §5214239797239810123423632234§;
            if(_loc1_ != null)
            {
               _loc1_.§default switch get§();
            }
            _loc6_++;
         }
      }
      
      public function get §5214232437232450123423632234§() : Number
      {
         return §5214232252232265123423632234§;
      }
      
      override protected function §use case§() : void
      {
         §5214232183232196123423632234§ = true;
         §5214233699233712123423632234§ = 2;
         §do package use§ = 2;
         super.§use case§();
      }
      
      override protected function §5214231399231412123423632234§(param1:Number, param2:Boolean = false) : void
      {
         §else var case§.x = -param1;
         super.§5214231399231412123423632234§(param1,true);
      }
      
      protected function §default const in§() : Number
      {
         return height - (§5214233699233712123423632234§ == 1 || §5214233699233712123423632234§ == 2 && §5214239328239341123423632234§ > 0 ? 15 : 0);
      }
      
      public function get §521423166032316616123423632234§() : String
      {
         return §native function if§;
      }
      
      override protected function §continue use const§() : void
      {
         var _loc1_:Boolean = §final const var§ != §5214232437232450123423632234§ * §521423135952313608123423632234§;
         §final const var§ = §5214232437232450123423632234§ * §521423135952313608123423632234§;
         if(§switch finally final§("styles"))
         {
            §5214231925231938123423632234§();
            drawBackground();
            if(§521423129382312951123423632234§ != §default catch false§("cellRenderer"))
            {
               §throw package§();
               §521423129382312951123423632234§ = §default catch false§("cellRenderer");
            }
         }
         if(§switch finally final§("size","state") || _loc1_)
         {
            drawLayout();
         }
         if(§switch finally final§("rendererStyles"))
         {
            §5214238191238204123423632234§();
         }
         if(§switch finally final§("styles","size") || §switch finally final§("data","scroll") || §switch finally final§("selected"))
         {
            §5214234065234078123423632234§();
         }
         §set break§();
         §521423123632312376123423632234§();
      }
      
      public function get §function package function§() : uint
      {
         return Math.ceil(§default const in§() / §5214232437232450123423632234§);
      }
      
      public function set §function package function§(param1:uint) : void
      {
         var _loc2_:Number = §5214233699233712123423632234§ == 1 || §5214233699233712123423632234§ == 2 && §5214239328239341123423632234§ > 0 ? 15 : 0;
         height = §5214232437232450123423632234§ * param1 + _loc2_;
      }
      
      override public function §if catch function§(param1:int) : void
      {
         §default switch get§();
         var _loc2_:uint = Math.floor((§521423114362311449123423632234§ + §throw package default§) / §5214232437232450123423632234§) - 1;
         var _loc3_:uint = Math.ceil(§521423114362311449123423632234§ / §5214232437232450123423632234§);
         if(param1 < _loc3_)
         {
            §extends finally throw§ = param1 * §5214232437232450123423632234§;
         }
         else if(param1 > _loc2_)
         {
            §extends finally throw§ = (param1 + 1) * §5214232437232450123423632234§ - §throw package default§;
         }
      }
      
      public function set §521423166032316616123423632234§(param1:String) : void
      {
         if(param1 == §native function if§)
         {
            return;
         }
         §native function if§ = param1;
         §5214237069237082123423632234§("data");
      }
      
      override protected function §continue const get§(param1:Number, param2:Boolean = false) : void
      {
         §5214237069237082123423632234§("scroll");
         super.§continue const get§(param1,true);
      }
      
      public function set §5214232437232450123423632234§(param1:Number) : void
      {
         §5214232252232265123423632234§ = param1;
         §5214237069237082123423632234§("size");
      }
   }
}

