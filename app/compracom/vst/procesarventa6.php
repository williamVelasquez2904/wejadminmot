<?php require '../../../cfg/base.php'; 
echo $fn->modalWidth('50%');


/*var_dump('<pre>');
var_dump("<br>Monto asignado => ".$monto_asignado);
var_dump('</pre>');
*/
//$monto_asignado1=$monto_asignado;
/*
Se busca si tiene alguna orden de almacen interno relacionado a esa requiscion
*/
$almacen_interno=false;
$orden_almacen_interno=0;
$row_almacen_interno=$mrequisicion->listapordetalleprove($reqdet_req_ide,1);
if (count($row_almacen_interno) > 0 ) {
	$almacen_interno=true;
	foreach($row_almacen_interno as $t):
		$orden_almacen_interno=$t->reqdet_ord_ide;
		$monto_almacen_interno=$t->reqdet_monto;
	endforeach;
	/*
	echo "<br>Orden de Almacen interno:".$orden_almacen_interno."<br>";
	echo "<br>Monto de Almacen interno:".$monto_almacen_interno."<br>";
	*/
}

$row_detalle_req=$mrequisicion->listapordetalle($det_req_ide);

$req_ide=0;
//Buscamos ide de la requisicion
foreach($row_detalle_req as $r):
	$req_ide=$r->reqdet_req_ide;
	echo "<br>Valor de: ".$req_ide;
endforeach;	

$vende_ide=0;

/*var_dump('<pre>');
var_dump("Req=> ".$req_ide);
var_dump('</pre>');
*/
$row_req =$mrequisicion->poride($req_ide);
//Buscamos ide del vendedor
foreach($row_req as $req):
	$vende_ide=$req->req_vende_ide;
endforeach;	

// Buscamos datos de la compra
$descuento=0;
$row_compra_encab=$mcompracom->poride($compra_encab_ide);
if (count($row_compra_encab) > 0 ) {
	$descuento=0;
	foreach($row_compra_encab as $c):
		$descuento=$c->compra_encab_porcentaje;
		
	endforeach;
	/*
	echo "<br>Orden de Almacen interno:".$orden_almacen_interno."<br>";
	echo "<br>Monto de Almacen interno:".$monto_almacen_interno."<br>";
	*/
}


?>

		<?php 
		echo  $fn->modalHeader("Procesar Venta 6") ;
		//$monto_asignado=15000;
		//echo $fn->modalHeader("Compra Id:<b> $compra_encab_ide</b>, Orden ide: <b>$orden_ide</b>, Det. Req: <b>$det_req_ide</b> Procesar Venta  ") 
		?>
<form action="" class="op_venta">
		<div class="msj-clien" id="errores"></div>
		<div class="modal-body">
			<div class="msj"></div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Vendedor:</label>
				<div class="col-sm-9 col-xs-12">
					<select class="form-control chosen" title="Vendedor" name="vende_ide" id="vende_ide">
					<?php foreach($mvendedor->lista() as $m): ?>
						<option value="<?php echo $m->vende_ide ?>"
						<?php if ($m->vende_ide==$vende_ide) echo "selected";?> >
						<?php echo $m->vende_ide.' - '. $m->vende_razonsocial ?></option>
					<?php endforeach; ?>
					</select>
				</div>	
			</div>	
			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Fecha Venta</label>
				<div class="col-sm-9 col-xs-12">
					<div class="input-group">
						<input type="text" name="fec" id="fec" class="form-control fecha" value="<?php echo $compra_encab_fecha ?>">
						<span class="input-group-addon">
							<i class="icon-calendar bigger-110"></i>
						</span>
					</div>
				</div>
			</div>

			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Fecha Envio:</label>
				<div class="col-sm-9 col-xs-12">
					<div class="input-group">
						<input type="text" name="fecha_envio" id="fecha_envio" class="form-control fecha" value="">
						<span class="input-group-addon">
							<i class="icon-calendar bigger-110"></i>
						</span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Fecha Recepción:</label>
				<div class="col-sm-9 col-xs-12">
					<div class="input-group">
						<input type="text" name="fecha_rec" id="fecha_rec" class="form-control fecha" value="">
						<span class="input-group-addon">
							<i class="icon-calendar bigger-110"></i>
						</span>
					</div>
				</div>
			</div>

			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Monto Venta</label>
				<div class="col-sm-9 col-xs-12" >
					<div class="input-group">
						<input type="text" name="mto_vta" id="mto_vta" class="form-control" value="<?php echo $monto_asignado ?>">
					</div>
				</div>
			</div>

			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Monto Almacen</label>
				<div class="col-sm-9 col-xs-12" >
					<div class="input-group">
						<input type="number" name="mto_alm" id="mto_alm" class="form-control" value="<?php echo $monto_almacen_interno ?>">
					</div>
				</div>
			</div>			

			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Descuento</label>
				<div class="col-sm-9 col-xs-12" >
					<div class="input-group">
						<input type="text" name="descuento" id="descuento" class="form-control" value="<?php echo $descuento ?>">
					</div>
				</div>
			</div>						
			<div class="clearfix"></div>
			<div class="form-group">
				<button class="btn btn-primary btn-sm pull-right col-sm-2 col-xs-12">
					<span class="i fa fa-plus fa-2x"></span> 
					<font size="2"> Insertar</font>
				</button>
			</div>		
			<div class="clearfix"></div>				
		</div>					

		<input type="hidden" class="form-control" name="encab_ide" value="<?php echo $compra_encab_ide ?>">
		<input type="hidden" class="form-control" name="orden_ide" value="<?php echo $orden_ide ?>">		
		<input type="hidden" class="form-control" name="reqdet_ide" value="<?php echo $det_req_ide ?>">
		<input type="hidden" class="form-control" name="encab_ide" value="<?php echo $compra_encab_ide ?>">		
		<button class="btn btn-info btn-sm" title="" onclick="modal('vst-compracom-detacompra','orden_ide=<?php echo $orden_ide?>&compra_encab_ide=<?php echo $compra_encab_ide ?>')">
			<i class="fa fa-arrow-left"></i>
			Volver
		</button>				
		</div>
</form>
<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'yyyy-mm-dd',endDate:'-0d'});
	});
</script>

<script>
	$(function(){
		var formulario = '.op_venta';
		$(formulario).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				fec : {
					required: true,
				},
				fecha_rec : {
					required: true,
				},				
				fecha_envio: {
					required: true,
				}
			},

			messages: {
				fec : {
					required: 'Obligatorio',
				},
				fecha_rec : {
					required: 'Obligatorio',
				},
				fecha_envio: {
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
				$.post('prc-mcompracom-insert_venta',$(formulario).serialize(),function(data){
					if(!isNaN(data)) {
						alerta('.msj','success','Venta Registrada satisfactoriamente');
					} else {
						var data1=data.split(' - ');
						
						if (data1[0]=='Cliente se encuentra Inactivo') {
						} else {
							alerta('.msj-clien','danger',data1[0]);
						}
						/*location.href="#errores"*/
					}
				})
			},
			invalidHandler: function (form) {
			}
		});
	})
</script> 