<?php 
require '../../../cfg/base.php'; 
$fecha_actual = date("Y-m-d");
extract($_POST);
echo $fn->modalWidth('70%');
$origen=$_SESSION['origen_venta_ide'];

/*var_dump("<pre>");
var_dump("Valor de condicion: ".$valor_cond);
var_dump("</pre>");*/

/*var_dump("<br>  Ide de la venta: ".$ide."<br>");*/
$row = $mdesglose->venta_desglose($ide);
/*
var_dump("<pre>");
var_dump($row);
var_dump("</pre>");*/
$monto_venta  = 0;
$monto_contado= 0;
$monto_flete  = 0;

$row_monto_venta= $mdesglose->suma_detallevta_poride($ide); 
/*
var_dump("<pre>");
var_dump($row_monto_venta);
var_dump("</pre>");
*/
if (count($row_monto_venta) > 0){
	$monto_venta    = round($row_monto_venta[0]->monto_venta,2); //  credito
	$monto_contado  = round($row_monto_venta[0]->monto_contado,2); 
	$monto_flete    = round($row_monto_venta[0]->monto_flete,2);
}

//Concatenar los numeros de notas
$row_notas_venta = $mdesglose->lista_detallevta_ordenadopornota($ide);
$ide_compra     = 0;
$cadena_notas = "";
foreach($row_notas_venta as $u):
	//$cadena_notas  =  $cadena_notas && $u->nota;
	if (trim($cadena_notas)=="")
			$cadena_notas  =   $cadena_notas." ". $u->nota;

	else 
				$cadena_notas  =   $cadena_notas." - ". $u->nota;

	$ide_compra      =   $u->desgvtadet_nota_ide;		
endforeach;

$porc_asignado=0;
$mensaje_condicion ="";
if (count($row) > 0) {
	$valor_cond = $row[0]->desgvta_cond;
	$mensaje_condicion   = Funciones::descrip_condicion($valor_cond);

	$row_porc_asignado=$mporcentaje->poride($row[0]->desgvta_porc_asig);
	if (count($row_porc_asignado) > 0){
		$porc_asignado=$row_porc_asignado[0]->porc_monto;
	}
}
/*var_dump("<pre>");
var_dump($ide_compra);
var_dump("</pre>");*/
?>
<?php echo $fn->modalHeader('[envia_venta.php]-300824 Venta en desglose.  Id. de la venta [ '.$ide.'] ') ?>
<div class="modal-body">
	<div class="msj26"></div>
	<form action="" class="enviaventa">
		<fieldset><legend>Datos de la Venta</legend>
		<div class="form-group col-sm-5 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Cliente</label>
			<div class="col-sm-12 col-xs-12">
				<input type="text" class="form-control" name="cliente" id="cliente" value="<?php echo $row[0]->cliente;  ?>" disabled >
			</div>	
		</div>		
		<input type="hidden" class="form-control" name="clien_venta_ide" id="clien_venta_ide" value="<?php echo $row[0]->clien_ide;  ?>" >

		<input type="hidden" class="form-control" name="origen" id="origen" value="2" >
		<input type="hidden" class="form-control" name="ide" id="ide" value="<?php echo $ide; ?>" >

<!-- 		<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Origen de la Venta</label>
					<div class="col-sm-12 col-xs-12">
						<select name="origen" id="origen" >
  							<option value="1" >Directa</option>
  							<option value="2" selected>Por desglose</option>
  							<option value="3" >Taller</option>
						</select>
					</div>
		</div> 		 -->


		<div class="clearfix"></div>

		<div class="form-group col-sm-6 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Nota Venta</label>
			<div class="col-sm-12 col-xs-12">			
				<input type="text" class="form-control" name="f_nota" id="f_nota" value="<?php echo $cadena_notas; ?>" disabled>
			</div>
		</div>
		<input type="hidden" class="form-control" name="nota" id="nota" value="<?php echo $cadena_notas; ?>" >
		<!-- Compra ide -->
		<input type="hidden" class="form-control" name="compra_ide" id="compra_ide" value="<?php echo $ide_compra; ?>" >

		<div class="clearfix"></div>


		<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha Venta:</label>
					<div class="col-sm-12 col-xs-12">
						<div class="input-group">
							<input type="text" name="fec_venta" id="fec_venta" class="form-control fecha" value="<?php echo $fecha_actual; ?>">
							<span class="input-group-addon">
								<i class="icon-calendar bigger-110"></i>
							</span>
						</div>
					</div>
		</div>


		<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">% Descuento </label>
					<div class="col-sm-12 col-xs-12">
						<div class="input-group">
							<input type="text" class="form-control" name="f_porc_desc" id="f_porc_desc"  value="<?php echo $row[0]->porcentaje_nota; ?>" disabled>
						</div>
					</div>
		</div>
		<input type="hidden" name="porc_desc" id="porc_desc"  value="<?php echo $row[0]->porcentaje_nota; ?>">


		<div class="form-group col-sm-5 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Vendedor</label>
				<div class="col-sm-12 col-xs-12">
					<input type="text" class="form-control" name="f_vendedor" value="<?php echo $row[0]->vendedor;  ?>" disabled>
				</div>
		</div>

	<!-- 	<input type="hidden" class="form-control" name="compra_ide" id="compra_ide" value="0" >		 -->
		<input type="hidden" class="form-control" name="vende_ide" id="vende_ide" value="<?php echo $row[0]->desgvta_vende_ide;  ?>" >		

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">% Asignado</label>
				<div class="col-sm-12 col-xs-12">
					<input type="text" class="form-control" name="f_porc_asig" id="f_porc_asig" value="<?php echo $porc_asignado;  ?>"  disabled>		
				</div>
		</div>
		<input type="hidden" class="form-control" name="porc_asig" id="porc_asig" value="<?php echo $row[0]->porcentaje;  ?>" >		
