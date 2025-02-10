<?php
require '../../../cfg/base.php'; 
?>
<?php
	$fecha_actual=date("d-m-Y");
	echo $fn->modalWidth('80%');
	echo $fn->modalHeader('Agregar Pago.... prueba 3....') 
?>

				<div class="widget-body"><div class="widget-body-inner" style="display: block;">
					<div class="widget-main">						
						<section style="background:#EAFBFF">
							<br>
							<form action="cargarimag.php"  method="post" enctype="multipart/form-data">

								<div class="form-group">
									<label class="control-label col-sm-2 bolder">Cambiar Imagen del Pago :</label>
									<div class="col-sm-4">
										<input type="file" class="form-control" name="file1">
										<button class="btn btn-primary btn-sm pull-right"><span class="i fa fa-check"></span> Subir Imagen </button>
									</div>
									<label class="control-label col-sm-2 bolder">Logo:</label>
									<div class="col-sm-4">
										<img src="img/logo.png" align="" class="pull-left" height="125 px">
									</div>
								</div>
								<input type="submit" value="Subir Archivo" name="submit">
								<input type="hidden" class="form-control" name="nomarc" value="logo_cliente">
							</form>
							<br>
						</section>
					</div>
				</div></div>

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
		var formulario = '.op_img';
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

			invalidHandler: function (form) {
			}
		});
	})

</script>

