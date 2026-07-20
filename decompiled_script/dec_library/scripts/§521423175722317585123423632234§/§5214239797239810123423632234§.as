package §521423175722317585123423632234§
{
   import §521423108952310908123423632234§.§521423158602315873123423632234§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   
   public class §5214239797239810123423632234§ extends Sprite
   {
      
      public static var §521423136392313652123423632234§:Boolean = false;
      
      private static var §native catch super§:Object = {};
      
      protected var §with package use§:Number;
      
      protected var §5214233090233103123423632234§:Boolean = true;
      
      protected var §each function import§:Dictionary;
      
      protected var §if static§:Number;
      
      protected var §52142344323456123423632234§:Number;
      
      protected var §521423151652315178123423632234§:Boolean = false;
      
      protected var §5214231528231541123423632234§:Number;
      
      protected var §package use super§:Object;
      
      protected var §break finally static§:Object;
      
      protected var §for var native§:Number;
      
      protected var §null finally while§:Object;
      
      protected var §521423153572315370123423632234§:Number;
      
      public function §5214239797239810123423632234§()
      {
         super();
         §null finally while§ = {};
         §break finally static§ = {};
         §package use super§ = {};
         §each function import§ = new Dictionary();
         §521423158602315873123423632234§.§5214235612235625123423632234§(this);
         §use case§();
         §5214237069237082123423632234§("all");
         tabEnabled = false;
         focusRect = false;
      }
      
      public static function getStyleDefinition() : Object
      {
         return §native catch super§;
      }
      
      override public function get width() : Number
      {
         return §for var native§;
      }
      
      public function §5214237069237082123423632234§(param1:String = "all", param2:Boolean = true) : void
      {
         §package use super§[param1] = true;
         if(param2)
         {
            this.§521423119812311994123423632234§(§continue use const§);
         }
      }
      
      protected function §default catch false§(param1:String) : Object
      {
         return §null finally while§[param1] == null ? §break finally static§[param1] : §null finally while§[param1];
      }
      
      override public function set scaleX(param1:Number) : void
      {
         setSize(§5214231528231541123423632234§ * param1,height);
      }
      
      override public function set height(param1:Number) : void
      {
         if(§52142344323456123423632234§ == param1)
         {
            return;
         }
         setSize(width,param1);
      }
      
      protected function §implements const false§() : Number
      {
         return super.scaleY;
      }
      
      private function §5214237943237956123423632234§(param1:Event) : void
      {
         if(param1.type == "addedToStage")
         {
            removeEventListener("addedToStage",§5214237943237956123423632234§);
            stage.addEventListener("render",§5214237943237956123423632234§,false,0,true);
            stage.invalidate();
            return;
         }
         var _loc4_:IEventDispatcher = param1.target as IEventDispatcher;
         _loc4_.removeEventListener("render",§5214237943237956123423632234§);
         if(stage == null)
         {
            addEventListener("addedToStage",§5214237943237956123423632234§,false,0,true);
            return;
         }
         §521423136392313652123423632234§ = true;
         var _loc3_:Dictionary = §each function import§;
         for(var _loc2_ in _loc3_)
         {
            _loc2_();
            delete _loc3_[_loc2_];
         }
         §521423136392313652123423632234§ = false;
      }
      
      protected function §continue while case§(param1:Object) : DisplayObject
      {
         if(param1 is Class)
         {
            return new param1() as DisplayObject;
         }
         if(param1 is DisplayObject)
         {
            (param1 as DisplayObject).x = 0;
            (param1 as DisplayObject).y = 0;
            return param1 as DisplayObject;
         }
         throw new Error("Skin mismatch " + param1);
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(super.visible == param1)
         {
            return;
         }
         super.visible = param1;
      }
      
      protected function §switch finally final§(param1:String, param2:String = null) : Boolean
      {
         if(Boolean(§package use super§[param1]) || Boolean(§package use super§["all"]))
         {
            return true;
         }
         if(param2 != null)
         {
            if(§package use super§[param2])
            {
               return true;
            }
         }
         return false;
      }
      
      public function §521423141382314151123423632234§(param1:String) : Object
      {
         return §null finally while§[param1];
      }
      
      public function §super for for§(param1:String, param2:Object) : void
      {
         if(§break finally static§[param1] === param2 && !(param2 is TextFormat))
         {
            return;
         }
         §break finally static§[param1] = param2;
         if(§null finally while§[param1] == null)
         {
            §5214237069237082123423632234§("styles");
         }
      }
      
      override public function set y(param1:Number) : void
      {
         §521423106192310632123423632234§(§with package use§,param1);
      }
      
      override public function set width(param1:Number) : void
      {
         if(§for var native§ == param1)
         {
            return;
         }
         setSize(param1,height);
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(param1 == §5214233090233103123423632234§)
         {
            return;
         }
         §5214233090233103123423632234§ = param1;
         §5214237069237082123423632234§("state");
      }
      
      override public function get scaleY() : Number
      {
         return height / §if static§;
      }
      
      override public function get scaleX() : Number
      {
         return width / §5214231528231541123423632234§;
      }
      
      protected function §throw catch set§(param1:Number) : void
      {
         super.scaleY = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         §521423106192310632123423632234§(param1,§521423153572315370123423632234§);
      }
      
      protected function §521423123632312376123423632234§() : void
      {
         §package use super§ = {};
      }
      
      protected function §continue use const§() : void
      {
         §521423123632312376123423632234§();
      }
      
      protected function §use case§() : void
      {
         var _loc1_:Number = rotation;
         rotation = 0;
         var _loc2_:Number = super.width;
         var _loc3_:Number = super.height;
         super.scaleX = super.scaleY = 1;
         setSize(_loc2_,_loc3_);
         §521423106192310632123423632234§(super.x,super.y);
         rotation = _loc1_;
         §5214231528231541123423632234§ = _loc2_;
         §if static§ = _loc3_;
         if(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §with switch include§(param1:String, param2:Object) : void
      {
         if(§null finally while§[param1] === param2 && !(param2 is TextFormat))
         {
            return;
         }
         §null finally while§[param1] = param2;
         §5214237069237082123423632234§("styles");
      }
      
      public function get enabled() : Boolean
      {
         return §5214233090233103123423632234§;
      }
      
      protected function §521423119812311994123423632234§(param1:Function) : void
      {
         if(§521423136392313652123423632234§)
         {
            return;
         }
         §each function import§[param1] = true;
         if(stage != null)
         {
            stage.addEventListener("render",§5214237943237956123423632234§,false,0,true);
            stage.invalidate();
         }
         else
         {
            addEventListener("addedToStage",§5214237943237956123423632234§,false,0,true);
         }
      }
      
      override public function get x() : Number
      {
         return isNaN(§with package use§) ? super.x : §with package use§;
      }
      
      override public function get height() : Number
      {
         return §52142344323456123423632234§;
      }
      
      public function §false while package§() : void
      {
         §5214237069237082123423632234§("all",false);
         §continue use const§();
      }
      
      override public function set scaleY(param1:Number) : void
      {
         setSize(width,§if static§ * param1);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         §for var native§ = param1;
         §52142344323456123423632234§ = param2;
         §5214237069237082123423632234§("size");
      }
      
      protected function §5214233020233033123423632234§(param1:§5214239797239810123423632234§, param2:Object) : void
      {
         for(var _loc3_ in param2)
         {
            param1.§with switch include§(_loc3_,§default catch false§(param2[_loc3_]));
         }
      }
      
      public function §default switch get§() : void
      {
         §continue use const§();
      }
      
      public function §521423106192310632123423632234§(param1:Number, param2:Number) : void
      {
         §with package use§ = param1;
         §521423153572315370123423632234§ = param2;
         super.x = Math.round(param1);
         super.y = Math.round(param2);
      }
      
      protected function §in set use§() : Number
      {
         return super.scaleX;
      }
      
      override public function get y() : Number
      {
         return isNaN(§521423153572315370123423632234§) ? super.y : §521423153572315370123423632234§;
      }
      
      public function §include for final§(param1:String) : void
      {
         §with switch include§(param1,null);
      }
      
      protected function §catch use try§(param1:Number) : void
      {
         super.scaleX = param1;
      }
   }
}

