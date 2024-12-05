<?php require '../../../cfg/base.php'; 
//$ide=1;
//extract($_POST);
//var_dump($ide);
echo $fn->modalWidth('80%');
$r = $mcruce->lista_detalle($ide)  //	 encabezado    ?> 
	<!-- <?php //echo $fn->modalHeader("[insert_detalle.php]. 13-Nov-24 -  Detalles del cruce : ".$r[0]->cruce_encab_ide." - ".$r[0]->pago_titular) ?>   -->
	<?php echo $fn->modalHeader("[insert_detalle.php]. 18-Nov-24 -  Detalles del cruce : ") ?>  
	<div class="modal-body">

		<div class="msj"></div>
		<form action="" class="op_insert_det_cruce">	
			<fieldset><legend> DATOS DE LA NOTA ASOCIADA AL CRUCE  

			</legend>

				<div class="btn-group">
					<button class="btn btn-success btn-xs" title="Ver imágen" onclick="modal('vst-cruce-ver_img_cruce','encab_ide=<?php echo $ide ?> ?>')">
					<i class="fa fa-edit"></i>
					</button>
				</div>
				<div class="form-group col-sm-4 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Seleccione la Nota</label>
					<div class="col-sm-12 col-xs-12">
							<select class="form-control chosen" title="nota" name="nota_ide" id="nota_ide">
							<option value="">Seleccione</option>
							<?php foreach($mcompra_wh->lista_matriz() as $c): ?>
								<option value="<?php echo $c->compra_ide ?>">
									<?php 
									echo $c->compra_num.' - Monto contado: '. $c->compra_monto; 
									?>
								</option>
							<?php endforeach; ?>
						</select>
					</div>
				</div>
				<input type="hidden" class="form-control" name="encab_ide" id="encab_ide" value="<?php echo $ide; ?>">

			<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto Cruce:</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="mto" id="mto"  >
					</div>
			</div>


				<button class="btn btn-primary btn-sm pull-right col-sm-2 col-xs-12" onclick="insertNota()">
					<span class="i fa fa-plus fa-2x"></span> 
					<font size="4"> Insertar</font>
				</button>
			</fieldset>
			<div class="clearfix"></div>

		</form>
		<div class="lista_detalle"></div>		
	</div>			
		
	
		
<?php echo $fn->modalFooter(2); ?>
<script>
	load('vst-cruce-lista_detalle','ide='+<?php echo $ide; ?>,'.lista_detalle');
</script>
<script> 
	$(function(){
		var formulario = '.op_insert_det_cruce';
		$(formulario).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				mto: {
					required: true,
				}
			},

			messages: {
				mto: {
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
				var v_ide        = document.getElementById('encab_ide').value;
						
				$.post('prc-mcruce-insert_detalle',$(formulario).serialize(),function(data){
					if(!isNaN(data)) {
						load('vst-cruce-lista_detalle','ide='+v_ide,'.lista_detalle');
						if(confirm('Registro agregado correctamente.\n¿Desea agregar otro registro?')==true) {
							$(formulario).each(function(){ this.reset() })
						} else {
							cerrarmodal();
						}
					} else {
						alerta('.msj','danger',data)
					}
				})
			},
			invalidHandler: function (form) {
			}
		});
	})
</script>