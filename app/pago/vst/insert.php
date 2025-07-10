<?php 
require '../../../cfg/base.php';
?>
<?php
	$fecha_actual=date("d-m-Y");
	echo $fn->modalWidth('80%');
	echo $fn->modalHeader('REPORTAR PAGO') 
?>

<div class="modal-body">				
	<div class="msj"></div>
	<fieldset><legend>[insert.php] 10-jul-2025 - Por favor ingrese los datos del Pago </legend>
	<div class="clearfix"></div>	
	<form action="cargarimg"  method="post" enctype="multipart/form-data">

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Proveedor</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="Proveedor" name="prov_ide" id="prov_ide" >
					<option value=""></option>
					<?php foreach($mproveedor->lista() as $p): ?>
						<option value="<?php echo $p->prove_ide ?>" <?php if ($p->prove_ide==2) { echo "selected"; } ?>> 
						<?php echo  $p->prove_razonsocial ?>
						</option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>	
		<div class="form-group col-sm-2">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha</label>
			<div class="col-sm-12 ">
				<div class="input-group">
					<input type="text" name="fec" id="fec" class="form-control fecha" value="<?php echo $fecha_actual; ?>" onchange="generarNombreArchivo();" onclick="generarNombreArchivo();">
					<span class="input-group-addon">
						<i class="icon-calendar bigger-110"></i>
					</span>
				</div>
			</div>
		</div>

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Hora</label>
			<div class="col-sm-12 col-xs-12">
				<input type="text" class="form-control" name="hora" id="hora" value="" onchange="generarNombreArchivo();" onclick="generarNombreArchivo();">
			</div>
		</div>	
					
		<div class="form-group col-sm-3 col-xs-12">
			<label for="" class="label control-label col-sm-12 bolder">Forma de Pago</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" name="forpago" id="forpago" onchange="generarNombreArchivo();" onclick="generarNombreArchivo();">
					<option value="" selected=""></option>
					<?php foreach($mforpago->lista() as $f): ?>
						<option value="<?php echo $f->forpago_ide ?>">
						<?php echo $f->forpago_descrip ?></option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>
		<input type="hidden" class="form-control" name="forpago_desc" value="<?php echo $f->forpago_descrip ?>">

		<div class="form-group col-sm-3">
			<label for="" class="label control-label col-sm-12 bolder">Titular</label>
			<div class="col-sm-12">
				<input type="text" name="titular" id="titular" class="form-control" value="" onchange="generarNombreArchivo();" onclick="generarNombreArchivo();">
			</div>
		</div>
		<div class="clear-fix"></div>
		<div class="form-group col-sm-2">
			<label for="" class="label control-label col-sm-12 bolder">Referencia</label>
			<div class="col-sm-12">
				<input type="text" name="ref" id="ref" class="form-control" value="" onchange="generarNombreArchivo();" onclick="generarNombreArchivo();">
			</div>
		</div>

		<div class="form-group col-sm-2">
			<label for="" class="label control-label col-sm-12 bolder">Aplica a (Cliente)</label>
			<div class="col-sm-12">
				<input type="text" name="aplica" id="aplica" class="form-control" value="" onchange="generarNombreArchivo();" onclick="generarNombreArchivo();">
			</div>
		</div>

		<div class="clearfix"></div>

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto en Bs</label>
				<div class="col-sm-12 col-xs-12">
					<input type="text" class="form-control" name="mto_bs" id="mto_bs" value="" onchange="calculaMontoenDolares();" onclick="calculaMontoenDolares();" >
				</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Factor de cambio</label>
			<div class="col-sm-12 col-xs-12">
				<input type="number" name="tasa"  step="any" id="tasa" class="form-control" value="0.00"  onchange="calculaMontoenDolares();" onclick="calculaMontoenDolares();">
			</div>
		</div>	

		<div class="clearfix"></div>		

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto en Dólares</label>
			<div class="col-sm-12 col-xs-12">
				<input type="text" class="form-control" name="mto" id="mto" value=""  onchange="generarNombreArchivo();" onclick="generarNombreArchivo();">
			</div>
		</div>

		<div class="clearfix"></div>

		<div class="form-group col-sm-7">
			<label for="" class="label control-label col-sm-12 bolder">Imágen del Pago </label>
			<div class="col-sm-12">
				<input type="file" class="form-control" name="file1" id="file1" onclick="validateFile()" onchange="validateFile()">
			</div>	
		</div>
		<div class="clearfix"></div>

		<div class="form-group col-sm-7">
			<label for="" class="label control-label col-sm-12 bolder">Nombre de archivo generado</label>
			<div class="col-sm-12">
				<input type="text" class="form-control" name="nomarc" id="nomarc" >
				<!-- <strong><b><span style="font-size:16px;color: darkred;" id="nombreArchivo"></span></b></strong> -->
			</div>	
		</div>								
		<div class="clearfix"></div>

		<div class="form-group col-sm-7">			
			<div class="col-sm-12">
				<button class="btn btn-primary btn-sm pull-right"><span class="i fa fa-check"></span> Subir Imagen </button>
			</div>	
		</div>
		<div class="clearfix"></div>

	</form>
