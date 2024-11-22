<?php require '../../../cfg/base.php'; 
echo $fn->modalWidth('60%');
$row = $mcliente->lista();
//$r = $mdesglose->poride($ide)
?>
	<?php echo $fn->modalHeader("*verclientes.php* Clientes para  desglose:<b> $ide</b>, "."</b>") ?>
	<div class="modal-body">
		<div class="msj_1"></div>
		<form action="" class="op_desglose_clientes">	

		<div class="form-group col-sm-6 col-xs-12">
			<label for="" class="label control-label col-sm-12 bolder">Buscar Cliente:</label>
			<div class="col-sm-12">
				<input type="text" class="form-control" id="buscarcliente" name="clien">
			</div>
		</div>

		<button class="btn btn-primary btn-sm pull-right col-sm-2 col-xs-12">
				<span class="i fa fa-plus fa-2x"></span> 
				<font size="4"> Insertar</font>
		</button>
		<div class="clearfix"></div>
		<input type="hidden" class="form-control" name="ide" value="<?php echo $ide ?>">
		</form>
		<div class="lista_clientes"></div>
	</div>
	<?php echo $fn->modalFooter(2); ?>

<script>
	load('vst-desglose-lista_clientes','ide=<?php echo $ide ?>','.lista_clientes');
	load('vst-desglose-select.cliente','','.selcliente');
</script>
<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'yyyy-mm-dd',endDate:'-0d'});
	})
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


		var formulario = '.op_desglose_clientes';
		$(formulario).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				mtod: {
					required: true,
				}
			},

			messages: {
				mtod: {
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
				$.post('prc-mdesglose-insert_cliente',$(formulario).serialize(),function(data){
					if(!isNaN(data)) {
						load('vst-desglose-lista_clientes','ide=<?php echo $ide ?>','.lista_clientes');
						alerta('.msj_1','success','Registro incluido correctamente');
					} else {
						alerta('.msj_1','danger',data)
					}
				})
			},
			invalidHandler: function (form) {
			}
		});
	})
</script> 