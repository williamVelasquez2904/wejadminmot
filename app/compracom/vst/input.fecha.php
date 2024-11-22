<div class="col-sm-12">
<input type="text" name="fecha_venta" class="form-control fecha" value="">
</div>
<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'dd-mm-yyyy',endDate:'-0d'});
	})
</script>