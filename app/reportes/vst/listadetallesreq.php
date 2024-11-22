<?php require '../../../cfg/base.php'; 
$rowdet = $mrequisicion->listapordetalle($ide);
if(count($rowdet)>0): ?>

	<div class="table-responsive">
		<table class="table2 table-hover table-bordered" width="100%">
			<thead>
				<tr>
					<th>Id.</th>
					<th>Proveedor</th>
					<th>Orden</th>
					<th>Monto</th>
					<th>Fecha Orden</th>
					<th>Fecha Reg. Req.</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($rowdet as $d): ?>
					<tr>
						<td align="center">  <?php echo $d->reqdet_ide ?></td>
						<td align="center"><?php echo $d->prove_tipo.'-'.$d->prove_cedrif.' '.$d->prove_razonsocial; ?></td>
						<td align="center"><?php echo $d->reqdet_ord_ide ?></td>	
						<td align="center"><?php echo number_format($d->reqdet_monto,2,",",".") ?></td>	
						<td align="center"><?php echo $d->orden_fecha ?></td>
						<td align="center"><?php echo $d->reqdet_fecha_reg ?></td>
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
		$('.table2').dataTable();
	});
</script>