<?php require '../../../cfg/base.php'; ?>
<!-- la tabla tipoventa esta asociada a tipo de mercancia y se refiere a los tipos de respuestos  -->
<!-- mTipmerc -->
<?php $row = $mTipmerc->lista() ?>
<?php if(count($row)>0): ?>
	<div class="table-responsive">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th>Id</th>
					<th>Descripción</th>
					<th>Comisión en Compra</th>
					<th>Comisión en Venta</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): ?>
					<tr>
						<td align="center"><?php echo $r->tipvta_ide ?></td>
						<td><?php echo $r->descrip ?></td>
						<td><?php echo $r->comision_compra ?></td>
						<td><?php echo $r->comision_venta ?></td>
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
		$('.table').dataTable();
	})
</script>