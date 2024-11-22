<?php require '../../../cfg/base.php'; 
$ruta_img="";
$row = $mcruce->poride($encab_ide); 
foreach($row as $r): 
	$ruta_img="img/cruces/".$r->cruce_encab_img;
endforeach; 
?>	
	<?php 
	echo $fn->modalWidth("60%");
	echo $fn->modalHeader('Ver imagen cruce: '.$ruta_img) ?>
	<div class="modal-body">
		<div class="msj"></div>
		<div class="form-group">
			<label for="" class="control-label col-sm-3 bolder">Cruce</label>
			<div class="col-sm-9">
				
				<img src="<?php echo $ruta_img; ?>">
<!-- 
				<img src="/img/pagos/370_Kleman_Rondon.png">
				<img src="/../../../img/pagos/370_Kleman_Rondon.png">
				<img src="../../../img/pagos/370_Kleman_Rondon.png">
				<img src="/../../img/pagos/370_Kleman_Rondon.png">
				<img src="/../img/pagos/370_Kleman_Rondon.png">
				<img src="../img/pagos/370_Kleman_Rondon.png"> -->
			</div>
		</div>
	</div>
	<?php echo $fn->modalFooter(1) ?>