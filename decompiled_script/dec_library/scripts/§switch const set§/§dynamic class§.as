package §switch const set§
{
   import §521423188792318892123423632234§.§521423166662316679123423632234§;
   import §521423188792318892123423632234§.§do function else§;
   import §5214236158236171123423632234§.§521423162912316304123423632234§;
   import §5214238500238513123423632234§.§5214239434239447123423632234§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Object3DContainer;
   import alternativa.engine3d.core.Shadow;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import §do package throw§.§native function implements§;
   
   public class §dynamic class§ extends §52142377123784123423632234§
   {
      
      private var §each use package§:Object3DContainer;
      
      private var §throw function§:Object3DContainer;
      
      private var §5214238423238436123423632234§:Mesh;
      
      private var §521423100792310092123423632234§:Mesh;
      
      public function §dynamic class§(param1:Vector.<Mesh>)
      {
         super(param1[0]);
         this.§each use package§ = new Object3DContainer();
         this.§throw function§ = new Object3DContainer();
         this.§each use package§.name = "tankPart";
         §5214237336237349123423632234§.x = 0;
         §5214237336237349123423632234§.y = 0;
         §5214237336237349123423632234§.z = 0;
         this.§throw function§.mouseEnabled = false;
         §5214237336237349123423632234§.mouseEnabled = false;
         this.§each use package§.addChild(§5214237336237349123423632234§);
         this.§each use package§.addChild(this.§throw function§);
         if(param1.length > 2)
         {
            this.§5214238423238436123423632234§ = param1[1];
            this.§throw function§.x = this.§5214238423238436123423632234§.x;
            this.§throw function§.y = this.§5214238423238436123423632234§.y;
            this.§throw function§.z = this.§5214238423238436123423632234§.z;
            this.§5214238423238436123423632234§.mouseEnabled = false;
            this.§5214238423238436123423632234§.x = 0;
            this.§5214238423238436123423632234§.y = 0;
            this.§5214238423238436123423632234§.z = 0;
            this.§throw function§.addChild(this.§5214238423238436123423632234§);
            this.§521423100792310092123423632234§ = param1[2];
            this.§521423100792310092123423632234§.mouseEnabled = false;
            this.§throw function§.addChild(this.§521423100792310092123423632234§);
         }
      }
      
      override public function §var while static§(param1:§native function implements§) : void
      {
         param1.§521423117612311774123423632234§(this.§each use package§);
      }
      
      override public function §override while switch§(param1:§521423166662316679123423632234§, param2:§521423162912316304123423632234§, param3:Number) : void
      {
         §import finally set§.§case for throw§(param2.§else const include§(),param2.§521423171732317186123423632234§(),param2.§return finally catch§() + 1,0,0,param3);
         §import finally set§.§5214238971238984123423632234§(param1);
         this.§each use package§.x = §import finally set§.§5214233909233922123423632234§;
         this.§each use package§.y = §import finally set§.§while while return§;
         this.§each use package§.z = §import finally set§.§dynamic finally false§;
         var _loc4_:§do function else§ = §5214239434239447123423632234§.§521423114382311451123423632234§;
         §import finally set§.§521423186052318618123423632234§(_loc4_);
         this.§each use package§.rotationX = _loc4_.x;
         this.§each use package§.rotationY = _loc4_.y;
         this.§each use package§.rotationZ = _loc4_.§521423155722315585123423632234§;
      }
      
      override public function §5214238410238423123423632234§(param1:§native function implements§) : void
      {
         param1.§null super get§(this.§each use package§);
      }
      
      override public function set §5214233592233605123423632234§(param1:Number) : void
      {
         super.alpha = param1;
         this.§each use package§.alpha = param1;
      }
      
      override public function §false use var§() : void
      {
         super.§false use var§();
      }
      
      override public function §try finally override§(param1:TextureMaterial, param2:TextureMaterial) : void
      {
         §5214237336237349123423632234§.setMaterialToAllFaces(param1);
         if(this.§5214238423238436123423632234§)
         {
            this.§5214238423238436123423632234§.setMaterialToAllFaces(param1);
            this.§521423100792310092123423632234§.setMaterialToAllFaces(param1);
         }
      }
      
      override public function §521423165402316553123423632234§() : Object3D
      {
         return this.§each use package§;
      }
      
      override public function §521423104962310509123423632234§(param1:Shadow) : void
      {
         super.§521423104962310509123423632234§(param1);
         param1.addCaster(this.§5214238423238436123423632234§);
         param1.addCaster(this.§521423100792310092123423632234§);
      }
      
      public function §5214231713231726123423632234§() : Object3D
      {
         return this.§521423100792310092123423632234§ ? this.§521423100792310092123423632234§ : this.§5214237336237349123423632234§;
      }
      
      override public function §import function var§() : Object3D
      {
         return this.§throw function§;
      }
   }
}

