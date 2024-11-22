<?php require '../../../cfg/base.php'; 
extract($_POST);
$row = $morden->lista();
if(count($row)>0):?>
	<div class="table-responsive">
		<table class="table table-hover table-bordered" width="100%">
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
					$color="";
					if ($r->orden_status==0) { 
						$color = ""; 
						$mensaesta = "Abierta";
					} elseif ($r->orden_status==1) { 
						$color = "#FFFF80"; 
						$mensaesta = "Enviada";
					} elseif ($r->orden_status==2) { 
						$color = "#D9EDF7"; 
						$mensaesta = "Cerrada";
					}
					if ($r->clien_nombre1=="") {
						$nombrecliente = '<font color="red">** POR ASIGNAR **</font>';
					} else {
						$nombrecliente = $r->clien_nombre1;
					} ?>
					<tr bgcolor="<?php echo $color ?>">
						<td align="left">  <?php echo $r->orden_ide ?></td>
						<td align="center"><?php echo $r->prove_razonsocial ?></td>
						<td align="center"><?php echo $nombrecliente ?></td>	
						<td align="center"><?php echo $r->orden_control ?></td>	
						<td align="center"><?php echo number_format($r->monto_ordenado,2,",",".") ?></td>
						<td align="center"><?php echo $r->orden_fecha ?></td>
						<td align="center"><?php echo $mensaesta ?></td>
						<td align="center">
							<div class="btn-group">
								<button class="btn btn-info btn-xs" title="Ver Detalles" onclick="modal('vst-reportes-verdetallesord','ide=<?php echo $r->orden_ide ?>')">
									<i class="fa fa-search"></i>
								</button>
							</div>
							<?php if ($r->orden_status<>0) { ?>
								<div class="btn-group">
									<button class="btn btn-info btn-xs" title="Ver Facturas de Compras" onclick="modal('vst-orden-verdetallesfactcomp','ide=<?php echo $r->orden_ide ?>')" disabled>
										<i class="fa fa-list"></i>
									</button>
								</div>
							<?php } ?>
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