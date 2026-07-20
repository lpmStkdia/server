package §521423126202312633123423632234§
{
   import flash.text.TextFormat;
   
   public class TanksFontService
   {
      
      private static var embedFonts:Boolean = false;
      
      private static var textFormat:TextFormat = new TextFormat("Tahoma");
      
      public function TanksFontService()
      {
         super();
      }
      
      public static function setTextFormat(param1:TextFormat, param2:Boolean) : void
      {
         TanksFontService.textFormat = param1;
         TanksFontService.embedFonts = param2;
      }
      
      public static function getTextFormat(param1:int) : TextFormat
      {
         return new TextFormat(textFormat.font,param1,textFormat.color,textFormat.bold,textFormat.italic,textFormat.underline,textFormat.url,textFormat.target,textFormat.align,textFormat.leftMargin,textFormat.rightMargin,textFormat.indent,textFormat.leading);
      }
      
      public static function isEmbedFonts() : Boolean
      {
         return embedFonts;
      }
   }
}

