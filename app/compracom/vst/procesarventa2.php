<?php require '../../../cfg/base.php'; 
echo $fn->modalWidth('90%');
$row_detalle_req=$mrequisicion->listapordetalle($det_req_ide);

$req_ide=0;
//Buscamos ide de la requisicion
foreach($row_detalle_req as $r):
	$req_ide=$r->reqdet_req_ide;
endforeach;	

$vende_ide=0;
$row_req =$mrequisicion->poride($req_ide);
//Buscamos ide del vendedor
foreach($row_req as $req):
	$vende_ide=$req->req_vende_ide;
endforeach;	
/*
var_dump("<pre>");
var_dump($vend_ide);
var_dump("</pre>");
*/
?>
<?php echo $fn->modalHeader("Compra Id:<b> $compra_encab_ide</b>, Orden ide: <b>$orden_ide</b>, Det. Req: <b>$det_req_ide</b> Procesar Venta  ") ?>

	<div class="modal-body">
		<div class="msj"></div>
		<form action="" class="op2 form-horizontal">	
			
			<div class="form-group col-sm-6 col-xs-12">
				<label for="" class="control-label col-sm-6 col-xs-12 bolder">Vendedor:</label>
				<div class="col-sm-6 col-xs-6 inpvendedor"></div>
			</div>

			<div class="form-group col-sm-6 col-xs-12">
				<label for="" class="control-label col-sm-4 col-xs-12 bolder">Fecha:</label>
				<div class="col-sm-4 col-xs-6 inpfecha"></div>
			</div>

			<div class="clearfix"></div>				
			<div class="form-group col-sm-12 col-xs-12">
				<button class="btn btn-primary btn-sm pull-right col-sm-2 col-xs-12">
					<span class="i fa fa-plus fa-2x"></span> 
					<font size="2"> Insertar</font>
				</button>
			</div>
			

		<input type="hidden" class="form-control" name="encab_ide" value="<?php echo $compra_encab_ide ?>">
		<input type="hidden" class="form-control" name="orden_ide" value="<?php echo $orden_ide ?>">		
		<input type="hidden" class="form-control" name="reqdet_ide" value="<?php echo $det_req_ide ?>">
		<button class="btn btn-info btn-sm" title="" onclick="modal('vst-compracom-detacompra','orden_ide=<?php echo $orden_ide?>&compra_encab_ide=<?php echo $compra_encab_ide ?>')">
			<i class="fa fa-arrow-left"></i>
			Volver
		</button>				
		</form>
		<div class="listadetalles"></div>


	</div>
	<?php echo $fn->modalFooter(2); ?>
	<script>
			load('vst-compracom-input.vendedor','vende_ide=<?php echo $vende_ide ?>','.inpvendedor');
			load('vst-compracom-input.fecha','','.inpfecha');
	</script>