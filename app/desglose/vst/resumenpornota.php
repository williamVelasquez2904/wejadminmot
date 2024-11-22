<?php
require '../../../cfg/base.php'; 
extract($_POST);
echo $fn->modalWidth('80%');
$row = $mdesglose->lista($desg_ide);
$row_notas = $mdesglose->lista_notas($desg_ide);
echo $fn->modalHeader('RESUMEN DESGLOSE POR NOTA.<b> '.$row[0]->desglose_desc. "</b>") ;
$monto_credito=0;
$monto_venta_nota=0;
$monto_nota=0;
$disponible=0;
?>	
<?php if(count($row_notas)>0): ?>
	<div class="table-responsive" width="100%">
		<table class="table_notas_desglose table-hover table-bordered">
			<thead>
				<tr>
					<th >Nota</th>
					<th >% Desc</th>
					<th >Cliente</th>
					<th >Monto Credito</th>
					<th >Monto Desglosado</th>
					<th >Monto Disponible</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row_notas as $r): ?>
					<tr>
						<?php
						$monto_credito=0;
						$monto_credito=$r->compra_monto_credito;
						//var_dump($monto_credito); 
						/*$mdesglose->suma_detallevta_poride*/
						$row_venta_nota=$mdesglose->total_venta_nota($r->compra_num);
						$monto_venta_nota=$row_venta_nota[0]->total_venta;						 
						$disponible=($r->compra_monto_credito - $monto_venta_nota);
						?>
						<td width="5%"><?php echo $r->compra_num ?></td>
						<td width="5%"><?php echo $r->compra_porc_desc ?></td>
						<td width="30%"><?php echo $r->clien_nombre1 ?></td>
						
						<td width="15%" align="right"><?php echo number_format($monto_credito,2,".",",") ?></td>
						<td width="15%" align="right"><?php echo number_format($monto_venta_nota,2,".",",") ?></td>
						<td width="20%" align="right"><?php echo number_format($disponible,2,".",",")?></td>
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
		$('.table_notas_desglose').dataTable();
	})
</script>
<div class="modal-body">
</div>
<?php echo $fn->modalFooter(1) ?>