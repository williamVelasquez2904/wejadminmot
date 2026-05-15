<?php 
/*extract($_POST);
if(!isset($origen_opcion)){
	$origen_opcion=0;
}	
if(isset($origen_opcion)){
	if ($origen_opcion==1) require '../../../cfg/base.php'; 
	}
?>
*/
//<?php 
//require '../../../cfg/base.php'; 
$fecha_hoy = date('Y-m-d');
/*$fecha_hoy = date('d-m-Y'); // 29-03-2026*/
//var_dump($_POST);echo "Origen opcion: ".$origen_opcion;

require '../../../cfg/base.php'
?>
<div class="alert alert-info">
	<i class="fa fa-exclamation-triangle fa-2x pull-left red"></i> Parámetros Cobranza (28-03-2026) 
</div>
<form action="" class="opventa">
	<div class="msj"></div>
<div class="clearfix"></div>
	<fieldset><legend>Seleccione parámetros</legend>	
		<div class="form-group col-sm-9 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Cliente</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="Cliente" name="clien_ide" id="clien_ide" >
					<option value="0">Todos
					<?php foreach($mcliente->lista() as $c): ?>
						<option value="0">
						<option value="<?php echo $c->clien_ide ?>">
						<?php echo $c->clien_ide.' - '. $c->clien_nombre1.' - '. $c->clien_nombre2 ?></option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>

		<div class="form-group col-sm-1 col-xs-12">
			<button class="btn btn-primary btn-sm pull-right"><span class="i fa fa-check fa-2x"></span> <br> Buscar </button>
		</div>

		<div class="clearfix"></div>

		<div class="form-group col-sm-3 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Proveedor</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="Proveedor" name="prov_ide" id="prov_ide" >
					<option value="0">Todos</option>
					<?php foreach($mproveedor->lista() as $p): ?>
						<option value="<?php echo $p->prove_ide ?>" <?php if ($p->prove_ide==2) { echo "selected"; } ?>> 
						<?php echo  $p->prove_razonsocial ?>
						</option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>


		<div class="form-group col-sm-4 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Vendedor</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="Vendedor" name="vende_ide" id="vende_ide" >
					<option value="0" selected>Seleccione
					<?php foreach($mvendedor->lista() as $c): ?>
						<option value="<?php echo $c->vende_ide ?>">
						<?php echo $c->vende_ide.' - '. $c->vende_alias ?></option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Origen de la Venta</label>
			<div class="col-sm-12 col-xs-12">
				<select name="origen" id="origen">
  					<option value="1" selected>Directa</option>
  					<option value="2" >Por desglose</option>
  					<option value="3" >Taller</option>
				</select>
			</div>
		</div> 	

		<div class="clearfix"></div>
		<div class="form-group col-sm-3 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha Inicio:</label>
			<div class="col-sm-12 col-xs-12">
				<div class="input-group">
					<input type="text" name="f_ini" id="f_ini" class="form-control fecha" value="">
					<span class="input-group-addon">
						<i class="icon-calendar bigger-110"></i>
					</span>
				</div>
			</div>
		</div>		
		<div class="form-group col-sm-3 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha fin:</label>
			<div class="col-sm-12 col-xs-12">
				<div class="input-group">
					<input type="text" name="f_fin" id="f_fin" class="form-control fecha" value="<?php echo $fecha_hoy ?>">
					<span class="input-group-addon">
						<i class="icon-calendar bigger-110"></i>
					</span>
				</div>
			</div>
		</div>		
		<div class="clearfix"></div>

	</fieldset>
	
</form>

<!-- <div class="lista_cobranza"></div> -->

<script>
	/*load('vst-reportes-listacobranza','','.lista_cobranza');*/
</script>
<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'yyyy-mm-dd',endDate:'-0d'});
	});
</script>
<script>
	$(function(){


		var formulario2 = '.opventa';
		$(formulario2).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				porc_ide: {
					required: true,
				},
				clien_ide: {
					required: true,
				}
			},

			messages: {
				porc_ide: {
					required: 'Obligatorio',
				},
				clien_ide: {
					required: 'Obligatorio',
				}
			},

			invalidHandler: function (event, validator) { //display error alert on form submit   
				$('.alert-danger', $(formulario2)).show();
			},

			highlight: function (e) {
				$(e).closest('.form-group').removeClass('has-info').addClass('has-error');
			},

			success: function (e) {
				$(e).closest('.form-group').removeClass('has-error').addClass('has-info');
				$(e).remove();
			},

			submitHandler: function (form) {
		
				var f_clien_ide = $("#clien_ide").val();		
				var f_prov_ide  = $("#prov_ide").val();		
				var f_origen    = $("#origen").val();		
				var f_inip      = $("#f_ini").val();
				var f_finp      = $("#f_fin").val();
				var f_vende_ide = $("#vende_ide").val();

				var dealer=1;

					if (dealer!=0){
						if(f_inip<=f_finp){
							var datos = 'f_ini='+f_inip+
										'&f_fin='+f_finp+
										'&origen='+f_origen+
										'&clien_ide='+f_clien_ide+
										'&prov_ide='+f_prov_ide+
										'&vende_ide='+f_vende_ide
										;
							load('vst-reportes-listacobranza',datos,'.lista_cobranza');
						}else{
							alerta('.msj','danger',"La fecha de Fin no puede ser menor a la de Inicio");
						}
					}else{
						alerta('.msj','danger','Debe Seleccionar un dealer');
					}
			},
			invalidHandler: function (form) {
			}
		});
	})
</script>