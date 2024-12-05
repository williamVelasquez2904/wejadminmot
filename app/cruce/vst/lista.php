<?php require '../../../cfg/base.php'; ?>
<?php 
//$row = $mcruce->poride($ide) ;
/*$row = $mcruce->lista_encab($ide) ;*/
$row = $mcruce->lista_encab() ;
//var_dump($row);
?>
<?php if(count($row)>0): ?>
	<div class="table-responsive">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th>Id-27 </th>
					<th>Monto</th>
					<th>Fecha</th>
					<th>Ttular</th>
					<th>Referencia</th>
					<th>Archivo</th>
					<th>Estatus</th>
					<th>Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): ?>
					<tr>
						<td align="center"><?php echo $r->cruce_encab_ide ?></td>
						<td><?php echo $r->cruce_encab_monto ?></td>
						<td><?php echo $r->pago_fecha ?></td>
						<td><?php echo $r->pago_titular ?></td>
						<td><?php echo $r->pago_ref ?></td>
						<td>
							<div class="btn-group">
								<button class="btn btn-success btn-xs" title="Ver imágen" onclick="modal('vst-cruce-ver_img_cruce',
								'encab_ide=<?php echo $r->cruce_encab_ide ?> ?>')">
									<i class="fa fa-edit"></i>
								</button>
							</div>
							<?php echo $r->cruce_encab_img ?>
						</td>
						<td><?php echo $r->cruce_encab_status ?></td>
						<td>
							<div class="btn-group">
								<button class="btn btn-success btn-xs" title="Actualizar" onclick="modal('vst-pago-update','ide=<?php echo $r->banco_ide ?>')">
									<i class="fa fa-edit"></i>
								</button>
								<button class="btn btn-success btn-xs" title="18-11 Detalle cruce" onclick="modal('vst-cruce-insert_detalle','ide=<?php echo $r->cruce_encab_ide ?>')">
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
<?php else: ?>
	<div class="alert alert-info">No hay registros para mostrar.</div>
<?php endif; ?>	
<script>
	$(function(){
		$('.table').dataTable();
	})
</script>