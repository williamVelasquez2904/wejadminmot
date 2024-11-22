<?php require '../../../cfg/base.php'; ?>
<?php foreach($mrequisicion->poride($ide) as $r): ?>
	<form action="" class="op2 form-horizontal">
		<?php echo $fn->modalHeader("Borrar Requisición: $ide") ?>
		<div class="modal-body">
			<div class="alert alert-danger">¿Realmente desea borrar el registro seleccionado?</div>
			<div class="msj"></div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Vendedor</label>
				<div class="col-sm-9 col-xs-12">
					<select class="form-control chosen" title="Vendedor" name="vende_ide" id="vende_ide" disabled>
						<option value=""></option>
						<?php foreach($mvendedor->lista() as $m): ?>
							<option value="<?php echo $m->vende_ide ?>"
								<?php if ($m->vende_ide==$r->req_vende_ide) echo "selected";?> >
							<?php echo $m->vende_ide.'-'. $m->vende_razonsocial ?></option>
						<?php endforeach; ?>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Fecha Requisicion</label>
				<div class="col-sm-9 col-xs-12">
					<div class="input-group">
						<input type="text" name="fec" id="fec" class="form-control fecha" value="<?php echo $r->req_fecha ?>" disabled>
						<span class="input-group-addon">
							<i class="icon-calendar bigger-110"></i>
						</span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Monto</label>
				<div class="col-sm-9 col-xs-12">
					<div class="input-group">
						<input type="number" name="mto" class="form-control" value="<?php echo $r->req_monto ?>" disabled>
					</div>
				</div>
			</div>
		</div>
		<?php echo $fn->modalFooter(1) ?>
		<input type="hidden" class="form-control" name="ide" value="<?php echo $r->req_ide ?>">
	</form>
<?php endforeach; ?>
<script>
	$(function(){
		var formulario = '.op2';
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
				$.post('prc-mrequisicion-delete',$(formulario).serialize(),function(data){
					if(data==1) {
						load('vst-requisicion-lista','clien_ide=<?php echo $r->req_clien_ide ?>','.lista');
						alert('Registro eliminado correctamente');
						cerrarmodal();
					} else {
						alerta('.msj','danger','Imposible eliminar. Existe una restricción de clave foránea')
					}
				})
			},
			invalidHandler: function (form) {
			}
		});
	})
</script>