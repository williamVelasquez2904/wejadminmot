<?php require '../../../cfg/base.php'; 
$roword = $morden->listaporprov($prove_ide); 
if ($prove_ide<>0) {
	if (count($roword)>0) { ?>
		<select class="form-control chosen" title="Orden" name="orden_ide" id="orden_ide" >
			<option value="-1"></option>
			<option value="0">Crear Orden</option>
			<?php foreach($morden->listaporprov($prove_ide) as $o): 
				$mostrar="";
				$rowdetord = $mrequisicion->listaporordenclien($o->orden_ide,$clien_ide);
				if(count($rowdetord)>0) { $mostrar="disabled"; } ?>
				<option value="<?php echo $o->orden_ide ?>" <?php echo $mostrar; ?>>
				<?php echo 'Id.: '.$o->orden_ide.' | Cli.: '. $o->clien_nombre1.' | Ctrl.: '. $o->orden_control.' | Fec: '. $o->orden_fecha ?></option>
			<?php endforeach; ?>
		</select>
	<?php } else { ?>
		<font color="green"><b>AL PROVEEDOR SE LE CREARÁ UNA ORDEN</b></font> 
		<input type="hidden" class="form-control" name="orden_ide" value="crear">
	<?php } ?>
<?php } else { ?>
	<font color="red"><b><===[ Seleccione Proveedor</b></font> 
	<input type="hidden" class="form-control" name="orden_ide" value="0">
<?php } ?>

<script>
	$(function(){
		$('.chosen').chosen();
	})
</script>