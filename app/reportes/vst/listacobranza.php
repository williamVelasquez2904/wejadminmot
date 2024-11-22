<?php require '../../../cfg/base.php';
extract($_POST); 
/*var_dump("<pre>");
var_dump($_POST);
var_dump("</pre>");
*/
//$row = $mventa->lista_cobranza($clien_ide,$vende_ide,$f_ini,$f_fin); 
$row = $mventa->lista_cobranza($clien_ide,$origen,$vende_ide,$f_ini,$f_fin); 
$saldo_calculado = 0;
$mensaesta="";
$nombrecliente="";
$vendedor="";
$monto_contado = 0;
$monto_credito = 0;
$acum_saldo    = 0;
?>
<?php if(count($row)>0):?>
	<div class="table-responsive">
		<!-- <table class="table_lista_venta table-hover table-bordered"> -->
		<table class="table_recibo table-hover table-bordered">
			<thead>
				<tr>
					<th width="4%">Id</th>
					<th width="8%">Num</th>
					<th width="6%">Fecha</th>
					<th width="20%">Cliente</th>
					<th width="5%">Monto Contado</th>
					<th width="5%">Monto Crédito</th>
					<th width="5%">Flete</th>
					<th width="5%">Total Venta</th>
					<th width="5%">Total Abonos</th>
					<th width="5%">Total saldo</th>
					<th width="8%">Vendedor</th>
					<th width="5%">Condición</th>
					<th width="5%">Estatus</th>
					<th width="8%">Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r):?>
					<tr>
						<?php 
						$mensaje_condicion = Funciones::descrip_condicion($r->venta_condicion); 
						$saldo_calculado = 0;
						$total_venta=0;
						if  ($mensaje_condicion=="CONTADO") {
							$total_venta= $r->venta_monto+$r->venta_flete;
							

						}
						if  ($mensaje_condicion=="CREDITO") {
							$total_venta=$r->venta_monto_credito+$r->venta_flete;							
						}
						$saldo_calculado = $total_venta - $r->abono_recibo;
						$acum_saldo = $acum_saldo + $saldo_calculado;
						/*$saldo_calculado = 0;*/
						?>
						
						<td align="left">  <?php echo $r->venta_ide ?></td>
						<td align="center"><?php echo $r->venta_num ?></td>
						<td align="center"><?php echo date_format(date_create($r->venta_fecha),'d-m-Y') ?></td>
						<td align="center"><?php echo $r->cliente_venta ?></td>	
						<td align="center"><?php echo number_format($r->venta_monto,2,",",".") ?></td>
						<td align="right"><?php echo number_format($r->venta_monto_credito,2,",",".") ?></td>
						<td align="right"><?php echo number_format($r->venta_flete,2,",",".") ?></td>
						<td align="right"><?php echo number_format($total_venta,2,",",".") ?></td>

						<td align="right"><?php echo number_format($r->abono_recibo,2,",",".") ?></td>

						<td align="right"><?php echo number_format($saldo_calculado,2,",",".") ?></td>
						<td align="center"><?php echo $r->vendedor ?></td>	
						<td align="center"><?php echo $mensaje_condicion ?></td>
						<td align="center"><?php echo $mensaesta ?></td>
						<td align="center">
							<div class="btn-group">
									<button class="btn btn-info btn-xs" title="Ver Recibos de Pago" onclick="modal('vst-recibo-lista_recibo_venta','venta_ide=<?php echo $r->venta_ide ?>')">
									<i class="fa fa-search"></i>
								</button>

								<button class="btn btn-success btn-xs" title="Actualizar" onclick="modal('vst-orden-update','ide=<?php echo $r->orden_ide ?>')">
									<i class="fa fa-edit"></i>
								</button>
								<button class="btn btn-danger btn-xs" title="Borrar" onclick="modal('vst-orden-delete','ide=<?php echo $r->orden_ide ?>')">
									<i class="fa fa-trash"></i>
								</button>
								<button class="btn btn-info btn-xs" title="Ver Detalles" onclick="modal('vst-orden-verdetalles','ide=<?php echo $r->orden_ide ?>')">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</td>
					</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
			<div class="alert alert-info"><?php echo "Total Deuda: ".$acum_saldo; ?></div>
	</div>

<?php else: ?>
	<div class="alert alert-info">No hay registros para mostrar.</div>
<?php endif; ?>	
<script>
	$(function(){
		$('.table_recibo').dataTable();
	})
</script>