<?php require '../../../cfg/base.php';
	echo $fn->modalWidth('80%');
?>
<?php foreach($mcompra_wh->poride($ide) as $r):?>
	<form action="cargarimg_nota"  method="post" enctype="multipart/form-data" class="op2">
	<!-- <form action="" class="op2"> -->
		<?php echo $fn->modalHeader("[upd_img_nota.php] 12-05-2025 | Subir Imagen de la Nota : $ide") ?>
		<div class="modal-body">
			<div class="msj_upd"></div>

<!-- 			<div class="form-group col-sm-7 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Nota</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="nota" name="compra_ide" id="compra_ide"  onclick="getTotalVenta();">
						<option value=""></option>
						<?php //foreach($mcompra_wh->lista_all() as $c): ?>
							<option value="<?php //echo $c->compra_ide ?>" >
								<?php 
								//echo $c->compra_num.' - '.$c->nombre1.' - '. $c->compra_monto;
								?>
							</option>
						<?php //endforeach; ?>
				</select>
			</div>
			</div> 
-->

			<div class="form-group col-sm-7">
				<label for="" class="label control-label col-sm-12 bolder">Imágen de la nota </label>
				<div class="col-sm-12">
					<input type="file" class="form-control" name="file1" id="file1" onclick="validateFile()" onchange="validateFile()">
				</div>	
			</div>

			<div class="form-group col-sm-7">
				<label for="" class="label control-label col-sm-12 bolder">Nombre de archivo generado</label>
				<div class="col-sm-12">
					<input type="text" class="form-control" name="nomarc" id="nomarc" >
					<!-- <strong><b><span style="font-size:16px;color: darkred;" id="nombreArchivo"></span></b></strong> -->
				</div>	
			</div>								
			<div class="clearfix"></div>

			<div class="clearfix"></div>
			<div class="form-group col-sm-7">			
				<div class="col-sm-12">
					<button class="btn btn-primary btn-sm pull-right"><span class="i fa fa-check"></span> Subir Imagen </button>
				</div>	
			</div>
			<div class="clearfix"></div>
		</div>
		<!-- <?php //echo $fn->modalFooter(1) ?> -->
		<input type="hidden" class="form-control" name="ide" value="<?php echo $ide ?>">
	</form>
<?php endforeach; ?>

<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'yyyy-mm-dd',endDate:'-0d'});
	})
</script>

<script>
	function habilitarFlete(){
		let f_destino   = document.getElementById('destino').value;
		
		if (f_destino == 1 || f_destino == 2 || f_destino == 3 ){
				alert("Debe asignar un monto en FLETE.");
				document.getElementById('mto_flete').disabled=false;
				document.getElementById('mto_flete').focus=true;
				
				porc_flete.disabled = false;
				mto_flete.disabled = false;
				
		}
		if (f_destino == 0 ){
				document.getElementById('mto_flete').value=0;
				document.getElementById('mto_flete').disabled=true;
				mto_flete.disabled = true;
				porc_flete.disabled = true;
		}
	}
</script>	

<!-- <script>
	function round(value, decimals) {
  		return Number(Math.round(value+'e'+decimals)+'e-'+decimals);
	}
	function calculaMontoCredito(){
		factor =(100-document.getElementById('porc').value)/100;
		montoCredito = round(document.getElementById('mto_con').value/factor,2);
		document.getElementById('mto_cre').value=montoCredito;
	}
</script>
 -->
<script>
	$(function(){
		var formulario = '.op2';
		$(formulario).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				nomarc: {
					required: true,
				},					
				mto_contado: {
					required: true,
				}
			},

			messages: {
				nomarc: {
					required: 'Obligatorio',
				},				
				mto_contado: {
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
				var f_nota_sustituida   = document.getElementById('nota_sustituida').value;
			
 
				//alert ("valor de destino afuera: "+f_destino.trim());

/*
				if (f_destino.trim() == 0 ){
					if f_mto_flete

				}*/				

				$.post('prc-mcompra_wh-update_matriz',$(formulario).serialize(),function(data){
					if(!isNaN(data)) {
						/*load('vst-compra_wh-lista_matriz','','.lista_matriz');*/
						/*load('vst-compra_wh-lista','','.lista');*/
						load('vst-compra_wh-lista','','.lista');
						alerta('.msj_upd','success','Registro modificado correctamente');
					} else {
						alerta('.msj_upd','danger',data)
					}
				})
			},
			invalidHandler: function (form) {
			}
		});
	}) 
</script>