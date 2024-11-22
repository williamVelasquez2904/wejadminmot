<?php require '../../../cfg/base.php'; ?>
<select class="form-control chosen" title="Proveedor" name="prove_ide" id="prove_ide" onclick="load('vst-requisicion-select.orden','clien_ide=<?php echo $clien_ide ?>&prove_ide='+this.value,'.selord')" onchange="load('vst-requisicion-select.orden','clien_ide=<?php echo $clien_ide ?>&prove_ide='+this.value,'.selord')">
	<option value=""></option>
	<?php foreach($mproveedor->lista() as $m): 
		$mostrar="";
		$rowdetpro = $mrequisicion->listapordetalleprove($ide,$m->prove_ide);
		if(count($rowdetpro)>0) { $mostrar="disabled"; }
		?>
		<option value="<?php echo $m->prove_ide ?>" <?php echo $mostrar; ?>>
		<?php echo $m->prove_ide.'-'. $m->prove_razonsocial.'-'. $m->prove_alias ?></option>
	<?php endforeach; ?>
</select>

<script>
	$(function(){
		$('.chosen').chosen();
	})
</script> 