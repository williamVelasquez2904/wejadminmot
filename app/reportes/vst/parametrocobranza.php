<?php 
$fecha_hoy = date('d-m-Y'); // formato visual 30-03-2026
require '../../../cfg/base.php';
?>

<div class="alert alert-info">
	<i class="fa fa-exclamation-triangle fa-2x pull-left red"></i> Parámetros Cobranza
</div>

<form action="" class="opventa">
	<div class="msj"></div>
	<div class="clearfix"></div>

	<fieldset>
		<legend>Seleccione parámetros</legend>	

		<!-- CLIENTE -->
		<div class="form-group col-sm-9 col-xs-12">
			<label class="label control-label col-sm-12 bolder">Cliente</label>
			<div class="col-sm-12">
				<select class="form-control chosen" name="clien_ide" id="clien_ide">
					<option value="0">Todos</option>
					<?php foreach($mcliente->lista() as $c): ?>
						<option value="<?php echo $c->clien_ide ?>">
							<?php echo $c->clien_ide.' - '.$c->clien_nombre1.' - '.$c->clien_nombre2 ?>
						</option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>

		<!-- BOTÓN -->
		<div class="form-group col-sm-1 col-xs-12">
			<button class="btn btn-primary btn-sm pull-right">
				<span class="fa fa-check fa-2x"></span><br>Buscar
			</button>
		</div>

		<div class="clearfix"></div>

		<!-- PROVEEDOR -->
		<div class="form-group col-sm-3 col-xs-12">
			<label class="label control-label col-sm-12 bolder">Proveedor</label>
			<div class="col-sm-12">
				<select class="form-control chosen" name="prov_ide" id="prov_ide">
					<option value="0">Todos</option>
					<?php foreach($mproveedor->lista() as $p): ?>
						<option value="<?php echo $p->prove_ide ?>" <?php if ($p->prove_ide==2) echo "selected"; ?>>
							<?php echo $p->prove_razonsocial ?>
						</option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>

		<!-- VENDEDOR -->
		<div class="form-group col-sm-4 col-xs-12">
			<label class="label control-label col-sm-12 bolder">Vendedor</label>
			<div class="col-sm-12">
				<select class="form-control chosen" name="vende_ide" id="vende_ide">
					<option value="0">Seleccione</option>
					<?php foreach($mvendedor->lista() as $c): ?>
						<option value="<?php echo $c->vende_ide ?>">
							<?php echo $c->vende_ide.' - '.$c->vende_alias ?>
						</option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>

		<!-- ORIGEN -->
		<div class="form-group col-sm-2 col-xs-12">
			<label class="label control-label col-sm-12 bolder">Origen</label>
			<div class="col-sm-12">
				<select name="origen" id="origen" class="form-control">
					<option value="1" selected>Directa</option>
					<option value="2">Por desglose</option>
					<option value="3">Taller</option>
				</select>
			</div>
		</div>

		<div class="clearfix"></div>

		<!-- FECHAS -->
		<div class="form-group col-sm-3 col-xs-12">
			<label class="label control-label col-sm-12 bolder">Fecha Inicio</label>
			<div class="col-sm-12">
				<input type="text" name="f_ini" id="f_ini" class="form-control fecha" value="01-01-2026">
			</div>
		</div>

		<div class="form-group col-sm-3 col-xs-12">
			<label class="label control-label col-sm-12 bolder">Fecha Fin</label>
			<div class="col-sm-12">
				<input type="text" name="f_fin" id="f_fin" class="form-control fecha" value="<?php echo $fecha_hoy ?>">
			</div>
		</div>

		<div class="clearfix"></div>
	</fieldset>
</form>

<!-- <div class="lista_cobranza"></div> -->

<script>
$(function(){
	$('.chosen').chosen();
	$('.fecha').datepicker({
		format:'dd-mm-yyyy',
		endDate:'-1d'
	});
});
</script>

<script>
// 🔧 Convertir fecha dd-mm-yyyy → yyyy-mm-dd
function convertirFecha(fecha){
	let partes = fecha.split('-');
	return partes[2] + '-' + partes[1] + '-' + partes[0];
}

$(function(){
	var formulario = '.opventa';

	$(formulario).validate({
		errorElement: 'div',
		errorClass: 'help-block',

		rules: {
			clien_ide: { required: true }
		},

		messages: {
			clien_ide: { required: 'Obligatorio' }
		},

		highlight: function(e){
			$(e).closest('.form-group').addClass('has-error');
		},

		success: function(e){
			$(e).closest('.form-group').removeClass('has-error');
			$(e).remove();
		},

		submitHandler: function(form){

			let f_clien_ide = $("#clien_ide").val();
			let f_prov_ide  = $("#prov_ide").val();
			let f_origen    = $("#origen").val();
			let f_vende_ide = $("#vende_ide").val();

			let f_ini = $("#f_ini").val();
			let f_fin = $("#f_fin").val();

			// 🔥 convertir fechas
			let f_ini_mysql = convertirFecha(f_ini);
			let f_fin_mysql = convertirFecha(f_fin);

			// ✅ validar fechas correctamente
			if (new Date(f_ini_mysql) <= new Date(f_fin_mysql)) {

				let datos = 
					'f_ini=' + f_ini_mysql +
					'&f_fin=' + f_fin_mysql +
					'&origen=' + f_origen +
					'&clien_ide=' + f_clien_ide +
					'&prov_ide=' + f_prov_ide +
					'&vende_ide=' + f_vende_ide;

				load('vst-reportes-listacobranza', datos, '.lista_cobranza');

			} else {
				alerta('.msj','danger',"La fecha fin no puede ser menor a la de inicio");
			}
		}
	});
});
</script>