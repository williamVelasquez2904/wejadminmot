<style>
@keyframes parpadeo {
  0% { opacity: 1; }
  50% { opacity: 0.3; }
  100% { opacity: 1; }
}
</style>

<style>
  #btnDelete.enabled {
    background-color: #28a745 !important; /* Verde Bootstrap */
    border-color: #28a745 !important;
    color: white !important;
  }
</style>

<?php require '../../../cfg/base.php'; ?>
<?php foreach($mventa_wh->poride($ide) as $r): ?>
	<form action="" class="op2 form-horizontal">
		<?php echo $fn->modalHeader('Borrar Venta') ?>
		<div class="modal-body">

			<div class="alert alert-danger">
				<div style="animation: parpadeo 1s infinite; color:red; font-size:1.4em; font-weight:bold; text-align:center;">
  					⚠️ ¿Realmente desea borrar esta Venta: <?php echo $ide ?>?
				</div>

				<!-- 22-07-2025 Realmente desea borrar esta Venta: <?php //echo //$ide ?>? -->
				<div class="form-group text-center" style="margin-top:10px;">
				  <label>
				    <input type="checkbox" id="confirmDelete"> He leído y confirmo que deseo borrar esta venta.
				  </label>
				</div>

			</div>
			<div class="msj"></div>
			<div class="form-group">



				<label for="" class="control-label col-sm-3 bolder">Cliente:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="des" value="<?php echo $r->cliente_venta ?>" disabled>
				</div>
			</div>
		</div>
		<!-- <?php //echo $fn->modalFooter_borrar(1) ?> -->
		<div class="modal-footer">
      			<button class="btn btn-default" type="button" data-bb-handler="cancel" data-dismiss="modal">Cerrar</button>
      			<button class="btn btn-primary" type="submit" id="btnDelete" disabled>Borrar</button>
    	</div>
		<input type="hidden" class="form-control" name="ide" value="<?php echo $r->venta_ide ?>">
	</form>
<?php endforeach; ?>

<script>
document.addEventListener('DOMContentLoaded', function() {
  const checkbox = document.getElementById('confirmDelete');
  const deleteBtn = document.getElementById('btnDelete');

  if (checkbox && deleteBtn) {
    checkbox.addEventListener('change', function () {
      if (this.checked) {
        deleteBtn.disabled = false;
        deleteBtn.classList.add('enabled');
      } else {
        deleteBtn.disabled = true;
        deleteBtn.classList.remove('enabled');
      }
    });
  }
});
</script>

<script>
	$(function(){
		var formulario = '.op2';
		$(formulario).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				
			},

			messages: {
				
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
				$.post('prc-mventa_wh-delete',$(formulario).serialize(),function(data){
					/*alert("Resultado de delete: "+data);*/
					if(data==1) {
						load('vst-venta-lista','','.lista');
						alert('Venta eliminada correctamente');
						cerrarmodal();
					} else {
						alerta('.msj','danger','Imposible eliminar. Existe una restricción de clave foránea')
					}
				})
			},
			invalidHandler: function (form) {
			}
		});
	})
</script> 