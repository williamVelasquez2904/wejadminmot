<?php
require '../../../cfg/base.php';
?>
<style>
.ln-card{background:#fff;border-radius:10px;padding:14px;border:1px solid #e6eef9;box-shadow:0 2px 8px rgba(15,38,78,0.04);margin-bottom:12px}
.ln-table{width:100%;border-collapse:collapse;font-size:0.95rem}
.ln-table th{background:#e9f4ff;color:#0366d6;font-weight:700;padding:10px;border-bottom:2px solid #d0e9ff}
.ln-table td{background:#fff;padding:10px;border-bottom:1px solid #f3f6fb}
.ln-saldo{display:inline-block;background:linear-gradient(90deg,#eaf6ff,#fff8e6);padding:10px 18px;border-radius:8px;border:1px solid #cfe8ff;font-weight:700;margin-right:10px}
.ln-saldo .val{color:#d35400;margin-left:8px}
.ln-btn-danger{background:linear-gradient(90deg,#ff6b6b,#ff9a3c);color:#fff;border-radius:6px;border:none;padding:6px 10px}
.ln-title{margin:0 0 10px 0;color:#034f84}
.text-right{text-align:right}
.small-muted{color:#6c757d;font-size:0.9rem}
</style>
<?php
extract($_POST);
/*$encab_ide=1;*/
$row = $mrecibo->recibo_pago_lista($encab_ide);
$mensaesta="";
$nombrecliente="";
$vendedor="";
$sum_monto = 0;
?>
<?php if(count($row)>0):?>
	<div class="ln-card">
	<div class="table-responsive" width="100%">
		<div class="d-flex" style="justify-content:space-between;align-items:center;margin-bottom:8px">
			<h4 class="ln-title">PAGOS DEL RECIBO</h4>
			<div class="small-muted">Registros: <?php echo count($row) ?></div>
		</div>
		<table class="ln-table table table-striped table-hover table-bordered table-condensed table_pago" width="100%">
			<thead>
				<tr>
					<th>Id.</th>
					<th>Forma de Pago</th>
					<th class="text-right">Monto</th>
					<th>Estatus</th>
					<th>Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r):?>
					<tr>
						<?php 
						$sum_monto += $r->monto;
						$mensaje_estatus = Funciones::descrip_estatus("tbl_recibo_pago",$r->recpago_status);
						?>
						<td><?php echo $r->recpago_ide ?></td>
						<td class="text-center"><?php echo $r->formapago ?></td>
						<td class="text-right"><?php echo number_format($r->monto,2,',','.'); ?></td>
						<td class="text-center"><span class="label label-default"><?php echo $mensaje_estatus ?></span></td>
						<td align="center">
							<div class="btn-group">
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
					<th colspan="2" class="text-right">Totales:</th>
					<th class="text-right"><?php echo number_format($sum_monto,2,',','.'); ?></th>
					<th colspan="2"></th>
				</tr>
			</tfoot>
		</table>
	</div>
	<div class="alert alert-info"><?php echo "<b>TOTAL PAGOS: ".number_format($sum_monto,2,',','.')."</b>" ?></div>
	<div class="btn-group">
		<button class="verdetalles-btn-distr btn btn-gradient-pago btn-sm" title="Distribuir el pagado entre todas las notas" onclick="distribuir()" type="button">
				<i class="fa fa-random"></i>
			<span style="font-size:1em;"><u>D</u>ISTRIBUIR PAGO</span>
		</button>
	</div>
	</div>
<?php else: ?>
	<div class="alert alert-info">No hay pagos registrados para este recibo.</div>
<?php endif; ?>    
<script>
	$(function(){
		$('.table_pago').dataTable();
	})
</script>