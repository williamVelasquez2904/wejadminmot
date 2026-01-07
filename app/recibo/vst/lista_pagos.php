<?php
 require '../../../cfg/base.php'; 

extract($_POST);
/*$encab_ide=1;*/
var_dump($encab_ide);
$row = $mrecibo->recibo_pago_lista($encab_ide);
$mensaesta="";
$nombrecliente="";
$vendedor="";
$monto_contado=0;
$monto_credito=0;
$sum_monto =0 ;
?> 
<?php if(count($row)>0):?>
	<div class="table-responsive">
		<legend>PAGOS DEL  RECIBO</legend>
		<table class="table_nota table-hover table-bordered" width="100%">
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
						
						<td align="left" width="">  <?php echo $r->recpago_ide ?></td>
						<td align="center"><?php echo $r->formapago ?></td>						
						<td align="center"><?php echo number_format($r->monto,2,".",",") ?></td>
						<td align="center"><?php echo $r->recpago_status ?></td>
						<td align="center">
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
		</table>
	</div>

<?php else: ?>
	<div class="alert alert-info">No hay pagos registrados para este recibo.</div>
<?php endif; ?>	
<div class="alert alert-info"><?php echo "<b>TOTAL PAGOS: ".number_format($sum_monto,2,",",".")."</b>" ?></div>
<script>
	$(function(){
		$('.table_nota').dataTable();
	})
</script> 