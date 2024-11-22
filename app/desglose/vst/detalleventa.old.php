<?php 
extract($_POST);
echo "<br>Ide desglose: ".$_SESSION['desglose_ide']."<br>";
//var_dump($ide);
//echo $ide;
$_SESSION['desgvta_ide']=$desgvta_ide;
//$_SESSION['desgvta_ide']=2;
		   //desgvta_ide 
//$clien_ide=5;
echo "<br>Ide del cliente: ".$clien_ide."<br>";
echo "<br>ide de la venta: ".$desgvta_ide."<br>";

 ?>
 <?php require '../../../cfg/base.php'; ?>
<form action="" class="op_detalle_vta form-horizontal">
	<?php echo $fn->modalHeader('detalleventa.php AQUI - Agregar Monto para una Nota de entrega') ?>
	<div class="modal-body">
		<div class="msj"></div>
		<div class="form-group">
			<label for="" class="control-label col-sm-3 bolder">Monto:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="mto">
			</div>

			<label for="" class="control-label col-sm-12 col-xs-12 bolder">SELECCIONE NOTA de entrega</label>
			<div class="col-sm-12 col-xs-12 selnotas"></div>
		</div>
	</div>
	<label for="" class="control-label col-sm-3 bolder">Ide </label>
	<input type="text" class="form-control" name="desglose_ide" value="<?php echo $_SESSION['desglose_ide'] ?>">
	<input type="text" class="form-control" name="desgvta_ide" value="<?php echo $desgvta_ide ?>">

	<?php echo $fn->modalFooter(1) ?>
</form>

<div class="lista_detallevta"></div>
<script>
	load('vst-desglose-select.notas.desglose','desglose_ide=<?php echo $_SESSION['desglose_ide']; ?>','.selnotas');
	load('vst-desglose-listadetalleventa','desgvta_ide=<?php echo $desgvta_ide; ?>','.lista_detallevta');
</script>
<script>

function CalculaMontoNota(){
	return 0;
/*
    let cbxNotas = document.getElementById('compra_ide');
    let nota_ide = cbxNotas.value;

    document.getElementById('nota_ide').innerText = "Ud. ha seleccionado el lenguaje ${nota_ide}.";*/
}
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
				$.post('prc-mdesglose-prueba',$(formulario).serialize(),function(data){
					if(!isNaN(data)) {
						load('vst-desglose-listadetalleventa','desgvta_ide=<?php echo $desgvta_ide; ?>','.lista_detallevta');
						if(confirm('Registro agregado correctamente.\n¿Desea agregar otro registro?')==true) {
							$(formulario).each(function(){ this.reset() })
						} else {
							cerrarmodal();
						}
					} else {
						alerta('.msj','danger',data)
					}
				})
			},
			invalidHandler: function (form) {
			}
		});
	})
</script> 