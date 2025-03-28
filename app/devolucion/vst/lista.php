<?php require '../../../cfg/base.php'; ?>
<?php $row = $mdevolucion->lista() ?>
<?php if(count($row)>0): ?>
	<div class="table-responsive">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th>Id</th>
					<th>Código</th>
					<th>Producto</th>
					<th>cantidad</th>
					<th>Motivo</th>
					<th>Nota</th>

					<th>Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): ?>
					<tr>
						<td align="center"><?php echo $r->devol_ide ?></td>
						<td><?php echo $r->produc_codigo ?></td>
						<td><?php echo $r->produc_descrip ?></td>
						<td><?php echo $r->devol_cantidad ?></td>
						<td><?php echo $r->devol_motivo ?></td>
						<td><?php echo $r->compra_num ?></td>
						<td>
							<div class="btn-group">
								<button class="btn btn-success btn-xs" title="Actualizar" onclick="modal('vst-banco-update','ide=<?php echo $r->banco_ide ?>')">
									<i class="fa fa-edit"></i>
								</button>
								<button class="btn btn-danger btn-xs" title="Borrar" onclick="modal('vst-banco-delete','ide=<?php echo $r->banco_ide ?>')">
									<i class="fa fa-trash"></i>
								</button>
							</div>
						</td>
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