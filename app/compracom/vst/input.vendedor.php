<?php  require '../../../cfg/base.php';
?>
<select class="form-control chosen" title="Vendedor" name="vende_ide" id="vende_ide" >
	<?php foreach($mvendedor->lista() as $m): ?>
		<option value="<?php echo $m->vende_ide ?>"
			<?php if ($m->vende_ide==$vende_ide) echo "selected";?> >
		<?php echo $m->vende_ide.' - '. $m->vende_razonsocial ?></option>
	<?php endforeach; ?>
</select>