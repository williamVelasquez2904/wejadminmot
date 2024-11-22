<?php require '../../../cfg/base.php'; 
echo $fn->modalWidth('90%');
$r = $morden->poride($orden_ide);
if ($r[0]->clien_nombre1=="") {
	$nombrecliente = '<font color="red">** POR ASIGNAR **</font>';
} else {
	$nombrecliente = $r[0]->clien_tipcli.$r[0]->clien_numiden.' '.$r[0]->clien_nombre1;
}
$rowdet = $mrequisicion->listaclientespororden($orden_ide);
$monto_asignado=0.0;
echo $fn->modalHeader("detacompra... Ide de la Compra: $compra_encab_ide . Ide de la Orden: $orden_ide"); ?>
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
			<td colspan="2"><?php echo $nombrecliente; ?></td>
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
					<th width="10%">Monto en la Compra</th>
					<th width="10%">Opcion</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($rowdet as $d): 
					$rowcompracom_det=$mcompracom->listacompracomdeta($compra_encab_ide,$orden_ide,$d->reqdet_ide);
					if(count($rowcompracom_det)==0): 
						$monto_asignado=0.0;
					endif;	
					foreach ($rowcompracom_det as $f): 
						$monto_asignado=$f->compracom_deta_monto;
					endforeach;
					//var_dump($rowcompracom_det);
				?>
					<tr>
						<td align="center"><?php echo $d->clien_tipcli.$d->clien_numiden ?></td>
						<td align="center"><?php echo $d->clien_nombre1.' ('.$d->clien_nombre2.')'; ?></td>
						<td align="center"><?php echo $d->reqdet_req_ide ?></td>
						<td align="center"><?php echo $d->reqdet_ide ?></td>
						<td align="center"><?php echo number_format($d->reqdet_monto,2,",",".") ?></td>	
						<td align="center"><?php echo $d->reqdet_fecha_reg ?></td>
						<td align="center"><?php echo $monto_asignado ?></td>
						<td align="center">
							<button class="btn btn-info btn-xs" title="Ver Detalles" onclick="modal('vst-compracom-detmtocompra',
								'orden_ide=<?php echo $orden_ide; ?>&compra_encab_ide=<?php echo $compra_encab_ide; ?>&det_req_ide=<?php echo $d->reqdet_ide; ?>')
								">
									<i class="fa fa-search"></i>
							</button>
							<button class="btn btn-success btn-xs" title="Procesar Venta" onclick="modal('vst-compracom-procesarventa','orden_ide=<?php echo $orden_ide; ?>&monto_asignado=<?php echo $monto_asignado; ?>&compra_encab_ide=<?php echo $compra_encab_ide; ?>&reqdet_req_ide=<?php echo $d->reqdet_req_ide; ?>&det_req_ide=<?php echo $d->reqdet_ide; ?>&compra_encab_fecha=<?php echo $compra_encab_fecha; ?>')">
								<i class="fa fa-list"></i>
							</button>							
						</td>	

					</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
	</div>
	<?php else: ?>
		<div class="alert alert-info">No hay registros para mostrar.</div>
	<?php endif; ?>	
</div>
<?php echo $fn->modalFooter(2); ?>

<script>
	$(function(){
		$('.table2').dataTable();
	});
</script>