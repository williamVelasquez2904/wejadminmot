<?php
require '../../../cfg/base.php'; 
/*
 $row = $mcliente->lista();
 $_SESSION['desglose_ide'] = $ide ;
 $row_desglose = $mdesglose->poride($ide); 
 $descrip_desglose=funciones::may($row_desglose[0]->desglose_desc);*/
?>
<div class="alert alert-info">
	<i class="fa fa-exclamation-triangle fa-2x pull-left red"></i> COBRANZA  
</div>
<form action="" class="opventa">
	<div class="msj"></div>
<div class="clearfix"></div>
	<fieldset><legend>SELECCIONE parámetros</legend>	
		<div class="form-group col-sm-5 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Cliente</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="Cliente" name="clien" id="clien" >
					<option value="T">Todos</option>
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
					<option value="T">Todos</option>
					<?php foreach($mporcentaje->lista_tipo("venta") as $c): ?>
						<option value="<?php echo $c->porc_ide ?>">
						<?php echo  $c->porc_monto ?>%</option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>

		<div class="form-group col-sm-1 col-xs-12">
			<button class="btn btn-primary btn-sm pull-right"><span class="i fa fa-check fa-2x"></span> <br> Buscar </button>
		</div>

		<div class="clearfix"></div>

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha Inicio:</label>
			<div class="col-sm-12 col-xs-12">
				<div class="input-group">
					<input type="text" name="f_ini" id="fec_vta" class="form-control fecha" value="">
					<span class="input-group-addon">
						<i class="icon-calendar bigger-110"></i>
					</span>
				</div>
			</div>
		</div>		
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha fin:</label>
			<div class="col-sm-12 col-xs-12">
				<div class="input-group">
					<input type="text" name="f_fin" id="fec_vta" class="form-control fecha" value="">
					<span class="input-group-addon">
						<i class="icon-calendar bigger-110"></i>
					</span>
				</div>
			</div>
		</div>		
		<div class="clearfix"></div>
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
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Condición </label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" name="condicion" id="condicion">
						<option value="T">Todos</option>
						<option value="0" selected>Contado</option>
						<option value="1" >Crédito</option>
				</select>
			</div>
		</div>		

		<div class="clearfix"></div>

	</fieldset>
	
</form>
<div class="clearfix"></div>
<div class="space-10"></div>
<div class="lista_cobranza"></div>


<script>
	/*load('vst-reportes-listacobranza','','.lista_cobranza');*/
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
				porc_ide: {
					required: true,
				},
				clien_ide: {
					required: true,
				}
			},

			messages: {
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
				
				var f_inip= $("#f_ini").val();
				var f_finp= $("#f_fin").val();


				/*var dealer=$("#dealer").val();*/
				var dealer=1;

					if (dealer!=0){
						if(f_inip<=f_finp){
							/*load('vst-reportes-listacobranza','f_ini='+f_inip+'&f_fin='+f_finp+'&dealer='+dealer,'.libroventa');*/
							load('vst-reportes-listacobranza','f_ini='+f_inip+'&f_fin='+f_finp,'.lista_cobranza');
						}else{
							alerta('.msj','danger',"La fecha de Fin no puede ser menor a la de Inicio");
						}
					}else{
						alerta('.msj','danger','Debe Seleccionar un dealer');
					}
			},
			invalidHandler: function (form) {
			}
		});
	})
</script>