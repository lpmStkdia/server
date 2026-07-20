package §5214235292235305123423632234§
{
   import §521423101572310170123423632234§.§521423134722313485123423632234§;
   import §521423101572310170123423632234§.§5214237009237022123423632234§;
   import §521423101572310170123423632234§.§default function return§;
   import §521423101572310170123423632234§.§package switch get§;
   import §521423101572310170123423632234§.§set switch each§;
   import §5214232264232277123423632234§.§5214237893237906123423632234§;
   import §dynamic var break§.§521423135872313600123423632234§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import flash.utils.setTimeout;
   import §true use var§.§throw finally continue§;
   
   public class §5214235641235654123423632234§ extends §5214237009237022123423632234§
   {
      
      public static var §521423104832310496123423632234§:§throw finally continue§;
      
      public static const §super super finally§:int = 7;
      
      private static const §521423126952312708123423632234§:int = 0;
      
      private static const §native use super§:int = 1;
      
      private static const §implements use switch§:int = 2;
      
      private static const §const function default§:int = 3;
      
      private static const §521423187212318734123423632234§:String = "proplibs.xml";
      
      private static const §function package with§:String = "map.xml";
      
      private static const §override super final§:Vector.<int> = new <int>[77,65,80,1];
      
      public var §521423182852318298123423632234§:§521423135872313600123423632234§;
      
      public var §521423108062310819123423632234§:ByteArray;
      
      public var §521423163962316409123423632234§:ByteArray;
      
      public var §static catch include§:Vector.<§5214237893237906123423632234§>;
      
      private var §package const if§:§set switch each§;
      
      private var §get use const§:int = -1;
      
      public function §5214235641235654123423632234§(param1:§package switch get§)
      {
         super(param1);
      }
      
      private function §else var else§(param1:XML) : void
      {
         var _loc5_:int = 0;
         var _loc4_:§5214237893237906123423632234§ = null;
         var _loc2_:§switch for final§ = null;
         this.§521423182852318298123423632234§ = new §521423135872313600123423632234§();
         this.§static catch include§ = new Vector.<§5214237893237906123423632234§>();
         for each(var _loc3_ in param1.library)
         {
            _loc5_ = int("0x" + _loc3_.attribute("resource-id").toString());
            _loc4_ = §5214237893237906123423632234§.§switch try§(0,_loc5_);
            this.§static catch include§[§static catch include§.length] = _loc4_;
            _loc2_ = §switch for final§(§521423104832310496123423632234§.§include for use§(_loc4_));
            if(_loc2_ == null)
            {
               throw new Error("Prop library resource [id=" + _loc4_ + "] not found");
            }
            this.§521423182852318298123423632234§.§finally default§(_loc2_.§521423137282313741123423632234§);
         }
      }
      
      override public function get §in super get§() : String
      {
         return "Map";
      }
      
      override public function §override catch get§() : void
      {
         if(this.§get use const§ != 0)
         {
            this.§package const if§.close();
         }
         this.§5214236131236144123423632234§();
         this.§521423108062310819123423632234§ = null;
         this.§521423163962316409123423632234§ = null;
      }
      
      override protected function §521423120912312104123423632234§() : void
      {
         this.§package const if§.close();
         this.§5214236131236144123423632234§();
         switch(this.§get use const§ - 2)
         {
            case 0:
               this.§finally break§();
               break;
            case 1:
               this.§5214236654236667123423632234§();
         }
      }
      
      override public function §null use set§(param1:String, param2:§521423134722313485123423632234§) : void
      {
         super.§null use set§(param1,param2);
         this.§finally break§();
      }
      
      private function §import function extends§(param1:Event) : void
      {
         this.§521423163962316409123423632234§ = this.§package const if§.data;
         this.§5214236131236144123423632234§();
         this.§521423191752319188123423632234§();
         §521423108502310863123423632234§();
      }
      
      override public function §52142316923182123423632234§(param1:§default function return§) : void
      {
         var _loc3_:int = 0;
         var _loc2_:ByteArray = new ByteArray();
         while(_loc3_ < §override super final§.length)
         {
            _loc2_.writeByte(§override super final§[_loc3_]);
            _loc3_++;
         }
         _loc2_.writeInt(this.§521423108062310819123423632234§.length);
         _loc2_.writeBytes(this.§521423108062310819123423632234§);
         _loc2_.writeInt(this.§521423163962316409123423632234§.length);
         _loc2_.writeBytes(this.§521423163962316409123423632234§);
         param1.§set use class§(this,_loc2_);
      }
      
      private function §finally break§() : void
      {
         this.§5214231150231163123423632234§(this.§if super set§,this.§52142364323656123423632234§);
         this.§package const if§.load(new URLRequest(§521423128472312860123423632234§ + "proplibs.xml"));
         this.§get use const§ = 2;
         §include set while§ = "Data requested";
         §5214231431231444123423632234§();
      }
      
      private function §5214231150231163123423632234§(param1:Function, param2:Function) : void
      {
         this.§package const if§ = new §set switch each§();
         this.§package const if§.dataFormat = "binary";
         this.§package const if§.addEventListener("open",param1);
         this.§package const if§.addEventListener("complete",param2);
         this.§package const if§.addEventListener("ioError",this.§for set try§);
         this.§package const if§.addEventListener("securityError",this.§for set try§);
      }
      
      override public function §521423172812317294123423632234§(param1:ByteArray, param2:§521423134722313485123423632234§) : Boolean
      {
         var _loc4_:int = 0;
         this.§5214237869237882123423632234§ = param2;
         if(param1 == null || param1.length < §override super final§.length)
         {
            return false;
         }
         while(_loc4_ < §override super final§.length)
         {
            if(param1.readUnsignedByte() != §override super final§[_loc4_])
            {
               return false;
            }
            _loc4_++;
         }
         var _loc3_:int = param1.readInt();
         this.§521423108062310819123423632234§ = new ByteArray();
         param1.readBytes(this.§521423108062310819123423632234§,0,_loc3_);
         _loc3_ = param1.readInt();
         this.§521423163962316409123423632234§ = new ByteArray();
         param1.readBytes(this.§521423163962316409123423632234§,0,_loc3_);
         this.§521423191752319188123423632234§();
         setTimeout(§521423108502310863123423632234§,0);
         return true;
      }
      
      private function §for set try§(param1:ErrorEvent) : void
      {
         §5214237869237882123423632234§.§in finally return§(this,param1.text);
      }
      
      private function §if super set§(param1:Event) : void
      {
         §include use catch§();
      }
      
      private function §521423161182316131123423632234§(param1:Event) : void
      {
         §include use catch§();
      }
      
      private function §521423191752319188123423632234§() : void
      {
         try
         {
            this.§else var else§(XML(this.§521423108062310819123423632234§.toString()));
         }
         catch(e:Error)
         {
            §5214237869237882123423632234§.§in finally return§(this,e.message + " " + e.getStackTrace());
         }
      }
      
      private function §5214236654236667123423632234§() : void
      {
         this.§5214231150231163123423632234§(this.§521423161182316131123423632234§,this.§import function extends§);
         this.§package const if§.load(new URLRequest(§521423128472312860123423632234§ + "map.xml"));
         this.§get use const§ = 3;
         §5214231431231444123423632234§();
      }
      
      private function §5214236131236144123423632234§() : void
      {
         if(this.§package const if§ == null)
         {
            return;
         }
         this.§package const if§.removeEventListener("open",this.§if super set§);
         this.§package const if§.removeEventListener("complete",this.§52142364323656123423632234§);
         this.§package const if§.removeEventListener("ioError",this.§for set try§);
         this.§package const if§.removeEventListener("securityError",this.§for set try§);
         this.§package const if§ = null;
      }
      
      private function §52142364323656123423632234§(param1:Event) : void
      {
         this.§521423108062310819123423632234§ = this.§package const if§.data;
         this.§5214236131236144123423632234§();
         this.§5214236654236667123423632234§();
      }
   }
}

