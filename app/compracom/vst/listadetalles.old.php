<?php require '../../../cfg/base.php'; 
extract($_POST);
echo "prueba";
var_dump($compra_encab_ide);
//$row = $mcompracom->listacompracomdeta();
$row = $mcompracom->listacompracomdeta($compra_encab_ide,$orden_ide,$det_req_ide);
?>
<?php if(count($row)>0):?>
	<div class="table-responsive">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th>Id.</th>
					<th>Id Compra</th>
					<th>Id Orden</th>
					<th>Ide det Req</th>
					<th>Monto detalle</th>
					<th>Observacion</th>
					<th>Opción</th>
				</tr>
			</thead>
			<tbody>
					<tr>
						<td align="left">  <?php echo $r->compracom_deta_ide ?></td>
						<td align="center"><?php echo $r->compracom_deta_encab_ide ?></td>
						<td align="center"><?php echo $compracom_deta_orden_ide ?></td>	
						<td align="center"><?php echo $r->compracom_deta_reqdet_ide ?></td>	
						<td align="center"><?php echo number_format($r->compracom_deta_monto,2,",",".") ?></td>
						<td align="center"><?php echo $r->compracom_deta_observ ?></td>
						
						<td align="center">
							<div class="btn-group">
								<button class="btn btn-success btn-xs" title="Actualizar" onclick="modal('vst-orden-update','ide=<?php echo $r->orden_ide ?>')">
									<i class="fa fa-edit"></i>
								</button>
								<?php if ($r->monto_ordenado==0) { ?>
									<button class="btn btn-danger btn-xs" title="Borrar" onclick="modal('vst-orden-delete','ide=<?php echo $r->orden_ide ?>')">
										<i class="fa fa-trash"></i>
									</button>
								<?php } ?>
								<button class="btn btn-info btn-xs" title="Ver Detalles" onclick="modal('vst-orden-verdetalles','ide=<?php echo $r->orden_ide ?>')">
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
		$('.table').dataTable();
	})
</script>