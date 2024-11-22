<?php require '../../../cfg/base.php'; ?>
<?php $row = $mproveedor->lista_sin_taller() ?>
<?php if(count($row)>0): ?>
	<div class="table-responsive">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th>Id</th>
					<th>C.I. o R.I.F.</th>
					<th>Nombre o Razón Social</th>
					<th>Total Monto Contado</th>
					<th>Total Monto Crédito</th>
					<th>TOTAL</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): ?>
					<tr>
						<?php 

						$f_ini ="2024-08-01";
						$f_fin ="2024-08-31";
						$sub_total=0;
						$sub_total_contado=0;
						$sub_total_credito=0;

						$row_sub_total = $mcompra_wh->subtotal_por_prov($r->prove_ide,$f_ini,$f_fin);
						foreach ($row_sub_total as $st):
							$sub_total=$st->total;
						endforeach; 		

						$cond  =0; //contado
						$row_sub_total = $mcompra_wh->subtotal_por_prov_cond($r->prove_ide,$cond,$f_ini,$f_fin);
						foreach ($row_sub_total as $st):
							$sub_total_contado=$st->total;
						endforeach; 		

						$cond  =1; //credito
						//$sub_total_credito=0;
						$row_sub_total = $mcompra_wh->subtotal_por_prov_cond($r->prove_ide,$cond,$f_ini,$f_fin);
						foreach ($row_sub_total as $st):
							$sub_total_credito=$st->total;
						endforeach; 		
						?>
						<td align="center"><?php echo $r->prove_ide ?></td>

						<td><?php echo $r->prove_tipo.'-'.$r->prove_cedrif ?></td>
						<td><?php echo $r->prove_razonsocial.' ('.$r->prove_alias.')' ?></td>
						<td><?php echo number_format($sub_total_contado,2,",","."); ?></td>
						<td><?php echo number_format($sub_total_credito,2,",","."); ?></td>
						<td><?php echo number_format($sub_total,2,",","."); ?></td>


					</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
	</div>
<?php else: ?>
	<div class="alert alert-info">No hay registros de Proveedores para mostrar.</div>
<?php endif; ?>	
<script>
	$(function(){
		$('.table').dataTable();
	})
</script>