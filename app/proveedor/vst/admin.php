<?php $row = $mproveedor->lista(); ?>
<form action="" class="op0">
	<div class="form-group">
		<label for="" class="label control-label col-sm-12 bolder">Buscar Proveedor:</label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="buscarproveedor" name="prove">
		</div>
		<div class="col-sm-3">
			<button class="btn btn-primary btn-sm"><i class="fa fa-search"></i> Buscar o Registrar</button>
			<button type="button" onclick="location.reload()" class="btn btn-success btn-sm"><i class="fa fa-refresh"></i></button>
		</div>
	</div>
</form>
<div class="clearfix"></div>
<div class="space-10"></div>
<div class="perfil"></div>
<script>
	$(function(){
		var tag_input = $('#buscarproveedor');
		if(! ( /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase())) ) {
			tag_input.tag(
			  {
				placeholder:tag_input.attr('placeholder'),
				//enable typeahead by specifying the source array
				source: [<?php foreach($row as $r): ?> "<?php echo $r->prove_ide.' - '.$r->prove_tipo.$r->prove_cedrif.' - '.$r->prove_razonsocial.' '.$r->prove_alias.' '.$r->prove_correo; ?>", <?php endforeach; ?>]
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
				prove: {
					required: true,
				}
			},

			messages: {
				prove: {
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
				$.post('prc-cproveedor-buscar',$(formulario).serialize(),function(data){
					if(data.trim()=='no') {
						load('vst-proveedor-insert','','.perfil');
					} else {
						load('vst-proveedor-datos.proveedor','prove_ide='+data.trim(),'.perfil');
					}
				})
			},
			invalidHandler: function (form) {
			}
		});
	})
</script>