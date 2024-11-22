<?php 
require '../../../cfg/base.php'; 
extract($_POST);
echo $fn->modalWidth('70%');
var_dump($desg_ide);

$row_tasa = $mtasa->lista();
?>
<?php echo $fn->modalHeader('RESUMEN DESGLOSE POR VENTA') ?>
<div class="modal-body">


<div class="table-responsive">
	<table class="table table-bordered">
	<?php $total_desglose=0; ?>	
	<?php foreach($mtasa->lista() as $t): ?>
		<?php 
		$porc_desc= $t->tasa_monto	;

		?>

		<?php $row_cantidad_ventas=$mdesglose->cantidad_venta_pordesglose($desg_ide,$porc_desc);
		$c=0;
		$mto=0;
		foreach($row_cantidad_ventas as $c): 
			$c=$c->total;
		endforeach; 
		if ( $c > 0){ ?>
				<div>
				<tr>
					<th class="active text-left">PORCENTAJE:</th>
					<td><?php echo $t->descrip ?></td>
				</tr>
				</div>
				<br>
				<tr>
					<td>CLIENTE</td>
					<td>NOTA</td>
					<td>MONTO</td>
					<td>TOTAL VENTA</td>
				</tr>
				<?php foreach($mdesglose->venta_pordesglose($desg_ide,$porc_desc) as $d): ?>
					<?php 
						$monto_venta=0;
						$venta_ide =$d->desgvta_ide;
						$row_detalle_vta=$mdesglose->lista_detallevta_poride($venta_ide);
						foreach($row_detalle_vta as $v): 
							$monto_venta=$v->monto_venta;
							//var_dump($monto_venta);
						endforeach; 
						$mto=$mto+$monto_venta;
					?>
					<tr>
						<th class="active text-left" width="5%">Id</th>
						<td width="5%"><?php echo $d->desgvtadet_desgvta_ide ?></td>
						<th class="active text-left" width="10%">Cliente:</th>
						<td width="30%"><?php echo $d->clien_nombre1 ?></td>
						<th class="active text-left" width="10%">Monto Venta</th>
						<td width="20%"><?php echo $monto_venta ?></td>
					</tr>
				<?php endforeach; ?>	
				<tr>
					<th class="active text-left">TOTAL PORCENTAJE <?php echo $t->descrip; ?></th>
					<td><?php echo $mto ?></td>
				</tr>								
				<?php $total_desglose=$total_desglose+$mto; ?>
		<?php 	} ?>

	<?php endforeach; ?>	
	<tr>
		<th class="active text-left">TOTAL DESGLOSE:</th>
		<td><?php echo $total_desglose; ?></td>
	</tr>					
	</table>
</div>	
</div>

<?php echo $fn->modalFooter(1) ?>