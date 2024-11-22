<?php
require '../../../cfg/base.php'; 
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
						
							$mensaje_condicion = Funciones::descrip_condicion($r->venta_condicion);
							$mensaje_estatus   = Funciones::descrip_estatus("tbl_recibo_nota",$r->recnota_status);
						 ?>
						<td align="left" width="">  <?php echo $r->recnota_ide ?></td>
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
							<div class="btn-group">
								<!-- 
								<button class="btn btn-success btn-xs" title="Actualizar" onclick="modal('vst-orden-update','ide=<?php //echo $r->orden_ide ?>')">
									<i class="fa fa-edit"></i>
								</button> -->
								<button class="btn btn-danger btn-xs" title="Borrar" onclick="modal('vst-orden-delete','ide=<?php echo $r->orden_ide ?>')">
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