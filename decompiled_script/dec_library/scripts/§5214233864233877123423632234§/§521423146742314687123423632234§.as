package §5214233864233877123423632234§
{
   public class §521423146742314687123423632234§ extends §5214238842238855123423632234§
   {
      
      public function §521423146742314687123423632234§()
      {
         super();
      }
      
      override protected function resize() : void
      {
         label.x = -(label.width >> 1) + 12;
         label.y = (label.height >> 1) - 27;
      }
      
      public function §get function return§(param1:Number, param2:Number) : void
      {
         §521423125972312610123423632234§.§5214236856236869123423632234§(param1);
         label.text = Math.min(param2 * 100,100).toFixed() + "%";
         this.resize();
      }
   }
}

