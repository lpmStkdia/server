package §5214231230231243123423632234§
{
   import §521423113872311400123423632234§.§5214239833239846123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Sprite3D;
   
   public class §native while null§ extends §5214235223235236123423632234§
   {
      
      private static const §5214236714236727123423632234§:Number = 130;
      
      private static const §5214239239239252123423632234§:Number = 6;
      
      private static const §default super do§:Number = 0.2;
      
      private static const §521423169332316946123423632234§:Number = 20;
      
      private static const §5214232026232039123423632234§:Number = 0.1;
      
      private static const §if finally break§:int = 5;
      
      private static const §each function continue§:Number = 0.1;
      
      private static const §while const while§:§do function else§ = new §do function else§();
      
      private var §521423112332311246123423632234§:§do function else§ = new §do function else§();
      
      private var §const package set§:TextureMaterial;
      
      private var §521423172712317284123423632234§:§5214239833239846123423632234§;
      
      public function §native while null§()
      {
         super(§function switch each§,0.1,5);
      }
      
      public function §521423126332312646123423632234§(param1:§5214239833239846123423632234§) : void
      {
         this.§521423172712317284123423632234§ = param1;
      }
      
      override protected function §521423121322312145123423632234§(param1:§521423157192315732123423632234§, param2:Number) : void
      {
         var _loc5_:§function switch each§ = §function switch each§(param1);
         var _loc6_:Sprite3D = _loc5_.§final set class§;
         var _loc3_:§do function else§ = _loc5_.§5214239064239077123423632234§;
         _loc3_.§521423155722315585123423632234§ -= 20 * param2;
         _loc6_.x += _loc3_.x;
         _loc6_.y += _loc3_.y;
         _loc6_.z += _loc3_.§521423155722315585123423632234§;
         _loc5_.§5214231249231262123423632234§ += param2;
         if(_loc5_.§5214231249231262123423632234§ > 0.2)
         {
            _loc5_.§5214231249231262123423632234§ = 0.2;
         }
         _loc6_.alpha = 1 - _loc5_.§5214231249231262123423632234§ / 0.2;
         var _loc4_:Number = 1 - _loc6_.alpha;
         if(_loc4_ < 0.1)
         {
            _loc4_ = 0.1;
         }
         _loc6_.scaleX = _loc4_;
         _loc6_.scaleY = _loc4_;
         _loc6_.scaleZ = _loc4_;
         if(_loc6_.alpha <= 0)
         {
            _loc5_.§521423133822313395123423632234§ = false;
         }
      }
      
      override public function §52142367423687123423632234§() : void
      {
         super.§52142367423687123423632234§();
         this.§const package set§ = null;
         this.§521423172712317284123423632234§ = null;
      }
      
      public function §true function override§(param1:§do function else§) : void
      {
         this.§521423112332311246123423632234§.§521423188292318842123423632234§(param1);
      }
      
      override protected function §true use while§(param1:§521423157192315732123423632234§) : void
      {
         var _loc2_:§function switch each§ = §function switch each§(param1);
         this.§521423172712317284123423632234§.§521423189332318946123423632234§(_loc2_.§final set class§);
      }
      
      override protected function §5214238058238071123423632234§(param1:§521423157192315732123423632234§) : void
      {
         var _loc2_:§function switch each§ = §function switch each§(param1);
         var _loc3_:Number = 130 + Math.random() * 130 / 2;
         var _loc4_:Sprite3D = _loc2_.§final set class§;
         §while const while§.x = Math.random() * 2 - 1;
         §while const while§.y = -Math.random();
         §while const while§.§521423155722315585123423632234§ = Math.random() * 2 - 1;
         §while const while§.§class while dynamic§();
         §while const while§.§521423128812312894123423632234§(6);
         _loc2_.§5214239350239363123423632234§(_loc3_,this.§521423112332311246123423632234§,§while const while§,this.§const package set§);
         this.§521423172712317284123423632234§.§521423132922313305123423632234§(_loc4_);
      }
      
      public function §extends const class§(param1:TextureMaterial) : void
      {
         this.§const package set§ = param1;
      }
   }
}

