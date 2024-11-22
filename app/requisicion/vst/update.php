<?php require '../../../cfg/base.php'; ?>
<?php foreach($mrequisicion->poride($ide) as $r): 
	if ($r->monto_ordenado>0) {	$montomin=$r->monto_ordenado; }
	else { $montomin=0.01; } ?>
	<form action="" class="op2 form-horizontal">
		<?php echo $fn->modalHeader("Editar Requisición: $ide") ?>
		<div class="modal-body">
			<div class="msj"></div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Vendedor</label>
				<div class="col-sm-9 col-xs-12">
					<select class="form-control chosen" title="Vendedor" name="vende_ide" id="vende_ide" >
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
						<input type="text" name="fec" id="fec" class="form-control fecha" value="<?php echo $r->req_fecha ?>">
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
						<input type="number" name="mto" class="form-control" value="<?php echo $r->req_monto ?>" min="<?php echo $montomin ?>" step="0.01">
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
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'yyyy-mm-dd',endDate:'-0d'});
	})
</script>
<script>
	$(function(){
		var formulario = '.op2';
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
				$.post('prc-mrequisicion-update',$(formulario).serialize(),function(data){
					if(!isNaN(data)) {
						load('vst-requisicion-lista','clien_ide=<?php echo $r->req_clien_ide ?>','.lista');
						alerta('.msj','success','Registro modificado correctamente');
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