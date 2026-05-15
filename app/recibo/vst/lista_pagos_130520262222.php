<?php
 require '../../../cfg/base.php'; 


extract($_POST);
/*$encab_ide=1;*/
$row = $mrecibo->recibo_pago_lista($encab_ide);
$mensaesta="";
$nombrecliente="";
$vendedor="";
$monto_contado=0;
$monto_credito=0;
$sum_monto =0 ;
?> 
<?php if(count($row)>0):?>
	<div class="ln-card">
	<div class="table-responsive">
		<div style="display:flex;justify-content:space-between;align-items:center;margin-bottom:8px">
			<h4 class="ln-title">PAGOS DEL RECIBO</h4>
			<div class="small-muted">Registros: <?php echo count($row) ?></div>
		</div>
		<table class="ln-table table table-striped table-hover table-bordered table-condensed table_nota" width="100%">
			<thead>
				<tr>
<!-- 					<th>Id.</th>
					<th>encab Ide</th>
					<th>Pago Ide</th>
					<th>Monto</th>
					<th>forma de Pago</th>
					<th>Estatus</th>
					<th>Opciones</th>
 -->
					<th>Id.</th>
					<th>forma de Pago</th>					
					<th>Monto</th>
					<th>Estatus</th>
					<th>Opciones</th>

				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r):?>
					<tr>
						<?php $sum_monto = $sum_monto + $r->monto; ?>
                        
						<td>  <?php echo $r->recpago_ide ?></td>
						<td class="small-muted"><?php echo $r->formapago ?></td>                        
						<td class="text-right"><?php echo number_format($r->monto,2,',','.'); ?></td>
						<td class="text-center"><span class="label label-default"><?php echo $r->recpago_status ?></span></td>
						<td class="text-center">
							<div class="btn-group">
								<button class="btn btn-success btn-xs" title="Actualizar" onclick="modal('vst-orden-update','ide=<?php echo $r->orden_ide ?>')">
									<i class="fa fa-edit"></i>
								</button>
								<button class="btn btn-danger btn-xs" title="Borrar" onclick="modal('vst-recibo-delete_recpago','ide=<?php echo $r->recpago_ide ?>')">
									<i class="fa fa-trash"></i>
								</button>
							</div>
						</td>
					</tr>
				<?php endforeach; ?>
			</tbody>
			<tfoot>
				<tr>
					<th colspan="2" class="text-right">TOTAL PAGOS:</th>
					<th class="text-right"><?php echo number_format($sum_monto,2,',','.'); ?></th>
					<th colspan="2"></th>
				</tr>
			</tfoot>
		</table>
	</div>
	</div>

<?php else: ?>
	<div class="alert alert-info">No hay pagos registrados para este recibo.</div>
<?php endif; ?>	
<div class="alert alert-info"><?php echo "<b>TOTAL PAGOS: ".number_format($sum_monto,2,",",".")."</b>" ?></div>
<script>
	$(function(){
		var table = $('.table_nota').DataTable({
			"order": [[0,'asc']],
			"pageLength": 10
		});

		function parseNumber(val){
			if(typeof val === 'number') return val;
			if(!val) return 0;
			// remove any non-number except comma and dot and minus
			val = String(val).replace(/[^0-9\,\.\-]/g,'');
			// convert european format 1.234,56 -> 1234.56
			if(val.indexOf(',') > -1 && val.indexOf('.') > -1){
				val = val.replace(/\./g,'').replace(',','.');
			} else if(val.indexOf(',') > -1){
				val = val.replace(',','.');
			}
			var f = parseFloat(val);
			return isNaN(f)?0:f;
		}

		function updateTotal(){
			// columna 2 = Monto (0-based)
			var data = table.column(2, {search:'applied'} ).data();
			var total = 0;
			for(var i=0;i<data.length;i++){
				total += parseNumber(data[i]);
			}
			// formato: separador de miles '.' y decimales ','
			var formatted = total.toFixed(2).replace('.',',').replace(/\B(?=(\d{3})+(?!\d))/g,'.');
			// actualizar footer (tercer th en tfoot)
			$('.table_nota tfoot th').eq(2).html(formatted);
		}

		table.on('draw', updateTotal);
		updateTotal();
	})
</script>
