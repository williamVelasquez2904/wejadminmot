<?php
 require '../../../cfg/base.php'; 

extract($_POST);
$encab_ide=1;
$row = $mrecibo->recibo_pago_lista($encab_ide);
$mensaesta="";
$nombrecliente="";
$vendedor="";
$monto_contado=0;
$monto_credito=0;

?>
<?php if(count($row)>0):?>
	<div class="table-responsive">
		<legend>LISTADO DE NOTAS DEL RECIBO</legend>
		<table class="table_nota table-hover table-bordered" width="100%">
			<thead>
				<tr>
					<th>Id.</th>
					<th>encab Ide</th>
					<th>Pago Ide</th>
					<th>Estatus</th>
					<th>Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r):?>
					<tr>
					
						<td align="left" width="">  <?php echo $r->recnota_ide ?></td>
						<td align="center"><?php echo $r->recnota_encab_ide ?></td>
						<td align="center"><?php echo $r->recnota_venta_ide ?></td>
						<td align="center">
							<div class="btn-group">
								<button class="btn btn-success btn-xs" title="Actualizar" onclick="modal('vst-orden-update','ide=<?php echo $r->orden_ide ?>')">
									<i class="fa fa-edit"></i>
								</button>
								<button class="btn btn-danger btn-xs" title="Borrar" onclick="modal('vst-orden-delete','ide=<?php echo $r->orden_ide ?>')">
									<i class="fa fa-trash"></i>
								</button>
								<button class="btn btn-info btn-xs" title="Ver Detalles" onclick="modal('vst-recibo-verdetalles','ide=<?php echo $r->recencab_ide ?>&clien_ide=<?php echo $r->recencab_clien_ide ?>')">
									<i class="fa fa-search"></i>
								</button>
								<button class="btn btn-success btn-xs" title="Registrar pago" onclick="modal('vst-recibo-pago','ide=<?php echo $r->recencab_ide ?>')">
									<i class="fa fa-edit"></i>
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
		$('.table_nota').dataTable();
	})
</script> 