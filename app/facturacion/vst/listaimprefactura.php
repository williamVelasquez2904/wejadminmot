<?php
 require '../../../cfg/base.php';
 $row = $mfacturacion->listafactura();
?>
<?php if(count($row)>0): ?>
	<div class="table-responsive">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th>Factura</th>
					<th>Control</th>
					<th>Fecha</th>
					<th>R.I.F.</th>
					<th>Cliente</th>
					<th>Subtotal</th>
					<th>Iva</th>
					<th>Total</th>
					<th>¿Reimprimir?</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): ?>
					<tr>
						<td align="center"><?php echo $r->fact_ide_tienda ?></td>
						<td align="center"><?php echo $r->fact_control_tienda ?></td>
						<td><?php echo date('d-m-Y',strtotime($r->fact_fecha)) ?></td>
						<td><?php echo $r->clien_tipcli.'-'.$r->clien_numiden ?></td>
						<td><?php echo $r->clien_nombre1.' '.$r->clien_nombre2.' '.$r->clien_apelli1.' '.$r->clien_apelli2 ?></td>
						<td><?php echo number_format($r->fact_sub_totalexe,2,",",".") ?></td>
						<td><?php echo number_format($r->fact_sub_totaliva,2,",",".") ?></td>
						<td><?php echo number_format($r->fact_total_general,2,",",".") ?></td>
						<td align="center">
							<div class="btn-group">
								<button <?php if ($r->fact_anulada==1) { echo 'disabled'; } ?> class="btn btn-info btn-xs" title="Previsualizar factura" onclick="modal('vst-reportes-previsualizarfactura','fact=<?php echo $r->fact_ide ?>')">
									<i class="fa icon-eye-open"></i>
								</button>
								<button <?php if ($r->fact_anulada==1) { echo 'disabled'; } ?> class="btn btn-success btn-xs" title="Reimprimir factura" onclick="window.open('reimprimirfactura-'+<?php echo $r->fact_ide ?>)">
									<i class="fa fa-print"></i>
								</button>
							</div>
						</td>
					</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
	</div>
<?php else: ?>
	<div class="alert alert-info">No hay registro de factura para mostrar.</div>
<?php endif; ?>	
<script>
	$(function(){
		$('.table').dataTable();
	})
</script>