</div>

<!-- <p>Nombre de archivo generado:</p><br>
<div> </div>
<p><strong><b><span style="font-size:20px;color: darkred;" id="nombreArchivo"></span></b></strong></p>
 -->
<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'dd-mm-yyyy',endDate:'-1d'}); // formato dia mes año 
	})
</script>
<script>


  	function validateFile() {
    	const fileInput = document.getElementById('file1');
    	if (!fileInput.files || fileInput.files.length === 0) {
      	alert('Por favor, selecciona un archivo antes de enviar.');
    	} else {
      		alert('Archivo válido. ¡Puedes proceder!');
        }
  	}

	function convertirAFormato(numero) {
    	// Convertir el número a string
    	let numeroStr = numero.toString();

    	// Reemplazar la coma por "con"
    	numeroStr = numeroStr.replace(",", "con");

    	// Reemplazar el punto por "con"
    	numeroStr = numeroStr.replace(".", "con");

    return numeroStr;
	}


	function nombre_archivo(){
		let nombre=document.getElementById('titular');
		document.getElementById('arch_img').value=nombre;
		return nombre;

	}

	function generarNombreArchivo() {

			var nombreArchivo = "";
			var forma_pago = "";
            var txt_titular   = document.getElementById("titular").value;
            var txt_ref       = document.getElementById("ref").value;
            var txt_fec       = document.getElementById("fec").value;
            var txt_hora       = document.getElementById("hora").value;

            let campoMonto = document.getElementById("mto").value;
            var txt_mto       =convertirAFormato(campoMonto);

            var fp        = document.getElementById("forpago").value;
            var txt_aplica    = document.getElementById("aplica").value;


            if (fp == 1 ){
            	forma_pago="EFECTIVO_DOLARES";
            } else if (fp == 2) {
            	forma_pago="EFECTIVO_BS";
			} else if (fp == 3) {
            	forma_pago="EFECTIVO_COP";
            } else if (fp == 4) {
            	forma_pago="TRANSFERENCIA_DOLARES";
			} else if (fp == 5) {
            	forma_pago="TRANSFERENCIA_BOLIVARES";
			} else if (fp == 6) {
            	forma_pago="TRANSFERENCIA_COP";
            } else if (fp == 7) {
            	forma_pago="ZELLE";
            }

            nombreArchivo = forma_pago +  "_" + 
            txt_mto     + "_" +            
            txt_titular + "_" + 
            txt_ref     + "_" + 
            txt_fec     + "_" + 
            txt_hora    + "_" + 
            txt_aplica  +
            ".png";
            document.getElementById("nomarc").value = nombreArchivo;
            //document.getElementById("nombreArchivo").innerText = nombreArchivo;
            return nombreArchivo;
        }

	function calculaMontoenDolares(){	
		tasa=0;
		factor= 0;
		mto_bs=0;
		mto=0;
		x=0;

		tasa = document.getElementById('tasa').value;
		/*mto_bs = round((document.getElementById('mto_bs').value),2);*/
		mto_bs = document.getElementById('mto_bs').value;


		mto   = mto_bs/tasa;
/*		x = Math.round(mto);*/

		x = redondearDecimales(mto,2);	

		document.getElementById('mto').value=x;
/*		
		 if (document.getElementById('tipo_doc').value==2){
		 	document.getElementById('mto_contado').value=round(montoContado*1.16,2);
		 }

		calculaMontoFlete();*/
		/*alert("entro a calculaMontoContado...");*/
		return x;
	}	

	function redondearDecimales(numero, decimales) {
    numeroRegexp = new RegExp('\\d\\.(\\d){' + decimales + ',}');   // Expresion regular para numeros con un cierto numero de decimales o mas
    if (numeroRegexp.test(numero)) {         // Ya que el numero tiene el numero de decimales requeridos o mas, se realiza el redondeo
        return Number(numero.toFixed(decimales));
    } else {
        return Number(numero.toFixed(decimales)) === 0 ? 0 : numero;  // En valores muy bajos, se comprueba si el numero es 0 (con el redondeo deseado), si no lo es se devuelve el numero otra vez.
    }
}
	
</script>

<script>
	$(function(){
		var formulario = '.op_img';
		$(formulario).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				fec: {
					required: true,
				},
				mto: {
					required: true,
				},
				forpago: {
					required: true,
				},
				titular: {
					required: true,
				},	
				nomarc: {
					required: true,
				},					
				file1: {
					required: true,
				},	
				ref: {
					required: true,
				}
			},


			messages: {
				fec: {
					required: 'Obligatorio',
				},
				mto: {
					required: 'Obligatorio',
				},	
				nomarc: {
					required: 'Obligatorio',
				},								
				file1: {
					required: 'Obligatorio',
				},								
				forpago: {
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

			invalidHandler: function (form) {
			}
		});
	})

</script>