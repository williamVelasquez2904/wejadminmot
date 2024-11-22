<?php require '../../../cfg/base.php'; 
/* listado de desgloses */
$row = $mdesglose->lista();
$mensaje_estatus="";
if(count($row)>0): ?>
	<div class="table-responsive">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th >Id</th>
					<th >Descripción</th>
					<th >Fecha</th>
					<th >Estatus</th>
					<th >Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): 	?>
					<tr>
						<?php
							$mensaje_estatus = Funciones::descrip_estatus("desglose",$r->desglose_status);
							$newDate = date("d/m/Y", strtotime($r->desglose_fecha));

						 ?>
						<td align="center" width="5%"><?php echo $r->desglose_ide ?> </td>
						<td width="50%"><?php echo $r->desglose_desc ?></td>
						<td width="5%"><?php echo $newDate; ?></td>
						<td width="5%"><?php echo $mensaje_estatus ?></td>
						<td width="10%">
							<div class="btn-group">
								<button class="bbtn btn-primary" title="verclientes.php Ver clientes para este desglose" onclick="modal('vst-desglose-verclientes','ide=<?php echo $r->desglose_ide ?>')">
									<img src="img/imagenes/cliente.png" alt = "cliente"/>
								</button>
							</div>
							<div class="btn-group">
								<button class="bbtn btn-primary" title="Venta" onclick="load('vst-desglose-admin_venta','ide=<?php echo $r->desglose_ide ?>','.venta')">
									<img src="img/imagenes/venta.png" alt = "cliente"/>
								</button>
							</div>
						</td>
					</tr>

				<?php endforeach; ?>
			</tbody>
		</table>
	</div>
<?php else: ?>
	<div class="alert alert-info">No hay desgloses para mostrar.</div>
<?php endif; ?>	
<script>
	$(function(){
		$('.table').dataTable();
	})
</script> 