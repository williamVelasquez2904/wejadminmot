<?php require '../../../cfg/base.php';
extract($_POST); ?>

<div class="space-20"></div>
<div class="msj"></div>
	<?php echo $fn->modalHeader('SELECCIONE UNA OPCIÓN') ?>
	<form class="param_desg">
		<div class="form-group col-sm-9">
		<label for="" class="control-label col-sm-3 bolder">Seleccione</label>
		
			<div class="col-sm-9">
				<select class="form-control chosen"  name="opcion"  id="opcion">
					<option value="1" selected>Por Ventas</option>
					<option value="2" >Por Nota</option>
				</select>
			</div>
		</div>	
	    <div class="form-group col-sm-3">
			<div class="col-sm-2">	
				<button class="btn btn-primary btn-sm"><i class="fa fa-search"></i></button>
		    </div>
		</div>
	</form>

<div class="clearfix"></div>
<div class="space-10"></div>

<script type="text/javascript">
	$(function(){

	$( ".fecha" ).datepicker({
		autoclose:true
	     }).next().on(ace.click_event, function(){
		  $(this).prev().focus();
	});

		var formulario = '.param_desg';
		$(formulario).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				opcion : {
					required: true,
					date: true
				},
				f_fin : {
					required: true,
					date: true
				},
			},

			messages: {
				f_ini : {
					required: 'Obligatorio',
					date: 'Fecha no válida'
				},
				f_fin : {
					required: 'Obligatorio',
					date: 'Fecha no válida'
				},
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
	        	var f_opcion= document.getElementById('opcion').value;

				if (f_opcion==1){
					modal('vst-desglose-resumenporventa','desg_ide=<?php echo $desg_ide ?>','.resumen');
					//cerrarmodal();
					}
				if (f_opcion==2){
					modal('vst-desglose-resumenpornota','desg_ide=<?php echo $desg_ide ?>','.resumen');
					/*load('vst-desglose-resumenpornota','desg_ide=<?php echo $desg_ide ?>','.resumen');
					cerrarmodal();*/
				}

/*				$.post('prc-mdesglose-insert',$(formulario1).serialize(),function(data1){
					if(!isNaN(data1)) {
						load('vst-desglose-lista','','.main');
						alert('Registro agregado correctamente.');
						$(formulario1).each(function(){ this.reset() });
					} else {
						alerta('.msj1','danger',data1)
					}
				})
*/

			},
			invalidHandler: function (form) {
			}
		});
	})
</script>