<?php require '../../../cfg/base.php'; ?> 
<?php 
//extract($_POST);
//var_dump($ide);
$row = $mcruce->lista_detalle($ide) ;
$suma_detalle=0;
?>
<?php if(count($row)>0): ?>

	<div class="table-responsive">
		<table class="table2 table-hover table-bordered " width="100%" align="center">
			<thead>
				<tr>
					<th>Id</th>
					<th>Ide encab</th>
					<th>Nota</th>
					<th>Monto</th>
					<th>Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): ?>
					<tr>
						<?php $suma_detalle=$suma_detalle+$r->crudeta_monto; ?>
						<td align="center"><?php echo $r->crudeta_ide ?></td>
						<td><?php echo $r->crudeta_encab_ide ?></td>
						<td><?php echo $r->compra_num ?></td>
						<td><?php echo $r->crudeta_monto ?></td>
						<td>
							<div class="btn-group">
								<button class="btn btn-success btn-xs" title="Actualizar" onclick="modal('vst-pago-update','ide=<?php echo $r->banco_ide ?>')">
									<i class="fa fa-edit"></i>
								</button>
								<button class="btn btn-success btn-xs" title="Detalle cruce" onclick="modal('vst-cruce-insert_detalle','ide=<?php echo $r->cruce_encab_ide ?>')">
									<i class="fa fa-edit"></i>
								</button>								
								<button class="btn btn-danger btn-xs" title="Borrar" onclick="modal('vst-pago-delete','ide=<?php echo $r->banco_ide ?>')">
									<i class="fa fa-trash"></i>
								</button>
							</div>
						</td>
					</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
	</div>
	<div class="alert alert-info"><?php echo "Total : ".number_format($suma_detalle,2,",","."); ?></div>	
<?php else: ?>
	<div class="alert alert-info">No hay registros para mostrar.</div>
<?php endif; ?>	

<!-- <script> 
	$(document).ready(function() 
	{ 
		if ($.fn.DataTable.isDataTable('.table')) {
			 $('.table').DataTable().clear().destroy(); 
		} 

	}); 
</script> -->
<script>

	$(function(){
		$('.table2').dataTable();
	});
</script>