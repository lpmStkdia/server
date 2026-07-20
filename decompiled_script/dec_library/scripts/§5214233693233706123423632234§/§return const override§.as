package §5214233693233706123423632234§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.objects.Mesh;
   
   public class §return const override§
   {
      
      private static var §default switch final§:Object;
      
      private static const §include const each§:Vector.<String> = new <String>["hang_1","hang_2","hang_3","SmHouse008","wall_broke_1","wall_broke_2","Bk_roof1","Bk_roof2","Tree01","Tree02","tube_1","tube_2","tube_3","tube_cor","cliff_3","cliff_1","cliff_2","cliff_4","cliff_inco","cliff_cor","cliff_r2","cliff_ri","Big_Rock04","Big_Rock","Change01","Change02","Corn1","Corn2","Corn3","Corn4","Corn_B","crater","Land02","Land03","Land04","Land05","Land06","Land07","Land08","Land09","Land22","Land33","Line","Med_Rock","rise_g1","rise_g2","rise_g3","rise_g4","rise_g5","rise_g6","Rise_gr1","Rise_gr2","rise_r1","sm_rock1","sm_rock2","up_Brock","Up_Rock","Up_Rock1","Up_Rock2","Up_Rock14","pumpkin","rise_r5","rise_r6","Land"];
      
      public function §return const override§()
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         super();
         if(§default switch final§ == null)
         {
            §default switch final§ = {};
            _loc1_ = int(§include const each§.length);
            while(_loc2_ < _loc1_)
            {
               §default switch final§[§include const each§[_loc2_]] = true;
               _loc2_++;
            }
         }
      }
      
      private function §try package null§(param1:Vector.<Object3D>) : void
      {
         var _loc3_:Mesh = null;
         for each(var _loc4_ in param1)
         {
            if(§default switch final§[_loc4_.name] == null)
            {
               _loc3_ = _loc4_ as Mesh;
               for each(var _loc2_ in _loc3_.faces)
               {
                  _loc2_.smoothingGroups = 0;
               }
            }
         }
      }
      
      public function §5214234228234241123423632234§(param1:Vector.<Object3D>) : void
      {
         this.§try package null§(param1);
         Mesh.calculateVerticesNormalsBySmoothingGroupsForMeshList(param1,0.01);
      }
   }
}

