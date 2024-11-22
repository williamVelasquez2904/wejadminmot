<?php require '../../../cfg/base.php'; 
extract($_POST);
echo $fn->modalWidth('60%'); 
echo "ide del desglose: ".$desg_ide;
?>
<?php foreach($mdesglose->sumanotas($desg_ide) as $r): ?>
	<form action="" class="op_cerrardesglose form-horizontal">
		<?php echo $fn->modalHeader('Cerrar desglose') ?>
		<div class="modal-body">
			<div class="alert alert-danger">¿Realmente desea cerrar  el desglose seleccionado?</div>
			<div class="msj"></div>

			<div class="form-group">
				<label for="" class="control-label col-sm-3 bolder">Id:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="ide2" id="ide2" value="<?php echo $r->desgnota_ide ?>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 bolder">Cliente:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="des" value="<?php echo $r->clien_nombre1 ?>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 bolder">Nota:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="des" value="<?php echo $r->compra_num ?>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 bolder">Monto:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="des" value="<?php echo $r->compra_monto ?>" disabled>
				</div>
			</div>

		</div>
		<?php echo $fn->modalFooter(1) ?>
		<input type="hidden" class="form-control" name="ide" value="<?php echo $r->desgnota_ide ?>">
	</form>
<?php endforeach; ?>