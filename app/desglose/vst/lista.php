<?php require '../../../cfg/base.php'; ?>
<?php
	$row = $mdesglose->lista(); 
 //$row = $mtipclien->lista() ?>
<?php if(count($row)>0): ?> 
	<div class="table-responsive">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th >Actualizar</th>
					<th >Id</th>
					<th >Descripción</th>
					<th >Fecha</th>
					<th >Monto</th>
					<th >Estatus</th>
					<th >Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): ?>
					<tr>
						<?php
							$mensaje_estatus = Funciones::descrip_estatus("desglose",$r->desglose_status);
							$newDate = date("d/m/Y", strtotime($r->desglose_fecha));

						 ?>
						 <td width="5%">
							<div class="btn-group">
								<button class="bbtn btn-primary" title="actualiza desglose" onclick="modal('vst-desglose-update','ide=<?php echo $r->desglose_ide ?>')">
									<img src="img/imagenes/update.png" alt = "Actualizar desglose"/>
								</button>
							</div>
						 </td>
						<td align="center" width="5%"><?php echo $r->desglose_ide ?> </td>
						<td width="50%"><?php echo $r->desglose_desc ?></td>
						<td width="5%"><?php echo $newDate; ?></td>
						<td width="10%" align="right"><?php echo $r->desglose_monto; ?></td>
						<td width="5%"><?php echo $mensaje_estatus ?></td>
						<td width="10%">
							<div class="btn-group">
								<button class="bbtn btn-primary" title="verclientes.php Ver clientes para este desglose" onclick="modal('vst-desglose-verclientes','ide=<?php echo $r->desglose_ide ?>')">
									<img src="img/imagenes/cliente.png" alt = "cliente"/>
								</button>
							</div>
							<div class="btn-group">
								<button class="bbtn btn-primary" title="admin_venta.php Venta" onclick="load('vst-desglose-admin_venta','ide=<?php echo $r->desglose_ide ?>','.main')">
									<img src="img/imagenes/venta.png" alt = "cliente"/> 
								</button>
							</div>
							<div class="btn-group">
								<button class="bbtn btn-primary" title="admin_venta.php Venta" onclick="modal('vst-desglose-admin_resumen','desg_ide=<?php echo $r->desglose_ide ?>')">
									<img src="img/imagenes/resumen.png" alt = "Resumen"/>
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