<?php require '../../../cfg/base.php'; 
$ruta_img="";
$row = $mpago->poride($pago_ide); 
foreach($row as $r): 
	$ruta_img="img/pagos/".$r->pago_img;
endforeach; 
?>	
<head>

  <style>
  	.centrar-img {
  	 display: flex;
  	 justify-content: center;
  	 align-items: center;
  	 height: 50%; /* o una altura fija si lo prefieres */
	}

    .img-responsiva {
      display: block;
      margin: 0 auto;
      max-width: 100%;
      height: auto;
      border: 3px solid #4A90E2;
      border-radius: 8px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.2);
    }
  </style>
</head>

<?php 


echo $fn->modalWidth("90%");
echo $fn->modalHeader('ARCHIVO: '.$r->pago_img) ?>
<div class="modal-body">
	<div class="msj"></div>
	<div class="form-group">
		<!-- <label for="" class="control-label col-sm-3 bolder"><?php //echo $r->pago_titular; ?></label> -->
		<div class="col-sm-9">
			<div class="centrar-img">
				<div style="display:flex; justify-content:center; align-items:center; height:100%;">
  				<img src="<?php echo $ruta_img; ?>" class="img-responsiva">
				</div>
			</div>
			<!-- <img src="<?php //echo $ruta_img; ?>" style="max-width:90%; height:auto;"> -->
			<!-- <img src="<?php //echo $ruta_img; ?>"> -->

		</div>
	</div>
	<div class="clearfix">
</div>
<?php echo $fn->modalFooter(1) ?>