<?php require '../../../cfg/base.php'; ?>
<?php $row = $mtipclien->lista(); ?>
<?php $var = $ctipclien->setValue() ?>
<select name="tipo" id="tipo" class="chosen">
	<?php if(!empty($tipo_ide)>0): ?>
		<option value=""></option>
		<?php foreach($row as $r): ?>
			<option value="<?php echo $r->tipcli_ide ?>" <?php echo $fn->select($r->tipcli_ide,$tipo_ide) ?>><?php echo $r->tipcli_descrip ?></option>
		<?php endforeach; ?>
	<?php else: ?>
		<option value="">Indique Tipo</option>
		<script>
			$('#nacionaladd').prop('disabled','disabled');
		</script>
	<?php endif; ?>
</select>
<script>
	$(function(){
		$('.chosen').chosen();
	})
</script>