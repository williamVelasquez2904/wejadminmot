<?php 
/*$row = $mventa_wh->lista_taller(); */
?> 

<div class="btn-group pull-right">
	<button class="btn btn-inverse" onclick="modal('vst-venta_wh-insert_venta_taller','')">
		<i class="fa fa-plus"></i>
		Agregar Venta Taller
	</button>
</div>
<div class="clearfix"></div>
<div class="lista_taller"></div>

<script>
	load('vst-venta_wh-lista_taller','','.lista_taller');
</script>