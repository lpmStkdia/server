package §521423133282313341123423632234§
{
   import §521423148762314889123423632234§.§class set implements§;
   import flash.utils.ByteArray;
   import §native package final§.§521423106362310649123423632234§;
   import §native package final§.§521423167552316768123423632234§;
   import §switch var else§.§dynamic finally package§;
   
   public class §else for§ extends §521423106362310649123423632234§ implements §521423167552316768123423632234§
   {
      
      public const §5214235610235623123423632234§:Boolean = true;
      
      public const §52142323123244123423632234§:Class = §class set implements§;
      
      public function §else for§(param1:§dynamic finally package§)
      {
         super();
      }
      
      public function §5214239183239196123423632234§(param1:ByteArray) : Object
      {
         if(§521423190902319103123423632234§(param1))
         {
            return null;
         }
         var _loc2_:§class set implements§ = new §class set implements§();
         _loc2_.x = param1.readFloat();
         _loc2_.y = param1.readFloat();
         _loc2_.§521423155722315585123423632234§ = param1.readFloat();
         return _loc2_;
      }
      
      public function §null const break§(param1:ByteArray, param2:Object) : void
      {
         if(§5214231950231963123423632234§(param1,param2))
         {
            return;
         }
         if(param2 == null)
         {
            throw new Error("Object is null. Use @ProtocolOptional annotation.");
         }
         var _loc3_:§class set implements§ = §class set implements§(param2);
         param1.writeFloat(_loc3_.x);
         param1.writeFloat(_loc3_.y);
         param1.writeFloat(_loc3_.§521423155722315585123423632234§);
      }
   }
}

