<?php require '../../../cfg/base.php'; 
extract($_POST);
$row = $morden->listaporestatus(0,0);
?>
<?php if(count($row)>0):?>
	<div class="table-responsive">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th>Id.</th>
					<th>Proveedor</th>
					<th>Cliente</th>
					<th>Control Ord.</th>
					<th>Monto Ord.</th>
					<th>Fecha</th>
					<th>Estatus</th>
					<th>Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r):
					if ($r->orden_status==0) { 
						$mensaesta = "Abierta";
					} elseif ($r->orden_status==1) { 
						$mensaesta = "Enviada";
					} elseif ($r->orden_status==2) { 
						$mensaesta = "Cerrada";
					}
					if ($r->clien_nombre1=="") {
						$nombrecliente = '<font color="red">** POR ASIGNAR **</font>';
					} else {
						$nombrecliente = $r->clien_nombre1;
					} ?>
					<tr>
						<td align="left">  <?php echo $r->orden_ide ?></td>
						<td align="center"><?php echo $r->prove_razonsocial ?></td>
						<td align="center"><?php echo $nombrecliente ?></td>	
						<td align="center"><?php echo $r->orden_control ?></td>	
						<td align="center"><?php echo number_format($r->monto_ordenado,2,",",".") ?></td>
						<td align="center"><?php echo $r->orden_fecha ?></td>
						<td align="center"><?php echo $mensaesta ?></td>
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
<button class="btn btn-info btn-sm" title="Ver Listado de Ordenes con Estatus Enviadas y/o Cerradas" onclick="modal('vst-orden-verhistorial','')">
	<i class="fa fa-search"></i>
	Ver ordenes enviadas y/o cerradas
</button>
<script>
	$(function(){
		$('.table').dataTable();
	})
</script> 