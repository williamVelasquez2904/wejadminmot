<?php 
require '../../../cfg/base.php'; ?>
<?php $row = $mpago->lista();
$texto_tasa=""; 
?>
<?php if(count($row)>0): ?>
	<div class="table-responsive">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th>Id 2703</th>
					<th>Forma de Pago..</th>
					<th>Titular</th>
					<th>Monto</th>
					<th>Fecha</th>
					<th>Hora</th>
					<th>Referencia</th>
					<th>Archivo</th>
					<th>Estatus</th>
					<th>Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): ?>
					<?php 
						$texto_tasa="";
						//var_dump($r->pago_tasa);
						if ($r->pago_tasa>0)
						{	
						//	echo "<br>paso<br>";
							$texto_tasa=" - Tasa: ".$r->pago_tasa;
						}  
					?>
					<tr>

						<td align="center"><?php echo $r->pago_ide ?></td>
						<td><?php echo $r->forpago_descrip ?></td>
						<td><?php echo $r->pago_titular ?></td>
						<td><?php echo $r->pago_monto ?></td>
						<td><?php echo implode('-', array_reverse(explode('-', $r->pago_fecha))); ?></td>
						<td><?php echo $r->pago_hora ?></td>
						<td><?php echo $r->pago_ref.$texto_tasa ?></td>
						<td><?php echo $r->pago_img ?>
							<div class="btn-group">
								<button class="btn btn-success btn-xs" title="Ver pago" onclick="modal('vst-pago-ver_img_pago',
								'pago_ide=<?php echo $r->pago_ide ?> ?>')">
									<i class="fa fa-edit"></i>
								</button>
							</div>
						</td>
						<td><?php echo funciones::descrip_estatus('pago',($r->pago_status)) ?></td>
						<td>
							<div class="btn-group">
								<button class="btn btn-success btn-xs" title="Actualizar" onclick="modal('vst-pago-update','ide=<?php echo $r->banco_ide ?>')">
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