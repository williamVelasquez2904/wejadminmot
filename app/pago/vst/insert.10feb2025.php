<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
require '../../../cfg/base.php'; 
?>
<form action="" class="op1" enctype="multipart/form-data">
<?php
	$fecha_actual=date("d-m-Y");
	echo $fn->modalWidth('80%');
	echo $fn->modalHeader('Agregar Pago') ?>
	<div class="modal-body">
		<div class="msj"></div>

		<fieldset><legend>[insert 07-02-2025]  - INSERT PAGO </legend>
		<div class="clearfix"></div>

		<div class="form-group col-sm-2">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha</label>
			<div class="col-sm-12 ">
				<div class="input-group">
					<input type="text" name="fec" id="fec" class="form-control fecha" value="<?php echo $fecha_actual; ?>">
					<span class="input-group-addon">
						<i class="icon-calendar bigger-110"></i>
					</span>
				</div>
			</div>
		</div>			

		<input type="text" name="target_file" id="target_file" value="">	

				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Hora</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="hora" id="hora" value="16:00" >
					</div>
				</div>		

		<div class="form-group col-sm-3">
			<label for="" class="label control-label col-sm-12 bolder">Titular</label>
			<div class="col-sm-12">
				<input type="text" name="titular" id="titular" class="form-control" value="" onchange="generarNombreArchivo();" onclick="generarNombreArchivo();">
			</div>
		</div>

		<div class="form-group col-sm-2">
			<label for="" class="label control-label col-sm-12 bolder">Referencia</label>
			<div class="col-sm-12">
				<input type="text" name="ref" class="form-control" value="">
			</div>
		</div>
		<div class="form-group col-sm-3">
			<label for="" class="label control-label col-sm-12 bolder">Corresponde al Cliente</label>
			<div class="col-sm-12">
				<input type="text" name="cte" class="form-control" value="">
			</div>
		</div>

		<div class="clearfix"></div>		
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 bolder">Forma de Pago</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" name="forpago" id="forpago">
					<option value="" selected=""></option>
					<?php foreach($mforpago->lista() as $f): ?>
						<option value="<?php echo $f->forpago_ide ?>">
						<?php echo $f->forpago_descrip ?></option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>	

				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto en Bs</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="mto_bs" id="mto_bs" value="" onchange="calculaMontoenDolares();" onclick="calculaMontoenDolares();" >
					</div>
				</div>


		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Factor de cambio</label>
			<div class="col-sm-12 col-xs-12">
				<input type="number" name="tasa" id="tasa" class="form-control" value="0.00" min="0.01" onchange="calculaMontoenDolares();" onclick="calculaMontoenDolares();">
			</div>
		</div>	



		<div class="clearfix"></div>

		<div class="form-group col-sm-4">
			<label for="" class="label control-label col-sm-12 bolder">Archivo img </label>
			<div class="col-sm-12">
				
				<input type="text" name="arch_img" id="arch_img" class="form-control">
			</div>
		</div>

		<div class="form-group col-sm-4">
			<label for="" class="label control-label col-sm-12 bolder">Archivo a subir </label>
			<div class="col-sm-12">
				<input type="file" name="fileToUpload" id="fileToUpload" accept=".png">
			</div>
		</div>

		<div class="clearfix"></div>
				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto en Dólares</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="mto" id="mto" value="100" >
					</div>
				</div>

		<div class="clearfix"></div>

	</div>
	<?php echo $fn->modalFooter(1) ?>
</form>
<p>Nombre de archivo generado: <span id="nombreArchivo"></span></p>
<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'dd-mm-yyyy',endDate:'-1d'}); // formato dia mes año 
	})
</script>
<script>

	function nombre_archivo(){
		let nombre=document.getElementById('titular');
		document.getElementById('arch_img').value=nombre;
		return nombre;

	}

	function generarNombreArchivo() {
            var texto1 = document.getElementById("titular").value;
            var texto2 = document.getElementById("titular").value;
            var texto3 = document.getElementById("titular").value;

            var nombreArchivo = texto1 + "_" + texto2 + "_" + texto3 + ".txt";
            document.getElementById("arch_img").innerText = nombreArchivo;
            document.getElementById("nombreArchivo").innerText = nombreArchivo;

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
		var formulario = '.op1';
		$(formulario).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				des: {
					required: true,
				},
				forpago: {
					required: true,
				}
			},


			messages: {
				des: {
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

			submitHandler: function (form) {
				var $flag        =true;				
				var f_forpago    = document.getElementById('forpago').value;
				var f_arch_img    = document.getElementById('arch_img').value;
				

				if (f_forpago.trim().length==0){ 
					alert('Debe Seleccionar una  forma de pago. ');
					$flag=false;
				}

				if (f_arch_img.trim().length==0){ 
					alert('Escriba un nombre para la imagen del pago. ');
					$flag=false;
				}
				if ($flag){
					$.post('prc-mpago-insert',$(formulario).serialize(),function(data){
						if(!isNaN(data)) {
							load('vst-pago-lista','','.lista');
							if(confirm('Registro agregado correctamente.\n¿Desea agregar otro registro?')==true) {
								$(formulario).each(function(){ this.reset() })
							} else {
								cerrarmodal();
							}
						} else {
							alerta('.msj','danger',data)
						}
					})
				}
			},
			invalidHandler: function (form) {
			}
		});
	})
</script>