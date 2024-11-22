<?php
require '../../../cfg/base.php'; 
echo $fn->modalHeader('Cerrar desglose') ?>
<div class="modal-body">
	<div class="alert alert-danger">¿Realmente desea cerrar  el desglose seleccionado?</div>
	<div class="msj"></div>
</div>	
<div class="clearfix"></div>
<div class="space-6"></div>
<div class="cuadre"></div>
<script>
	load('vst-desglose-cuadre','','.cuadre');
</script>