<?php require '../../../cfg/base.php'; ?>
<?php
echo $fn->modalWidth('40%'); 
$desg_ide = $_SESSION['desglose_ide'] ;
$row =$mdesglose->sumanotas($desg_ide) ?>
<?php if(count($row)>0): ?>
	<div class="table-responsive">
		<table class="tablecuadre table-hover table-bordered" width="100%">
			<thead>
				<tr>
					<th width="20%">Nota</th>
					<th width="20%">Monto Nota</th>
					<th width="20%">Venta</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): ?>
					<tr>
						<td align="center" width="20%"><?php echo $r->nota ?></td>
						<td align="center" width="40%"><?php echo $r->monto_nota ?></td>
						<td align="center" width="40%"><?php echo $r->suma_venta ?></td>
					</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
	</div>
<?php else: ?>
	<div class="alert alert-info">No hay registros para mostrar.</div>
<?php endif; ?>	
<script>
	$(function(){
		$('.tablecuadre').dataTable();
	})
</script> 