<?php require '../../../cfg/base.php'; 
echo $fn->modalWidth('55%');
extract($_POST);
$row = $mcompracom->listacompracomdeta($compra_encab_ide,$orden_ide,$det_req_ide);
?>
<?php if(count($row)>0):?>
	<div class="table-responsive">
		<table class="table_detalle table-hover table-bordered">
			<thead>
				<tr>
					<th width="10%">Id</th>
					<th width="10%">Id Compra</th>
					<th width="10%">Id Orden</th>
					<th width="10%">Ide det Req</th>
					<th width="20%">Monto detalle</th>
					<th width="30%">Observacion</th>
					<th width="10%">Opción</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): ?>
					<tr>
						<td align="left">  <?php echo $r->compracom_deta_ide ?></td>
						<td align="center"><?php echo $r->compracom_deta_encab_ide ?></td>
						<td align="center"><?php echo $r->compracom_deta_orden_ide ?></td>	
						<td align="center"><?php echo $r->compracom_deta_reqdet_ide ?></td>	
						<td align="center"><?php echo number_format($r->compracom_deta_monto,2,",",".") ?></td>
						<td align="center"><?php echo $r->compracom_deta_observ ?></td>
						
						<td align="center">
							<div class="btn-group">
								<button class="btn btn-success btn-xs" title="Actualizar" 
								onclick="modal('vst-compracom-update_monto',
								'ide=<?php echo $r->compracom_deta_ide ?>&compra_encab_ide=<?php echo $r->compracom_deta_encab_ide ?>&orden_ide=<?php echo $r->compracom_deta_orden_ide ?>&req_det_ide=<?php echo $r->compracom_deta_reqdet_ide ?>'
								)">
									<i class="fa fa-edit"></i>
								</button>
								<button class="btn btn-info btn-xs" title="Ver Detalles">
									<i class="fa fa-search"></i>
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
		$('.table_detalle').dataTable();
	})
</script> 