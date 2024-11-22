<?php 
require '../../../cfg/base.php'; 
extract($_POST);
echo $fn->modalWidth('70%');
//var_dump($desg_ide);

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
		$monto_venta_detalle=0;
		$cuenta =0;

		?>

		<?php $row_cantidad_ventas=$mdesglose->cantidad_venta_pordesglose($desg_ide,$porc_desc);
		$c=0;
		$mto=0;
		foreach($row_cantidad_ventas as $c): 
			$c=$c->total;
		endforeach; 
		if ( $c > 0){ ?>
				<?php $cuenta++; ?>
				<div class="col-sm-3">
					<tr >
						<th  width="15%" style="background: #a5a5a5" class="active text-left">PORCENTAJE:</th>
						<td  width="15%" style="background: #a5a5a5"><?php echo $t->descrip ?></td>
					</tr>
				</div>
				<div class="clearfix"></div>
				<div class="col-sm-9">
					<tr>
						<td colspan ="4" width="50%" style="background: #c2c2c2">CLIENTE</td>
						<td width="15%" style="background: #c2c2c2">NOTA</td>
						<td width="15%" style="background: #c2c2c2">MONTO</td>
						<td width="20%" style="background: #c2c2c2">TOTAL VENTA</td>
					</tr>
				</div>
				<?php foreach($mdesglose->venta_pordesglose($desg_ide,$porc_desc) as $d): ?>
					<?php 
						$monto_venta_detalle=$monto_venta_detalle+$d->monto_venta;
						$monto_venta=0;
						$venta_ide =$d->desgvta_ide;
						$row_monto_venta=$mdesglose->suma_detallevta_poride($venta_ide);
						$monto_venta=$row_monto_venta[0]->monto_venta;
					?>


					<tr>
						<td colspan ="4" width="50%"><?php echo $cuenta." - ".$d->clien_nombre1 ?></td>
						<td width="15%"><?php echo $d->nota ?></td>
						<td width="20%"><?php echo number_format($d->monto_venta,2,",",".") ?></td>
						<td></td>
					</tr>

				<?php endforeach; ?>	
				<tr>
					<th class="active text-left">TOTAL NOTAS CON PORCENTAJE DE  <?php echo $t->descrip; ?></th>
					<td><?php echo $monto_venta_detalle ?></td>
				</tr>					
				<div class="space-10"></div>			
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