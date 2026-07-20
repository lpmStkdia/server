package §dynamic var break§
{
   import §521423123782312391123423632234§.§5214238897238910123423632234§;
   import §521423123782312391123423632234§.§use for native§;
   import §5214234079234092123423632234§.§try var do§;
   import §52142396823981123423632234§.§5214231390231403123423632234§;
   import §52142396823981123423632234§.§in var implements§;
   import §52142396823981123423632234§.§override with§;
   import flash.utils.ByteArray;
   import §for use use§.§if package finally§;
   import §package while include§.§each super use§;
   import §package while include§.§get use var§;
   import §package while include§.§while super return§;
   
   public class §521423151882315201123423632234§
   {
      
      public static const §521423188232318836123423632234§:String = "library.xml";
      
      public static const §5214239421239434123423632234§:String = "images.xml";
      
      private var §switch const class§:§5214231390231403123423632234§;
      
      private var §5214231719231732123423632234§:§5214238897238910123423632234§;
      
      private var §521423165622316575123423632234§:§use for native§;
      
      private var §521423119252311938123423632234§:String;
      
      public function §521423151882315201123423632234§(param1:§5214238897238910123423632234§)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("Parameter f6f2b82b is null");
         }
         this.§5214231719231732123423632234§ = param1;
         var _loc3_:ByteArray = param1.§throw function catch§("images.xml");
         if(_loc3_ != null)
         {
            this.§521423165622316575123423632234§ = this.§52142319723210123423632234§(XML(_loc3_.toString()));
         }
         var _loc2_:XML = XML(param1.§throw function catch§("library.xml").toString());
         this.§521423119252311938123423632234§ = §try var do§.§521423193962319409123423632234§(_loc2_.@name);
         this.§switch const class§ = this.§5214239170239183123423632234§(_loc2_);
      }
      
      private function §use const var§(param1:XML) : §while super return§
      {
         var _loc3_:ByteArray = this.§5214231719231732123423632234§.§throw function catch§(param1.@file.toString().toLowerCase());
         var _loc2_:Object = null;
         if(param1.texture.length() > 0)
         {
            _loc2_ = {};
            for each(var _loc5_ in param1.texture)
            {
               _loc2_[§try var do§.§521423193962319409123423632234§(_loc5_.@name)] = _loc5_.attribute("diffuse-map").toString().toLowerCase();
            }
         }
         var _loc4_:String = §try var do§.§5214233696233709123423632234§(param1,"object",null);
         return new §while super return§(_loc3_,_loc4_,_loc2_,this.§5214231719231732123423632234§,this.§521423165622316575123423632234§,§521423119252311938123423632234§);
      }
      
      public function get §5214238018238031123423632234§() : §5214231390231403123423632234§
      {
         return this.§switch const class§;
      }
      
      private function §52142319723210123423632234§(param1:XML) : §use for native§
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc6_:String = null;
         var _loc5_:§use for native§ = new §use for native§();
         for each(var _loc2_ in param1.image)
         {
            _loc3_ = _loc2_.@name;
            _loc4_ = _loc2_.attribute("new-name").toString().toLowerCase();
            _loc6_ = §try var do§.§5214233696233709123423632234§(_loc2_,"alpha",null);
            if(_loc6_ != null)
            {
               _loc6_ = _loc6_.toLowerCase();
            }
            _loc5_.§get function in§(_loc3_,new §if package finally§(this.§5214231719231732123423632234§.§throw function catch§(_loc4_),this.§5214231719231732123423632234§.§throw function catch§(_loc6_)));
         }
         return _loc5_;
      }
      
      private function §5214239170239183123423632234§(param1:XML) : §5214231390231403123423632234§
      {
         var _loc4_:§5214231390231403123423632234§ = new §5214231390231403123423632234§(§try var do§.§521423193962319409123423632234§(param1.@name));
         for each(var _loc3_ in param1.prop)
         {
            _loc4_.§52142345723470123423632234§(this.§521423107512310764123423632234§(_loc3_));
         }
         for each(var _loc2_ in param1.child("prop-group"))
         {
            _loc4_.§521423113772311390123423632234§(this.§5214239170239183123423632234§(_loc2_));
         }
         return _loc4_;
      }
      
      private function §521423124652312478123423632234§(param1:XML) : §each super use§
      {
         var _loc6_:String = param1.@file.toString().toLowerCase();
         var _loc5_:§if package finally§ = this.§521423165622316575123423632234§ == null ? new §if package finally§(this.§5214231719231732123423632234§.§throw function catch§(_loc6_)) : this.§521423165622316575123423632234§.§throw function catch§(_loc6_);
         var _loc2_:Number = §try var do§.§function try§(param1,"origin-x",0.5);
         var _loc3_:Number = §try var do§.§function try§(param1,"origin-y",0.5);
         var _loc4_:Number = §try var do§.§function try§(param1,"scale",1);
         return new §each super use§(_loc5_,_loc2_,_loc3_,_loc4_);
      }
      
      private function §use use const§(param1:XML) : §get use var§
      {
         if(param1.mesh.length() > 0)
         {
            return this.§use const var§(param1.mesh[0]);
         }
         if(param1.sprite.length() > 0)
         {
            return this.§521423124652312478123423632234§(param1.sprite[0]);
         }
         throw new Error("Unknown prop type");
      }
      
      public function get name() : String
      {
         return this.§521423119252311938123423632234§;
      }
      
      private function §521423107512310764123423632234§(param1:XML) : §override with§
      {
         var _loc2_:§override with§ = new §override with§(§try var do§.§521423193962319409123423632234§(param1.@name));
         var _loc4_:XMLList = param1.state;
         if(_loc4_.length() > 0)
         {
            for each(var _loc3_ in _loc4_)
            {
               _loc2_.§5214234722234735123423632234§(§try var do§.§521423193962319409123423632234§(_loc3_.@name),this.§521423179772317990123423632234§(_loc3_));
            }
         }
         else
         {
            _loc2_.§5214234722234735123423632234§("default",this.§521423179772317990123423632234§(param1));
         }
         return _loc2_;
      }
      
      private function §521423179772317990123423632234§(param1:XML) : §in var implements§
      {
         var _loc4_:§in var implements§ = new §in var implements§();
         var _loc2_:XMLList = param1.lod;
         if(_loc2_.length() > 0)
         {
            for each(var _loc3_ in _loc2_)
            {
               _loc4_.§try catch class§(this.§use use const§(_loc3_),Number(_loc3_.@distance));
            }
         }
         else
         {
            _loc4_.§try catch class§(this.§use use const§(param1),0);
         }
         return _loc4_;
      }
   }
}

