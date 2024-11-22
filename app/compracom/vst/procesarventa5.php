<?php require '../../../cfg/base.php'; 
//echo $fn->modalWidth('90%');
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

		<?php 
		echo  $fn->modalHeader("Procesar Venta") ;
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
						<input type="text" name="fec" id="fec" class="form-control fecha" value="">
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

			<div class="clearfix"></div>
			<div class="form-group">
				<button class="btn btn-primary btn-sm pull-right col-sm-2 col-xs-12">
					<span class="i fa fa-plus fa-2x"></span> 
					<font size="2"> Insertar</font>
				</button>
			</div>		
			<div class="clearfix"></div>				
		</div>					
		<input type="text" class="form-control" name="encab_ide" value="<?php echo $compra_encab_ide ?>">
		<input type="hidden" class="form-control" name="orden_ide" value="<?php echo $orden_ide ?>">		
		<input type="hidden" class="form-control" name="reqdet_ide" value="<?php echo $det_req_ide ?>">
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
				fecha_envio: {
					required: true,
				}
			},

			messages: {
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
						load('vst-cliente-datos.personales','clien_ide='+data.trim(),'.perfil');
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