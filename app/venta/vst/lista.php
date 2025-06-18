<?php require '../../../cfg/base.php';
extract($_POST);
/*$row = $mventa->lista_sinabono(); */
//$row = $mventa->lista(); 
$row = $mventa->lista_sinabono();
$saldo_calculado = 0;
$mensaesta="";
$nombrecliente="";
$vendedor="";
$monto_contado=0;
$monto_credito=0;
$cantidad_ventas = 0;
?> 
<?php if(count($row)>0):?>
	<div class="table-responsive">
		<!-- <table class="table_lista_venta table-hover table-bordered"> -->
		<table class="table_recibo table-hover table-bordered">
			<thead>
				<tr>
					<?php
						 $ancho ="5%"; 
						 $ancho2="10%";
						 $ancho_monto="5%";
						 $ancho_cliente="14%";
						 $ancho_vendedor="8%";

					?>
					<th width="3%">Id [18-06-2025]</th>
					<th width="<?php echo $ancho; ?>">Num</th>
					<th width="<?php echo $ancho; ?>">Fec. Proc.</th>
					<th width="<?php echo $ancho; ?>">Fec. Venc.</th>
					<th width="<?php echo $ancho; ?>">Fec. Recep.</th>
					<th width="<?php echo $ancho_cliente; ?>">Cliente</th>
					<th width="<?php echo $ancho_monto; ?>">Monto Contado</th>
					<th width="<?php echo $ancho_monto; ?>">Monto Crédito</th>
					<th width="5%">Flete</th>
					<th width="5%">Total Venta</th>
					<th width="5%">% Factura.</th>
					<th width="5%">% Asig.</th>
					<!-- <th width="5%">Total Abonos</th> -->
					<th width="5%">Total saldo</th>
					<th width="<?php echo $ancho_vendedor; ?>">Vendedor</th>
					<th width="5%">Condición</th>
					<th width="5%">Tipo</th>
					<th width="5%">Origen</th>
					<!-- <th width="5%">Estatus</th> -->
					<th width="5%">Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r):?>
					<tr>
						<?php 
						$fecha_original = "";
						$fec_venc       = "";
						
						if (is_null($r->venta_fecha)) {
							$fecha_original ="";
						    echo "El campo es null.";
						} else {
							$fecha_original = $r->venta_fecha;

							if ($fecha_original<>"0000-00-00"){
								$fecha_obj = new DateTime($fecha_original);
								$fecha_obj->modify('+30 days'); 
								$fec_venc = $fecha_obj->format('Y-m-d'); 
							}
						    
						}
						
						$cantidad_ventas=$cantidad_ventas+1;
						$mensaje_condicion = Funciones::descrip_condicion($r->venta_condicion); 
						$saldo_calculado = 0;
						$total_venta=0;
						if  ($mensaje_condicion=="CONTADO") {
							$total_venta= $r->venta_monto+$r->venta_flete;

						}
						if  ($mensaje_condicion=="CREDITO") {
							$total_venta=$r->venta_monto_credito+$r->venta_flete;							
						}

/*						$saldo_calculado = $total_venta - $r->abono_recibo;
						if (len(trim($r->venta_fecha))==0 ){

						}
*/
						?>
						
						<td align="left">  <?php echo $r->venta_ide ?></td>
						<td align="center"><?php echo $r->venta_num ?></td>
						<td align="center"><?php echo implode('-', array_reverse(explode('-', $r->venta_fecha_registro)));?></td>

						<!-- <td align="center"><?php //echo $r->venta_fecha_registro ?> -->

						<td align="center"><?php echo implode('-', array_reverse(explode('-', $fec_venc)));?></td>
						<td align="center"><?php echo implode('-', array_reverse(explode('-', $r->venta_fecha)));?></td>
<!-- 						<?php 	
						//	if 	(len(trim($r->venta_fecha))>0)
						//			echo "Paso". date_format(date_create($r->venta_fecha),'d-m-Y'); 
						//	if 	(len(trim($r->venta_fecha))==0)	
						//			echo $r->venta_fecha;
						?> -->
						</td>
						<td align="center"><?php echo $r->cliente_venta ?></td>	
						<td align="center"><?php echo number_format($r->venta_monto,2,",",".") ?></td>
						<td align="right"><?php echo number_format($r->venta_monto_credito,2,",",".") ?></td>
						<td align="right"><?php echo number_format($r->venta_flete,2,",",".") ?></td>
						<td align="right"><?php echo number_format($total_venta,2,",",".") ?></td>
						<td align="right"><?php echo  $r->venta_porc_desc ?></td>
						<td align="right"><?php echo  $r->venta_porc_asig ?></td>
						<!-- <td align="right"><?php //echo number_format($r->abono_recibo,2,",",".") ?></td> -->
						<td align="right"><?php echo number_format($saldo_calculado,2,",",".") ?></td>
						<td align="center"><?php echo $r->vendedor ?></td>	
						<td align="center"><?php echo $mensaje_condicion ?></td>
						<td align="center"><?php echo $r->tipvta_descrip ?></td>
						<td align="center"><?php echo $r->origenvta_descrip ?></td>
						<!-- <td align="center"><?php //echo $mensaesta ?></td> -->
						<td align="center">
							<div class="btn-group">

								<button class="btn btn-success btn-xs" title="Actualizar" onclick="modal('vst-venta-update','ide=<?php echo $r->venta_ide ?>')">
									<i class="fa fa-edit"></i>
								</button>
								<button class="btn btn-danger btn-xs" title="Borrar" onclick="modal('vst-venta-delete','ide=<?php echo $r->venta_ide ?>')">
									<i class="fa fa-trash"></i>
								</button>
<!-- 
								<button class="btn btn-info btn-xs" title="Ver Detalles" onclick="modal('vst-orden-verdetalles','ide=<?php //echo $r->orden_ide ?>')">
									<i class="fa fa-search"></i>
								</button>
								 -->
							</div>
						</td>
					</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
	</div>
	<div class="alert alert-info">Cantidad de ventas: <?php  echo $cantidad_ventas; ?></div>
<?php else: ?>
	<div class="alert alert-info">No hay registros para mostrar.</div>
<?php endif; ?>	
<script>
	$(function(){
		$('.table_recibo').dataTable();
	})
</script>