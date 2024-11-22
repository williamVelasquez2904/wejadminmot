<?php require '../../../cfg/base.php'; 
echo $fn->modalWidth('80%');
$r = $mrequisicion->poride($ide) ?>
	<?php echo $fn->modalHeader("Detalles de la Requisición: $ide") ?>
	<div class="modal-body">
		<table class="table3 table-hover table-bordered" width="100%" >
			<tr>
				<td align="right"><b>Cliente:</b></td>
				<td colspan="2"><?php echo $r[0]->clien_tipcli.$r[0]->clien_numiden.' '.$r[0]->clien_nombre1; ?></td>
				<td align="right"><b>Vendedor:</b></td>
				<td colspan="2"><?php echo $r[0]->vende_tipo.$r[0]->vende_cedrif.' '.$r[0]->vende_razonsocial; ?></td>			
			</tr>
			<tr>
				<td width="16%" align="right"><b>Monto Req.:</b></td>
				<td width="17%"><?php echo number_format($r[0]->req_monto,2,",","."); ?></td>
				<td width="17%" align="right"><b>Monto Ord.:</b></td>
				<td width="17%"><?php echo number_format($r[0]->monto_ordenado,2,",","."); ?></td>
				<td width="17%" align="right"><b>Monto Ent.:</b></td>
				<td width="16%"><?php echo number_format(0,2,",","."); ?></td>
			</tr>
		</table>
		<div class="listadetalles"></div>
	</div>
	<?php echo $fn->modalFooter(2); ?>

<script>
	load('vst-reportes-listadetallesreq','ide=<?php echo $r[0]->req_ide; ?>','.listadetalles');
</script>