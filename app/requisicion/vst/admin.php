<?php $row = $mcliente->lista(); ?>
<form action="" class="op0">
	<div class="form-group">
		<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Buscar Cliente...:</label>
		<div class="col-sm-9 col-xs-12">
			<input type="text" class="form-control" id="buscarcliente" name="clien">
		</div>
		<div class="col-sm-3 col-xs-12">
			<button class="btn btn-primary btn-sm"><i class="fa fa-search"></i> Buscar o Registrar</button>
			<button type="button" onclick="location.reload()" class="btn btn-success btn-sm"><i class="fa fa-refresh"></i></button>
		</div>
	</div>
</form>
<div class="clearfix"></div>
<div class="space-10"></div>
<div class="perfil"></div>
<div class="clearfix"></div>
<div class="requisicion"></div>
<div class="clearfix"></div>
<div class="lista"></div>
<script>
	//05/12/2023
	load('vst-requisicion-lista','','.lista');
</script>

<script>
	/*load('vst-requisicion-lista',,'.lista');*/
	$(function(){
		var tag_input = $('#buscarcliente');
		if(! ( /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase())) ) {
			tag_input.tag(
			  {
				placeholder:tag_input.attr('placeholder'),
				//enable typeahead by specifying the source array
				source: [<?php foreach($row as $r): ?> "<?php echo $r->clien_ide.' - '.$r->clien_codigo.' - '.$r->clien_tipcli.$r->clien_numiden.' - '.$r->clien_apelli1.' '.$r->clien_apelli2.' '.$r->clien_nombre1.' '.$r->clien_nombre2.' '.$r->clien_correo; ?>", <?php endforeach; ?>]
			  }
			);
		}
		else {
			//display a textarea for old IE, because it doesn't support this plugin or another one I tried!
			tag_input.after('<textarea id="'+tag_input.attr('id')+'" name="'+tag_input.attr('name')+'" rows="3">'+tag_input.val()+'</textarea>').remove();
			//$('#form-field-tags').autosize({append: "\n"});
		}

		var formulario = '.op0';
		$(formulario).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				clien: {
					required: true,
				}
			},

			messages: {
				clien: {
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
				$.post('prc-ccliente-buscar',$(formulario).serialize(),function(data){
					if(data.trim()=='no') {
						load('vst-cliente-insert','','.perfil');
					} else {
						load('vst-requisicion-datos.personales','clien_ide='+data.trim(),'.perfil');
						load('vst-requisicion-insert','clien_ide='+data.trim(),'.requisicion');
						load('vst-requisicion-lista','clien_ide='+data.trim(),'.lista');
					}
				})
			},
			invalidHandler: function (form) {
			}
		});
	})
</script>