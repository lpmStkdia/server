package §with super for§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.Material;
   
   public class §5214236725236738123423632234§ extends §include switch static§
   {
      
      private static const §if set get§:Number = 0.815;
      
      private static const §true finally function§:Number = 0.182;
      
      public function §5214236725236738123423632234§(param1:Number, param2:Number, param3:Material, param4:Material, param5:Material, param6:Material, param7:Material)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function §function const package§() : void
      {
         var _loc11_:Number = this.§5214235714235727123423632234§ / 100;
         var _loc8_:Number = _loc11_ > 0 ? _loc11_ : -_loc11_;
         alpha = _loc8_ == 1 ? 1 : 0.942;
         var _loc9_:Number = 0.182 + (0.815 - 0.182) * _loc8_;
         _loc8_ = _loc9_ == 0.815 ? 1 : _loc9_;
         var _loc7_:Material = _loc11_ < 0 ? this.§5214239773239786123423632234§ : this.§521423104122310425123423632234§;
         var _loc4_:Material = _loc11_ < 0 ? this.§throw finally with§ : this.§break while null§;
         var _loc1_:Material = _loc8_ == 1 ? _loc4_ : _loc7_;
         var _loc6_:Number = 250;
         var _loc10_:Number = -_loc6_ + 500 * _loc8_;
         var _loc5_:Vertex = this.§package switch for§[0].wrapper.next.next.vertex;
         _loc5_.y = _loc10_;
         _loc5_.v = 1 - _loc8_;
         this.§package switch for§[0].material = _loc1_;
         var _loc3_:Vertex = this.§package switch for§[1].wrapper.next.vertex;
         _loc5_ = this.§package switch for§[1].wrapper.next.next.vertex;
         _loc3_.y = _loc10_;
         _loc3_.v = 1 - _loc8_;
         _loc5_.y = _loc10_;
         _loc5_.v = 1 - _loc8_;
         this.§package switch for§[1].material = _loc1_;
         var _loc2_:Vertex = this.§package switch for§[2].wrapper.vertex;
         _loc3_ = this.§package switch for§[2].wrapper.next.vertex;
         _loc2_.y = _loc10_;
         _loc2_.v = 1 - _loc8_;
         _loc3_.y = _loc10_;
         _loc3_.v = 1 - _loc8_;
         _loc2_ = this.§package switch for§[3].wrapper.vertex;
         _loc2_.y = _loc10_;
         _loc2_.v = 1 - _loc8_;
      }
      
      override protected function §else while each§(param1:Number, param2:Number) : void
      {
         var _loc6_:Number = param1 * 0.25;
         var _loc7_:Number = param2 * 0.25;
         this.§package switch for§ = new Vector.<Face>(4);
         var _loc3_:Vertex = this.§var switch set§(-_loc6_,-_loc7_,0,0,1);
         var _loc4_:Vertex = this.§var switch set§(_loc6_,-_loc7_,0,1,1);
         var _loc5_:Vertex = this.§var switch set§(-_loc6_,-_loc7_,0,0,1);
         this.§package switch for§[0] = this.§521423189242318937123423632234§(_loc3_,_loc4_,_loc5_,this.§5214234069234082123423632234§);
         _loc3_ = this.§var switch set§(_loc6_,-_loc7_,0,1,1);
         _loc4_ = this.§var switch set§(_loc6_,-_loc7_,0,1,1);
         _loc5_ = this.§var switch set§(-_loc6_,-_loc7_,0,0,1);
         this.§package switch for§[1] = this.§521423189242318937123423632234§(_loc3_,_loc4_,_loc5_,this.§5214234069234082123423632234§);
         _loc3_ = this.§var switch set§(-_loc6_,-_loc7_,0,0,1);
         _loc4_ = this.§var switch set§(_loc6_,-_loc7_,0,1,1);
         _loc5_ = this.§var switch set§(-_loc6_,_loc7_,0,0,0);
         this.§package switch for§[2] = this.§521423189242318937123423632234§(_loc3_,_loc4_,_loc5_,this.§5214234069234082123423632234§);
         _loc3_ = this.§var switch set§(_loc6_,-_loc7_,0,1,1);
         _loc4_ = this.§var switch set§(_loc6_,_loc7_,0,1,0);
         _loc5_ = this.§var switch set§(-_loc6_,_loc7_,0,0,0);
         this.§package switch for§[3] = this.§521423189242318937123423632234§(_loc3_,_loc4_,_loc5_,this.§5214234069234082123423632234§);
      }
   }
}

