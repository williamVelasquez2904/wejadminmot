<?php require '../../../cfg/base.php'; 
echo $fn->modalWidth('80%');
$r = $morden->poride($ide);
$rowdet = $mrequisicion->listaclientespororden($ide);
echo $fn->modalHeader("Detalles de la Orden: $ide"); ?>
<div class="modal-body">
	<table class="table3 table-hover table-bordered" width="100%" >
		<tr>
			<td width="16%" align="right"><b>Id.:</b></td>
			<td width="17%"><?php echo $r[0]->orden_ide; ?></td>
			<td width="17%" align="right"><b>Control:</b></td>
			<td width="17%"><?php echo $r[0]->orden_control; ?></td>
			<td width="17%" align="right"><b>Fecha:</b></td>
			<td width="16%"><?php echo $r[0]->orden_fecha; ?></td>
		</tr>
		<tr>
			<td align="right"><b>Proveedor:</b></td>
			<td colspan="2"><?php echo $r[0]->prove_tipo.$r[0]->prove_cedrif.' '.$r[0]->prove_razonsocial; ?></td>
			<td align="right"><b>Cliente:</b></td>
			<td colspan="2"><?php echo $r[0]->clien_tipcli.$r[0]->clien_numiden.' '.$r[0]->clien_nombre1; ?></td>
		</tr>
		<tr>
			<td colspan="4" align="right"><b>Monto:</b></td>
			<td colspan="2"><?php echo number_format($r[0]->monto_ordenado,2,",",".") ?></td>
		</tr>
	</table>
	<?php
	if(count($rowdet)>0): ?>
	<div class="table-responsive">
		<table class="table2 table-hover table-bordered" width="100%">
			<thead>
				<tr>
					<th width="15%">RIF o Ced. Cliente</th>
					<th width="35%">Razón Social del Cliente</th>
					<th width="10%">Id. Req.</th>
					<th width="10%">Id. Det. Req.</th>
					<th width="10%">Monto Det. Req.</th>
					<th width="10%">Fecha Det. Req.</th>
					<th width="10%">Estatus Det. Req.</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($rowdet as $d): 
					if ($d->reqdet_status==0) { $mensaesta="Abierto"; }
					elseif ($d->reqdet_status==1) { $mensaesta="Cerrado"; }
					elseif ($d->reqdet_status==2) { $mensaesta="Orden Cerrada"; } ?>
					<tr>
						<td align="center"><?php echo $d->clien_tipcli.$d->clien_numiden ?></td>
						<td align="center"><?php echo $d->clien_nombre1.' ('.$d->clien_nombre2.')'; ?></td>
						<td align="center"><?php echo $d->reqdet_req_ide ?></td>
						<td align="center"><?php echo $d->reqdet_ide ?></td>
						<td align="center"><?php echo number_format($d->reqdet_monto,2,",",".") ?></td>	
						<td align="center"><?php echo $d->reqdet_fecha_reg ?></td>
						<td align="center"><?php echo $mensaesta ?></td>
					</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
	</div>

	<?php else: ?>
		<div class="alert alert-info">No hay registros para mostrar.</div>
	<?php endif; ?>	
		<button class="btn btn-info btn-sm" title="Ver Listado de Ordenes con Estatus Enviadas y/o Cerradas" onclick="modal('vst-orden-verhistorial','')">
			<i class="fa fa-arrow-left"></i>
			Volver
		</button>
</div>
<?php echo $fn->modalFooter(2); ?>

<script>
	$(function(){
		$('.table2').dataTable();
	});
</script>