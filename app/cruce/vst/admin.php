<?php 
extract($_POST);

?>
<div class="btn-group pull-right">
	<button class="btn btn-inverse" onclick="modal('vst-cruce-insert','prov_ide=<?php echo $prov_ide ?>')">
		<i class="fa fa-plus"></i>
		[admin.php] 26-11-24 - Agregar Cruce de Proveedor <?php echo $prov_ide ?>
	</button>
</div>
<div class="clearfix"></div>
<div class="space-6"></div>
<div class="lista"></div>
<script>
	load('vst-cruce-lista','','.lista');
</script>