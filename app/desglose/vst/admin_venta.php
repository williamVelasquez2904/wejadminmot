<?php 
require '../../../cfg/base.php'; 
 $row = $mcliente->lista();
 $_SESSION['desglose_ide'] = $ide ;
 $row_desglose = $mdesglose->poride($ide); 
 $descrip_desglose=funciones::may($row_desglose[0]->desglose_desc);
?>
<div class="alert alert-info">
	<i class="fa fa-exclamation-triangle fa-2x pull-left red"></i> DESGLOSE   <?php echo $ide."  -  ".$descrip_desglose; ?>
</div>
<form action="" class="opventa">
	<div class="msj"></div>
<div class="clearfix"></div>
	<fieldset><legend>[admin_venta.php] 08-01-2025. SELECCIONE CLIENTE</legend>	
		<div class="form-group col-sm-5 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Cliente</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="Cliente" name="clien" id="clien" >
					<option value=""></option>
					<?php foreach($mcliente->lista() as $c): ?>
						<option value="<?php echo $c->clien_ide ?>">
						<?php echo $c->clien_ide.' - '. $c->clien_nombre1.' - '. $c->clien_nombre2 ?></option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">% Descuento</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="Descuento" name="porc_ide" id="porc_ide" >
					<option value=""></option>
					<?php foreach($mporcentaje->lista_tipo("venta") as $c): ?>
						<option value="<?php echo $c->porc_ide ?>">
						<?php echo  $c->porc_monto ?>%</option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">% Asignado</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="Porcentaje asignado" name="porc_asig" id="porc_asig" >
					<option value=""></option>
					<?php foreach($mporcentaje->lista_tipo("venta") as $c): ?>
						<option value="<?php echo $c->porc_monto ?>">
						<?php echo  $c->porc_monto ?>%</option>
					<?php endforeach; ?>
				</select>
			</div>	
		</div>

		<div class="form-group col-sm-1 col-xs-12">
			<button class="btn btn-primary btn-sm pull-right"><span class="i fa fa-check fa-2x"></span> <br>Insertar </button>
		</div>

		<div class="clearfix"></div>

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha Venta:</label>
			<div class="col-sm-12 col-xs-12">
				<div class="input-group">
					<input type="text" name="fec_vta" id="fec_vta" class="form-control fecha" value="">
					<span class="input-group-addon">
						<i class="icon-calendar bigger-110"></i>
					</span>
				</div>
			</div>
		</div>		
		<div class="form-group col-sm-3 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Vendedor</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="Vendedor" name="vende_ide" id="vende_ide" >
					<option value=""></option>
					<?php foreach($mvendedor->lista() as $c): ?>
						<option value="<?php echo $c->vende_ide ?>">
						<?php echo $c->vende_ide.' - '. $c->vende_alias ?></option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Condicion </label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" name="cond_venta" id="cond_venta">
						<option value="0" selected>Contado</option>
						<option value="1" >Crédito</option>
				</select>
			</div>
		</div>		

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 bolder">Tipo</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" name="tipo" id="tipo">
 
					<option value=""></option>
					<?php foreach($mtipmerc->lista() as $p): ?>
						<option value="<?php echo $p->tipvta_ide ?>">
						<?php echo $p->tipvta_descrip ?></option>
					<?php endforeach; ?>


<!--  					<option value=1 selected>AUTO ASIA</option>					
					<option value=2>CHYZU</option> 
					<option value=3>ACEITE</option>
					<option value=4>PACE FOX</option>
					<option value=5>CASCOS</option>
 -->					 
				</select>
			</div>
		</div>
<!-- 		<div class="clearfix"></div>
		<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Flete</label>
					<div class="col-sm-12 col-xs-12">
						<select class ="form-control" name="flete" id="flete" >
							<option value="0" selected></option>
  							<option value="1" >1%</option>
  							<option value="2" >2%</option>
  							<option value="3" >Monto fijo</option>
						</select>
					</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto flete</label>
			<div class="col-sm-12 col-xs-12">
				<input type="text" class="form-control" name="mto_flete" id="mto_flete" >
			</div>
		</div>

		 -->
		
		<input type="hidden" name="pais" value="<?php echo $pais_ide ?>">
		<input type="hidden" name="desg_ide" id="desg_ide" value="<?php echo $ide ?>"> 
	</fieldset>
	
</form>
<div class="clearfix"></div>
<div class="space-10"></div>
<div class="lista_desgvta"></div>


<button class="btn btn-info btn-sm" title="Cerrar desglose" onclick="modal('vst-desglose-resumenporventa_cierre','desg_ide=<?php echo $ide; ?>')">
	<i class="fa fa-search"></i>
	Cerrar desglose
</button>
<script>
	load('vst-desglose-lista_venta','','.lista_desgvta'); 
</script>
<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'yyyy-mm-dd',endDate:'-0d'});
	});
</script>
<script>
	$(function(){

		var tag_input = $('#buscarcliente');
		if(! ( /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase())) ) {
			tag_input.tag(
			  {
				placeholder:tag_input.attr('placeholder'),
				//enable typeahead by specifying the source array
				source: [<?php foreach($row as $r): ?> "<?php echo $r->clien_ide.' - '.$r->clien_tipcli.$r->clien_numiden.' - '.$r->clien_apelli1.' '.$r->clien_apelli2.' '.$r->clien_nombre1 ?>", <?php endforeach; ?>]
			  }
			);
		}
		else {
			//display a textarea for old IE, because it doesn't support this plugin or another one I tried!
			tag_input.after('<textarea id="'+tag_input.attr('id')+'" name="'+tag_input.attr('name')+'" rows="3">'+tag_input.val()+'</textarea>').remove();
			//$('#form-field-tags').autosize({append: "\n"});
		}
		var formulario2 = '.opventa';
		$(formulario2).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				tipo: {
					required: true,
				},
				porc_ide: {
					required: true,
				},
				clien_ide: {
					required: true,
				}
			},

			messages: {
				tipo: {
					required: 'Obligatorio',
				},
				porc_ide: {
					required: 'Obligatorio',
				},
				clien_ide: {
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
				$.post('prc-mdesglose-insertventa',$(formulario2).serialize(),function(data){
					if(!isNaN(data)) {
						//alert(data);
						load('vst-desglose-lista_venta','','.lista_desgvta');
						alerta('.msj','success','Registro incluido correctamente.'+data);
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