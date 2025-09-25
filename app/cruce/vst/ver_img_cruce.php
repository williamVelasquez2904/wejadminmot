<?php require '../../../cfg/base.php'; 
$ruta_img="";
$row = $mcruce->poride($encab_ide); 
//var_dump($encab_ide);//exit;
foreach($row as $r): 
	$ruta_img="img/cruces/".$r->cruce_encab_img;
endforeach; 
//exit;
?>	
	<?php
	echo $fn->modalWidth("80%");
	echo $fn->modalHeader('24-09-25. Ver imagen cruce: '.$ruta_img.' - Encab_ide: '.$encab_ide);
	?>
	<div class="modal-body">
		<div class="msj"></div>
		<div class="form-group">
			<label for="" class="control-label col-sm-3 bolder">Cruce</label>
			<div class="col-sm-9">
				<?php if(strtolower(pathinfo($ruta_img, PATHINFO_EXTENSION)) == 'pdf'): ?>
    <button type="button" onclick="document.getElementById('iframeCruce').style.display='none'; this.style.display='none';" style="position:fixed; top:15px; right:25px; z-index:10000;" class="btn btn-danger btn-sm">
        <span class="fa fa-times"></span> Cerrar
    </button>
    <iframe id="iframeCruce" src="<?php echo $ruta_img; ?>" style="position:fixed; top:0; left:0; width:100vw; height:100vh; border:none; z-index:9999;"></iframe>
<?php else: ?>
    <img src="<?php echo $ruta_img; ?>" style="max-width:100vw; max-height:100vh;">
<?php endif; ?>
			</div>
		</div>
	</div>
	<?php echo $fn->modalFooter(1) ?>