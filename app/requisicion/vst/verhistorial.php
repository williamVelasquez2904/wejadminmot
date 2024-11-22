<?php require '../../../cfg/base.php'; 
echo $fn->modalWidth('80%');
echo $fn->modalHeader("Requisiciones Cerradas") ?>
	<div class="modal-body">
		<div class="listahistorial"></div>		
	</div>
<?php echo $fn->modalFooter(2); ?>
<script>
	load('vst-requisicion-listahistorial','clien_ide=<?php echo $clien_ide ?>','.listahistorial');
</script>