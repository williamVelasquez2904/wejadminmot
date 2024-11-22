<?php 
//require '../cfg/base.php'; 
require '../../../cfg/base.php';
echo $fn->modalWidth('40%');  
extract($_POST);
$desglose_ide=$_SESSION['desglose_ide'];

$_SESSION['desgvta_ide']=$desgvta_ide;
?>
<form action="" class="op_detalle_vta form-horizontal">

	<?php echo $fn->modalHeader('Incluir Venta. NOTAS CON DESCUENTO DEL   '."<B>".$porcentaje."%"."<B>") ?>
	<div class="modal-body">
		<div class="msj_detalle_venta"></div>
		<div class="form-group">
			<label for="" class="control-label col-sm-3 bolder">Monto a Crédito</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="mto">
			</div>
			<label for="" class="control-label col-sm-3 bolder">Monto contado</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="mto_contado">
			</div>			
			<label for="" class="control-label col-sm-3 bolder">Condición</label>
			<div class="col-sm-9">
				<select name="cond" id="cond">
  					<option value="0" selected>Contado</option>
  					<option value="1" >Crédito</option>
				</select>
			</div>
			<label for="" class="control-label col-sm-3 bolder">Nota:</label>
			<div class="col-sm-9">
			<select class="form-control chosen" title="nota" name="compra_ide" id="compra_ide" >
					<option value=""></option>
					<?php foreach($mcompra_wh->pordesglose($desglose_ide,$porcentaje) as $c): ?>
						<option value="<?php echo $c->compra_ide ?>">
							<?php 
							echo $c->compra_num.' - '. $c->compra_porc_desc.' - '. $c->compra_monto.' - '. $c->clien_nombre1; 
							?>
						</option>
					<?php endforeach; ?>
			</select>
			</div>


			<label for="" class="control-label col-sm-3 bolder">Flete</label>
			<div class="col-sm-9">
				<select name="flete" id="flete">
					<option value="5$" >5$</option>
  					<option value="1%" selected>1%</option>
  					<option value="2%" >2%</option>
				</select>
			</div>
			<label for="" class="control-label col-sm-3 bolder">Monto flete</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="mto_flete">
			</div>

			<input type="text" class="form-control" name="desglose_ide" value="<?php echo $desglose_ide; ?>">
			<input type="text" class="form-control" name="desgvta_ide" value="<?php echo $desgvta_ide ?>">
		</div>
	</div>
	<?php echo $fn->modalFooter(1) ?>
</form>
<div class="lista_detallevta"></div>
<script>
	load('vst-desglose-listadetalleventa','desgvta_ide=<?php echo $desgvta_ide; ?>','.lista_detallevta');
</script>
<script>
	$(function(){
		var formulario = '.op_detalle_vta';
		$(formulario).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				mto: {
					required: true,
				}
			},

			messages: {
				mto: {
					required: 'Obligatorio',
				}
			},

			invalidHandler: function (event, validator) { //display error alert on form submit   
				$('.alert-danger', $(formulario)).show();
			},

			highlight: function (e) {
				$(e).closest('.form-group').removeClass('has-info').addClass('has-error');
			},

			success: function (e) {
				$(e).closest('.form-group').removeClass('has-error').addClass('has-info');
				$(e).remove();
			},

			submitHandler: function (form) {
				$.post('prc-mdesglose-insertdetalleventa',$(formulario).serialize(),function(data){
					alerta('.msj_detalle_venta','danger',data);
					if(!isNaN(data)) {
						load('vst-desglose-listadetalleventa','desgvta_ide=<?php echo $desgvta_ide; ?>','.lista_detallevta');
						if(confirm('Registro agregado correctamente.\n¿Desea agregar otro registro?')==true) {
							$(formulario).each(function(){ this.reset() })
						} else {
							cerrarmodal();
						}
					} else {
						alerta('.msj_detalle_venta','danger',data)
					}
				})
			},
			invalidHandler: function (form) {
			}
		});
	})
</script>