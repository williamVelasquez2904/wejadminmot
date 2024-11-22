<?php require '../../../cfg/base.php'; 
$mensaesta="";
extract($_POST);
if (!isset($venta_ide)){
	echo "ide de la venta no definido";
}
else{
	$row = $mrecibo->recibo_nota_venta($venta_ide);

	?>
	<?php if(count($row)>0):?>
		<div class="table-responsive">
			<!-- <table class="table_lista_venta table-hover table-bordered"> -->
			<table class="table table-hover table-bordered">
				<thead>
					<tr>
						<th>Id</th>
						<th>Recibo</th>
						<th>Fecha</th>
						<th>Monto aplicado</th>
						<th>Estatus</th>
					</tr>
				</thead>
				<tbody>
					<?php foreach($row as $r):?>
						<tr>	<?php $mensaesta = Funciones::descrip_estatus("tbl_recibo_nota",$r->recnota_status);  ?>
						
							<td align="left">  <?php echo $r->recnota_ide ?></td>
							<td align="center"><?php echo $r->recencab_num ?></td>
							<td align="center"><?php echo $r->recencab_fec ?></td>
							<td align="center"><?php echo number_format($r->monto_aplicado,2,",",".") ?></td>
							<td align="center"><?php echo $mensaesta ?></td>
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
			$('.table').dataTable();
		})
	</script>
<?php 
}
?>