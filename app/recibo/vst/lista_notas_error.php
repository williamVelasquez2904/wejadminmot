<?php
// --- Estilos modernos y localizados para lista_notas.php ---
echo '<style>
.lista-notas-card {
	background: #fff;
	border-radius: 12px;
	box-shadow: 0 2px 12px rgba(0,0,0,0.08);
	padding: 24px 18px 18px 18px;
	margin-bottom: 24px;
	<?php if(count($row)>0):?>
$monto_credito=0;
$condicion=0;
$mensaje_condicion="";
$sum_monto = 0;
$suma_notas=0;
?>
<?php if(count($row)>0):?>
	<div class="">
	<div class="table-responsive" width="100%">
		<legend>NOTAS  DEL RECIBO</legend>
		<table class="table_pago table-hover table-bordered" width="100%">
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

						<style>
						.lista-notas-card {
							background: #fff;
							border-radius: 12px;
							box-shadow: 0 2px 12px rgba(0,0,0,0.08);
							padding: 24px 18px 18px 18px;
							margin-bottom: 24px;
							border: 1px solid #e0e0e0;
						}
						.lista-notas-table {
							border-radius: 8px;
							overflow: hidden;
							background: #f9fafb;
							font-size: 0.98em;
						}
						.lista-notas-table th {
							background: #e3f2fd;
							color: #007bff;
							font-weight: 700;
							border-bottom: 2px solid #b3d8fd;
						}
						.lista-notas-table td {
							background: #fff;
							border-bottom: 1px solid #f0f0f0;
						}
						.lista-notas-table tr:hover td {
							background: #fceabb44;
						}
						.lista-notas-saldo-box, .lista-notas-suma-box {
							background: linear-gradient(90deg, #e3f2fd 0%, #fceabb 100%);
							border-radius: 10px;
							box-shadow: 0 2px 8px rgba(0,0,0,0.07);
							padding: 10px 22px;
							display: inline-block;
							font-size: 1.08rem;
							border: 1.5px solid #b3d8fd;
							margin: 8px 8px 8px 0;
							color: #007bff;
							font-weight: 700;
						}
						.lista-notas-saldo-box .valor, .lista-notas-suma-box .valor {
							color: #e67e22;
							font-size: 1.15em;
							font-weight: 700;
							margin-left: 8px;
						}
						.lista-notas-btn-group .btn-danger {
							background: linear-gradient(90deg, #ff5858 0%, #f09819 100%) !important;
							color: #fff !important;
							border: none !important;
							border-radius: 6px !important;
							font-weight: 600;
							box-shadow: 0 2px 8px rgba(255,88,88,0.10);
							transition: background 0.2s;
						}
						.lista-notas-btn-group .btn-danger:hover {
							background: linear-gradient(90deg, #f09819 0%, #ff5858 100%) !important;
							color: #fff !important;
						}
						.lista-notas-legend {
							font-size: 1.1rem;
							font-weight: 700;
							color: #007bff;
							margin-bottom: 18px;
							border-left: 4px solid #007bff;
							padding-left: 10px;
							background: #f7faff;
							border-radius: 4px;
							display: inline-block;
						}
						<?php if(count($row)>0):?>
							<table class="lista-notas-table table table-hover table-bordered" width="100%">
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
										$sum_monto = $sum_monto + $r->venta_saldo; 
										$suma_notas =  $suma_notas+$r->monto_contado+$r->flete;
										$mensaje_condicion = Funciones::descrip_condicion($r->venta_condicion);
										$mensaje_estatus   = Funciones::descrip_estatus("tbl_recibo_nota",$r->recnota_status);
										?>
										<td align="left">  <?php echo $r->recnota_ide ?></td>
										<td align="center"><?php echo $r->recnota_encab_ide ?></td>
										<td align="center"><?php echo $r->recnota_venta_ide."-".$r->venta_num  ?></td>
										<td align="center"><?php echo $mensaje_condicion; ?></td>
										<td align="center"><?php echo $r->monto_contado ?></td>
										<td align="center"><?php echo $r->monto_credito ?></td>
										<td align="center"><?php echo $r->flete ?></td>
										<td align="center"><?php echo ($r->monto_contado+$r->flete) ?></td>
										<td align="center"><?php echo $r->venta_saldo ?></td>
										<td align="center"><?php echo $r->monto_aplicado ?></td>
										<td align="center"><?php echo $mensaje_estatus ?></td>
										<td align="center">
											<div class="lista-notas-btn-group btn-group">
												<button class="btn btn-danger btn-xs" title="Borrar" onclick="modal('vst-orden-delete','ide=<?php echo $r->orden_ide; ?>')">
													<i class="fa fa-trash"></i>
												</button>
											</div>
										</td>
									</tr>
									<?php endforeach; ?>
								</tbody>
							</table>
							<div style="margin-top:18px;">
								<span class="lista-notas-saldo-box"><i class="fa fa-money"></i> Saldo por pagar en NOTAS: <span class="valor"><?php echo number_format($sum_monto,2,",",".") ?></span></span>
								<span class="lista-notas-suma-box"><i class="fa fa-list"></i> Sumatoria de las Notas: <span class="valor"><?php echo number_format($suma_notas,2,",",".") ?></span></span>
							</div>
						</div>
						<?php else: ?>
							<div class="alert alert-info">No hay registros para mostrar.</div>
						<?php endif; ?>
						<script>
							 $(function(){
									$('.lista-notas-table').dataTable();
							 })
						</script>