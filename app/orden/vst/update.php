
<?php require '../../../cfg/base.php'; ?>
<?php foreach($morden->poride($ide) as $r): ?>
	<form action="" class="op2 form-horizontal">
		<?php echo $fn->modalHeader("Editar Orden: $ide") ?>
		<div class="modal-body">
			<div class="msj"></div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Proveedor</label>
				<div class="col-sm-9 col-xs-12">
					<select class="form-control chosen" title="Proveedor" name="prove_ide" id="prove_ide" >
						<option value=""></option>
						<?php foreach($mproveedor->lista() as $p): ?>
							<option value="<?php echo $p->prove_ide ?>"
								<?php if ($p->prove_ide==$r->orden_prove_ide) echo "selected";?> >
							<?php echo $p->prove_ide.' - '. $p->prove_razonsocial ?></option>
						<?php endforeach; ?>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Cliente</label>
				<div class="col-sm-9 col-xs-12">
					<select class="form-control chosen" title="Cliente" name="clien_ide" id="clien_ide" >
						<option value=""></option>
						<?php if ($r->monto_ordenado>0) { ?>
							<?php foreach($mrequisicion->listaclientespororden($ide) as $c): ?>
								<option value="<?php echo $c->req_clien_ide ?>"
									<?php if ($c->req_clien_ide==$r->orden_clien_ide) echo "selected";?> >
								<?php echo $c->req_clien_ide.' - '. $c->clien_nombre1 ?></option>
							<?php endforeach; ?>
						<?php } else { ?>
							<?php foreach($mcliente->lista() as $c): ?>
								<option value="<?php echo $c->clien_ide ?>"
									<?php if ($c->clien_ide==$r->orden_clien_ide) echo "selected";?> >
								<?php echo $c->clien_ide.' - '. $c->clien_nombre1 ?></option>
							<?php endforeach; ?>
						<?php } ?>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Fecha Requisicion</label>
				<div class="col-sm-9 col-xs-12">
					<div class="input-group">
						<input type="text" name="fec" id="fec" class="form-control fecha" value="<?php echo $r->orden_fecha ?>">
						<span class="input-group-addon">
							<i class="icon-calendar bigger-110"></i>
						</span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Orden</label>
				<div class="col-sm-9 col-xs-12">
					<div class="input-group">
						<input type="text" name="control" class="form-control" value="<?php echo $r->orden_control ?>">
					</div>
				</div>
			</div>
		</div>
		<?php echo $fn->modalFooter(1) ?>
		<input type="hidden" class="form-control" name="ide" value="<?php echo $r->orden_ide ?>">
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
				$.post('prc-morden-update',$(formulario).serialize(),function(data){
					if(!isNaN(data)) {
						load('vst-orden-lista','','.lista');
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