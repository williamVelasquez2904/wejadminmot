<?php require '../../../cfg/base.php'; 
echo $fn->modalWidth('80%');
echo $fn->modalHeader("Ordenes Enviadas y/o Cerradas") ?>
	<div class="modal-body">
		<div class="listahistorial"></div>		
	</div>
<?php echo $fn->modalFooter(2); ?>
<script>
	load('vst-orden-listahistorial','','.listahistorial');
</script>