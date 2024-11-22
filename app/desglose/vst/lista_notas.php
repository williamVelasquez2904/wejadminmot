<?php require '../../../cfg/base.php'; 
$row = $mdesglose->lista_notas_sin_totales($ide);
$row_total_notas = $mcompra->totalcompra_pordesglose($ide);
$total_notas=0.0;
$total_notas_credito=0.0;
foreach($row_total_notas as $t):
	$total_notas  =  $t->total_nota;
	$total_notas_credito  =  $t->total_nota_credito;

endforeach;

if(count($row)>0): ?>
	<div class="table-responsive">
		<label for="" class="control-label col-sm-12 col-xs-12 bolder">Notas del Desglose <?php echo $ide; ?></label>
		<table class="tablenotas table-hover table-bordered">
			<thead>
				<tr>
					<th>Id</th>
					<th>Id desglose</th>
					<th>Id Nota</th>
					<th>Cliente</th>					
					<th>Nota</th>
					<th>% Descuento</th>
					<th>Monto contado</th>
					<th>Monto Crédito</th>
					<th>Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): 	?>
					<?php 
					$total_notas          = $total_notas+$r->compra_monto;
					$total_notas_credito  = $total_notas_credito+$r->compra_monto_credito;
					?>
					<tr>
						<td align="center" width="5%"><?php echo $r->desgnota_ide ?></td>
						<td align="center" width="5%"><?php echo $r->desgnota_desglose_ide ?></td>
						<td align="center" width="5%"><?php echo $r->desgnota_nota_ide ?></td>
						<td align="center" width="30%"><?php echo $r->clien_nombre1 ?></td>
						<td align="center" width="10%"><?php echo $r->compra_num ?></td>
						<td align="center" width="10%"><?php echo $r->compra_porc_desc ?> %</td>
						<td align="right" width="10%"><?php echo number_format($r->compra_monto,2,",",".") ?></td>
						<td align="right" width="10%"><?php echo number_format($r->compra_monto_credito,2,",",".") ?></td>
						<td width="10%">
							<div class="btn-group">
								<button class="btn btn-danger btn-xs" title="Borrar Nota" onclick="modal('vst-desglose-deletenota','ide=<?php echo $r->desgnota_ide ?>')">
									<i class="fa fa-trash"></i>
								</button>
							</div>
						</td>
					</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
		<div class="totales">TOTAL NOTAS CONTADO:   <b><?php echo $total_notas ?> </b></div>
		<div class="totales">TOTAL NOTAS CREDITO :   <b><?php echo $total_notas_credito ?> </b></div>
	</div>
<?php else: ?>
	<div class="alert alert-info">No hay Notas asociadas a desglose para  mostrar.</div>
<?php endif; ?>	
<script>
	$(function(){
		$('.tablenotas').dataTable();
	})
</script>