<?php require '../../../cfg/base.php'; 
$ruta_img="";
$row = $mpago->poride($pago_ide); 
foreach($row as $r): 
	$ruta_img="img/pagos/".$r->pago_img;
endforeach; 
?>	
<?php 
echo $fn->modalWidth("60%");
echo $fn->modalHeader('Ver pago: '.$r->pago_img) ?>
<div class="modal-body">
	<div class="msj"></div>
	<div class="form-group">
		<label for="" class="control-label col-sm-3 bolder"><?php echo $r->pago_img; ?></label>
		<div class="col-sm-9">
			<img src="<?php echo $ruta_img; ?>">
		</div>
	</div>
</div>
<?php echo $fn->modalFooter(1) ?>