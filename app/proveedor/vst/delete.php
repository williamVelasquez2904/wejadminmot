<?php require '../../../cfg/base.php'; 
echo $fn->modalWidth('80%');
$row = $mproveedor->poride($prove_ide);
?>
<form action="" class="op-delete-proveedor">
	<?php echo $fn->modalHeader('Borrar proveedor') ?>
	<div class="modal-body">
		<div class="alert alert-info">¿Realmente desea borrar el proveedor seleccionado?<br><small><strong>Nota:</strong> Ésta operación eliminará todo los registros creados para el proveedor</small></div>
		<div class="msj4"></div>
		<div class="table-responsive">
			<table class="table table-bordered">
				<tr>
					<th class="active text-right">Número de Identificación:</th>
					<td><?php echo $row[0]->prove_tipo.'-'.$row[0]->prove_cedrif ?></td>
					<th class="active text-right">Nombre o Razón Social:</th>
					<td><?php echo $row[0]->prove_razonsocial.', '.$row[0]->prove_alias ?></td>
				</tr>
				<tr>
					<th class="active text-right">Fecha de Registro:</th>
					<td><?php echo date('d-m-Y',strtotime($row[0]->prove_fecreg)); ?> (<?php echo $cproveedor->edad($row[0]->prove_fecreg); ?>)</td>
					<th class="active text-right">Teléfono:</th>
					<td><?php echo $row[0]->prove_telcon ?></td>
				</tr>
				<tr>
					<th class="active text-right">Dirección:</th>
					<td><?php echo $row[0]->prove_direcci ?></td>
				</tr>
			</table>
		</div>
	</div>
	<?php echo $fn->modalFooter(1) ?>
	<input type="hidden" name="ide" value="<?php echo $row[0]->prove_ide ?>">
	<input type="hidden" name="fecreg" value="<?php echo $row[0]->prove_fecreg ?>">
</form>
<script>
	$(function(){
		var formulario = '.op-delete-proveedor';
		$(formulario).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				
			},

			messages: {
				
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
				if(confirm('Confirme nuevamente la decisión de eliminar un proveedor')==true) {
					$.post('prc-mproveedor-delete',$(formulario).serialize(),function(data){
						if(data==1) {
							alert('El proveedor fue eliminado satisfactoriamente')
							location.reload();
						} else {
							alerta('.msj4','danger',data)
						}
					})
				}
			},
			invalidHandler: function (form) {
			}
		});
	})
</script>