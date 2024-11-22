<?php //require '../../../cfg/base.php'; ?>
<?php $row = $mvendedor->lista() ?>
<?php if(count($row)>0): ?>
	<div class="table-responsive">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th>Id</th>
					<th>C.I. o R.I.F.</th>
					<th>Nombre o Razón Social</th>
					<th>Telefono</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): ?>
					<tr>
						<td align="center"><?php echo $r->vende_ide ?></td>
						<td><?php echo $r->vende_tipo.'-'.$r->vende_cedrif ?></td>
						<td><?php echo $r->vende_razonsocial.' ('.$r->vende_alias.')' ?></td>
						<td><?php echo $r->vende_telcon ?></td>
					</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
	</div>
<?php else: ?>
	<div class="alert alert-info">No hay registros de Proveedores para mostrar.</div>
<?php endif; ?>	
<script>
	$(function(){
		$('.table').dataTable();
	})
</script>