<?php require '../../../cfg/base.php'; 
extract($_POST);
$row_detalle = $mcruce->detalle_por_nota_ide($nota_ide);
echo $fn->modalWidth('60%');
$suma_abono=0;
echo $fn->modalHeader('Abonos - Detalle en cruce');
?>
<div class="modal-body">
	<div><h4>ID de la Nota: <?php echo $nota_ide; ?></h4></div>
</div>
<?php if(count($row_detalle)>0): ?>
<div>

	<div class="table-responsive">
		<table class="tabledetalle table-hover table-bordered" width="100%">
			<thead>
				<tr>
					<th  width="5%">ID</th>
					<th  width="5%">Monto abono  </th>
					<th  width="5%">Nota  </th>
					<th  width="20%">Titular Cruce</th>
					<th  width="5%">Monto Cruce</th>
					<th  width="5%">Estatus</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row_detalle as $r): ?>
					<tr>
						<?php
						$suma_abono=$suma_abono +$r->crudeta_monto;

						$status=0;
						switch ($r->crudeta_estatus) {
						  case 0:
						    $status="Pendiente";
						    break;
						  case 1:
						    $status="Borrado";
						    break;
						  case 2:
						    $status="En txt";
						    break;
						  case 3:
						    $status="Pagada";
						    break;						    
						  case 4:
						    $status="Rechazado";
						    break;
						  case 20:
						    $status="Rezagado";
						    break;
						  default:
						  	$status="Error. Admin.".$r->crudeta_estatus;
						}
						?>
						<td align="center" ><?php echo $r->crudeta_ide ?></td>
						<td align="right"  ><?php echo $r->crudeta_monto ?></td>
						<td align="right"  ><?php echo $r->compra_num ?></td>

						<td align="right"  ><?php echo $r->pago_titular ?></td>
						<td align="right"  ><?php echo $r->pago_monto ?></td>
					 	<td align="right"  ><?php echo $r->crudeta_estatus ?></td>
					</tr>
				<?php endforeach; ?>
			</tbody>
		</table>

	</div>
	<div class="alert alert-info"><?php echo "Total Abonos: ".number_format($suma_abono,2,",","."); ?></div>	
<?php else: ?>
	<div class="alert alert-info">No hay registros para mostrar.</div>
<?php endif; ?>	
</div>
<?php echo $fn->modalFooter(2) ?>
<script>
	$(function(){
		$('.tabledetalle').dataTable();
	})
</script>