<!-- 
		<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto contado</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="monto_contado" id="monto_contado" value="<?php //echo $r->compra_monto; ?>">
					</div>
		</div> -->

		<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto contado</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="f_monto_contado"  value="<?php echo $monto_contado; ?>"  disabled>
						<input type="hidden" class="form-control" name="monto_contado" id="monto_contado" value="<?php echo $monto_contado; ?>" >
					</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto Crédito</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="f_monto_credito" value="<?php echo $monto_venta  ?>" disabled>
						<input type="hidden" class="form-control" name="monto_credito" id="monto_credito" value="<?php echo $monto_venta  ?>" >
					</div>
		</div>

		<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Condición</label>
					<div class="col-sm-12 col-xs-12">
					<input type="text" class="form-control" name="f_cond" id="f_cond"  value="<?php echo $mensaje_condicion; ?>" disabled>
<!-- 
						<select name="fcond_venta"  onchange="calculaMontoFlete();" disabled>
  							<option value="0" selected>Contado</option>
  							<option value="1" >Crédito</option>
						</select>
 -->					</div>
		</div>

		<input type="hidden" class="form-control" name="cond_venta" id="cond_venta" value="<?php echo $valor_cond; ?>">
		<!-- <input type="hidden" class="form-control" name="cond" id="cond"  value="<?php //echo $valor_cond; ?>" > -->
		<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Flete</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="monto_flete" id="monto_flete" value="<?php echo $monto_flete ?>"  disabled>
					</div>
		</div>
<!-- 		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto flete</label>
			<div class="col-sm-12 col-xs-12">
				<input type="text" class="form-control" name="monto_flete" id="monto_flete" value="<?php //echo $_SESSION['monto_flete']  ?>" disabled>
			</div>
		</div> -->
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Venta flete</label>
			<div class="col-sm-12 col-xs-12">
				<input type="text" class="form-control" name="f_wventa_flete" value="<?php echo $monto_flete ?>" disabled>
			</div>
		</div>
		<input type="hidden" class="form-control" name="wventa_flete" id="wventa_flete"  value="<?php echo $monto_flete ?>" >

		<div class="clearfix"></div>
		<div class="form-group col-sm-1 col-xs-12">
			<button class="btn btn-primary btn-sm pull-right"><span class="i fa fa-check fa-2x"></span> <br>Insertar </button>
		</div>
	</fieldset>		
</form>	

</div>
<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'yyyy-mm-dd',endDate:'-0d'});
	});

</script>
<script>
	$(function(){

		var formulario2 = '.enviaventa';
		$(formulario2).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				fec_venta: {
					required: true,
				},
				clien_venta_ide: {
					required: true,
				}
			},

			messages: {
				fec_venta: {
					required: 'Obligatorio',
				},
				clien_venta_ide: {
					required: 'Obligatorio',
				}
			},

			invalidHandler: function (event, validator) { //display error alert on form submit   
				$('.alert-danger', $(formulario2)).show();
			},

			highlight: function (e) {
				$(e).closest('.form-group').removeClass('has-info').addClass('has-error');
			},

			success: function (e) {
				$(e).closest('.form-group').removeClass('has-error').addClass('has-info');
				$(e).remove();
			},

			submitHandler: function (form) {

				var f_porc_asig		 = document.getElementById('f_porc_asig').value;
				document.getElementById('porc_asig').value=f_porc_asig;

				if(confirm('¿Desea registrar esta venta ?')==true) {	
					$.post('prc-mventa-insert_venta_2',$(formulario2).serialize(),function(data){
						if(!isNaN(data)) {
							load('vst-desglose-lista_venta','','.lista_desgvta'); 
							alert('Registro incluido exitosamente. '); 
							/*$(formulario).each(function(){ this.reset() })*/
							cerrarmodal();
						} else {
							alerta('.msj26','danger',data)
						}
					})
				}	
			},
			invalidHandler: function (form) {
			}
		});
	})
</script>