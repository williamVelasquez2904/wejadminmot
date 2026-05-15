<?php
require '../../../cfg/base.php'; /* 11-05-2026*/
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
/*var_dump($encab_ide);*/
/*$encab_ide=1;*/
$row = $mrecibo->recibo_nota_lista($encab_ide);
$mensaesta="";
$nombrecliente="";
$vendedor="";
$monto_contado=0;
$monto_credito=0;
$condicion=0;
$mensaje_condicion="";
$sum_monto = 0;
$suma_notas=0;
?>
<?php if(count($row)>0):?>
	<div class="ln-card">
	<div class="table-responsive" width="100%">
		<div class="d-flex" style="justify-content:space-between;align-items:center;margin-bottom:8px">
			<h4 class="ln-title">NOTAS DEL RECIBO</h4>
			<div class="small-muted">Registros: <?php echo count($row) ?></div>
		</div>
		<table class="ln-table table table-striped table-hover table-bordered table-condensed table_pago" width="100%">
			<thead>
				<tr>
					<th>Id.</th>
					<th>encab Ide</th>
					<th>venta Ide</th>
					<th>Condición</th>
					<th>Monto Contado</th>
					<th>Monto Crédito</th>
					<th>Flete</th>
					<th>TOTAL VENTA</th>
					<th>Saldo Pendiente</th>
					<th>Monto Aplicado</th>
					<th>Estatus</th>
					<th>Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r):?>
					<tr>
						<?php 
						/*$sum_monto = $sum_monto + $r->monto_contado+$r->flete; */
						$sum_monto = $sum_monto + $r->venta_saldo; 
						$suma_notas =  $suma_notas+$r->monto_contado+$r->flete;
							$mensaje_condicion = Funciones::descrip_condicion($r->venta_condicion);
							$mensaje_estatus   = Funciones::descrip_estatus("tbl_recibo_nota",$r->recnota_status);
						 ?>
						<td>  <?php echo $r->recnota_ide ?></td>
						<td class="text-center"><?php echo $r->recnota_encab_ide ?></td>
						<td class="text-center"><?php echo $r->recnota_venta_ide."-".$r->venta_num  ?></td>
						<td class="text-center small-muted"><?php echo $mensaje_condicion; ?></td>
						<td class="text-right"><?php echo number_format($r->monto_contado,2,',','.'); ?></td>
						<td class="text-right"><?php echo number_format($r->monto_credito,2,',','.'); ?></td>
						<td class="text-right"><?php echo number_format($r->flete,2,',','.'); ?></td>
						<td class="text-right"><?php echo number_format(($r->monto_contado+$r->flete),2,',','.'); ?></td>
						<td class="text-right"><?php echo number_format($r->venta_saldo,2,',','.'); ?></td>
						<td class="text-right"><?php echo number_format($r->monto_aplicado,2,',','.'); ?></td>
						<td class="text-center"><span class="label label-default"><?php echo $mensaje_estatus ?></span></td>

						<td align="center">
							<div class="btn-group">
								<!-- 
								<button class="btn btn-success btn-xs" title="Actualizar" onclick="modal('vst-orden-update','ide=<?php //echo $r->orden_ide ?>')">
									<i class="fa fa-edit"></i>
								</button> -->
								<button class="btn btn-danger btn-xs" title="Borrar" onclick="modal('vst-orden-delete','ide=<?php echo $r->orden_ide; ?>')">
									<i class="fa fa-trash"></i>
								</button>
<!-- 
								<button class="btn btn-info btn-xs" title="Ver Detalles" onclick="modal('vst-recibo-verdetalles','ide=<?php //echo $r->recencab_ide ?>&clien_ide=<?php //echo $r->recencab_clien_ide ?>')">
									<i class="fa fa-search"></i>
								</button>
								<button class="btn btn-success btn-xs" title="Registrar pago" onclick="modal('vst-recibo-pago','ide=<?php //echo $r->recencab_ide ?>')">
									<i class="fa fa-edit"></i>
								</button>
 -->
							</div>
						</td>
					</tr>
				<?php endforeach; ?>
			</tbody>
			<tfoot>
				<tr>
					<th colspan="7" class="text-right">Totales:</th>
					<th class="text-right"><?php echo number_format($suma_notas,2,',','.'); ?></th>
					<th class="text-right"><?php echo number_format($sum_monto,2,',','.'); ?></th>
					<th colspan="3"></th>
				</tr>
			</tfoot>
		</table>
	</div>
	</div>
<?php else: ?>
	<div class="alert alert-info">No hay registros para mostrar.</div>
<?php endif; ?>	
<div class="alert alert-info"><?php echo "<b>Saldo por pagar en NOTAS : ".number_format($sum_monto,2,",",".")."</b>" ?></div>
<div class="alert alert-info"><?php echo "<b>Sumatoria de las Notas: ".number_format($suma_notas,2,",",".")."</b>" ?></div>
<script>
	$(function(){
		$('.table_pago').dataTable();
	})
</script> 