package §5214234413234426123423632234§
{
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Object3D;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class §final const switch§ implements §with const break§
   {
      
      private var §false set final§:§while package extends§;
      
      private var stage:Stage;
      
      private var §5214234341234354123423632234§:§521423140292314042123423632234§;
      
      private var §const catch continue§:Camera3D;
      
      private var §5214233744233757123423632234§:Number;
      
      private var §521423110382311051123423632234§:Number;
      
      private var §try const get§:Vector.<int>;
      
      private var §5214235735235748123423632234§:Vector.<Number>;
      
      private var §for catch native§:Object3D;
      
      public function §final const switch§(param1:§while package extends§, param2:Stage, param3:§521423140292314042123423632234§, param4:Camera3D, param5:Object3D)
      {
         super();
         this.§try const get§ = new Vector.<int>(2);
         this.§5214235735235748123423632234§ = new Vector.<Number>(2);
         this.§false set final§ = param1;
         this.stage = param2;
         this.§5214234341234354123423632234§ = param3;
         this.§const catch continue§ = param4;
         this.§for catch native§ = param5;
      }
      
      public function §function const package§() : void
      {
         this.§for catch native§.rotationZ = this.§each const class§();
         this.§try const get§[1] = this.§try const get§[0];
         this.§try const get§[0] = getTimer();
         this.§5214235735235748123423632234§[1] = this.§5214235735235748123423632234§[0];
         this.§5214235735235748123423632234§[0] = this.§for catch native§.rotationZ;
      }
      
      private function §each const class§() : Number
      {
         var _loc1_:Number = 2 * 3.141592653589793 / this.§const catch continue§.view.width;
         return this.§5214233744233757123423632234§ + (this.§521423110382311051123423632234§ - this.stage.mouseX) * _loc1_;
      }
      
      private function §finally switch false§(param1:MouseEvent) : void
      {
         this.§for catch native§.rotationZ = this.§each const class§();
         var _loc2_:Number = (getTimer() - this.§try const get§[1]) / 1000;
         if(_loc2_ == 0)
         {
            _loc2_ = 0.1;
         }
         this.§5214234341234354123423632234§.§5214234762234775123423632234§ = (this.§for catch native§.rotationZ - this.§5214235735235748123423632234§[1]) / _loc2_;
         this.§false set final§.§521423131642313177123423632234§(this,§false const throw§.§521423998231011123423632234§);
      }
      
      public function §while for null§() : void
      {
         this.stage.removeEventListener("mouseUp",this.§finally switch false§);
      }
      
      public function §521423109442310957123423632234§() : void
      {
         this.stage.addEventListener("mouseUp",this.§finally switch false§);
         this.§5214233744233757123423632234§ = this.§for catch native§.rotationZ;
         this.§521423110382311051123423632234§ = this.stage.mouseX;
         this.§try const get§[0] = getTimer();
         this.§try const get§[1] = this.§try const get§[0];
         this.§5214235735235748123423632234§[0] = this.§for catch native§.rotationZ;
         this.§5214235735235748123423632234§[1] = this.§5214235735235748123423632234§[0];
      }
   }
}

