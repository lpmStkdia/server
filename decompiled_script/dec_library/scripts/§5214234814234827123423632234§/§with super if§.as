package §5214234814234827123423632234§
{
   import §521423138512313864123423632234§.§5214233024233037123423632234§;
   import §5214234047234060123423632234§.§521423129042312917123423632234§;
   import flash.display.Bitmap;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import §get package null§.§try use break§;
   
   public class §with super if§ extends Sprite
   {
      
      private var §catch continue§:Bitmap;
      
      private var label:§521423129042312917123423632234§;
      
      private var color:uint = 16777215;
      
      private var §default package package§:uint = 11645361;
      
      private var §52142355823571123423632234§:Shape;
      
      private var §false set const§:Boolean = false;
      
      public function §with super if§(param1:int = 0)
      {
         super();
         mouseEnabled = false;
         this.label = new §521423129042312917123423632234§();
         this.§catch continue§ = §try use break§.§5214235189235202123423632234§();
         addChild(this.label);
         addChild(this.§catch continue§);
         this.§catch continue§.y = 4;
         this.§catch super with§(param1);
      }
      
      public function §final super for§(param1:int) : void
      {
         this.label.sharpness = param1;
      }
      
      public function §if function with§(param1:int) : void
      {
         this.§default package package§ = param1;
      }
      
      public function §with while switch§(param1:int) : void
      {
         this.color = param1;
         if(!this.§false set const§)
         {
            this.label.textColor = param1;
         }
      }
      
      public function §521423155512315564123423632234§(param1:Boolean) : void
      {
         var _loc2_:Graphics = null;
         var _loc3_:int = 0;
         this.§false set const§ = param1;
         if(this.§52142355823571123423632234§ == null)
         {
            this.§52142355823571123423632234§ = new Shape();
         }
         if(param1)
         {
            this.label.textColor = this.§default package package§;
            _loc2_ = this.§52142355823571123423632234§.graphics;
            _loc2_.clear();
            _loc2_.lineStyle(1,this.§default package package§);
            _loc3_ = int(this.label.y + this.label.height * 0.5) + 1;
            _loc2_.moveTo(0,_loc3_);
            _loc2_.lineTo(0 + width + 2,_loc3_);
            if(!contains(this.§52142355823571123423632234§))
            {
               addChild(this.§52142355823571123423632234§);
            }
         }
         else
         {
            this.label.textColor = this.color;
            if(contains(this.§52142355823571123423632234§))
            {
               removeChild(this.§52142355823571123423632234§);
            }
         }
      }
      
      public function §catch super with§(param1:int) : void
      {
         this.label.text = §5214233024233037123423632234§.§521423169102316923123423632234§(param1,false);
         this.§catch continue§.x = this.label.x + this.label.textWidth + 5;
         this.§521423155512315564123423632234§(false);
      }
      
      public function §include var override§(param1:String) : void
      {
         this.label.text = param1;
         this.§catch continue§.x = this.label.x + this.label.textWidth + 5;
      }
   }
}

