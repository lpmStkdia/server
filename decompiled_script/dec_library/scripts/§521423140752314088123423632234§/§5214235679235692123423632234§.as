package §521423140752314088123423632234§
{
   import §521423193672319380123423632234§.§package for class§;
   import §5214238547238560123423632234§.§521423151142315127123423632234§;
   
   public class §5214235679235692123423632234§ extends §package for class§
   {
      
      public var §5214233497233510123423632234§:String;
      
      public var suspicionLevel:§521423151142315127123423632234§;
      
      public function §5214235679235692123423632234§(param1:String = "", param2:§521423151142315127123423632234§ = null)
      {
         super();
         this.§5214233497233510123423632234§ = param1;
         this.suspicionLevel = param2;
         §521423117612311774123423632234§(param1);
         §5214233209233222123423632234§("52142371523728123423632234.521423105752310588123423632234");
         §521423117612311774123423632234§(param2);
         §5214233209233222123423632234§("scpacker.networking.protocol.codec.custom.CodecBattleSuspicionLevel");
      }
      
      override public function §5214239737239750123423632234§() : int
      {
         return -751613832;
      }
      
      override public function §521423180452318058123423632234§(param1:Object, param2:int) : void
      {
         switch(param2)
         {
            case 0:
               this.§5214233497233510123423632234§ = param1 as String;
               break;
            case 1:
               this.suspicionLevel = param1 as §521423151142315127123423632234§;
         }
      }
      
      override public function §5214234392234405123423632234§() : §package for class§
      {
         return new §5214235679235692123423632234§();
      }
      
      override public function §521423138342313847123423632234§() : int
      {
         return 32;
      }
   }
}

