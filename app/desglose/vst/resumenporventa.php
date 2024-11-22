<?php
require '../../../cfg/base.php'; 
extract($_POST);
echo $fn->modalWidth('70%');
//var_dump($desg_ide);
$diferencia = 0;
$total_notas_ventas=0;
$total_notas_asociadas=0;

$row_notas =$mdesglose->sumanotas($desg_ide);  // suma los montos de todas las ventas de un mismo desglose para todas las notas
$total_notas_ventas=$row_notas[0]->total_notas_desglose;


$row_notas_asociadas =$mdesglose->suma_notas_desglose($desg_ide);  // suma los montos a credito de todas las notas asociadas a un desglose
/*var_dump("<pre>");
var_dump($row_notas_asociadas);
var_dump("</pre>");*/
$total_notas_asociadas=$row_notas_asociadas[0]->total_monto_credito;
$diferencia = $total_notas_asociadas - $total_notas_ventas;

$row_tasa = $mtasa->lista();
?>
<?php echo $fn->modalHeader('RESUMEN DESGLOSE POR VENTA') ?>
<div class="modal-body">


<div class="table-responsive">
	<table class="table table-bordered">
	<?php $total_desglose=0; $cuenta_25 =0;
	$cuenta = 0;   // Para ciclo por porcentaje
	$cuenta_0=0;
	$cuenta_5=0;
	$cuenta_10=0;
	$cuenta_15=0;
	$cuenta_20=0;
	$cuenta_25=0;
	$cuenta_30=0;
	$cuenta_33=0;
	$acum_desglose=0;
	?>	
	<?php foreach($mtasa->lista() as $t): ?>
		<?php 
		$porc_desc= $t->tasa_monto	;
		//$monto_venta_detalle=0;
		
		$acum_venta=0;
		$acum_por_porcentaje=0;

		?>

		<?php $row_cantidad_ventas=$mdesglose->cantidad_venta_pordesglose($desg_ide,$porc_desc);
		$c=0;
		$mto=0;
		$contador=0;
		foreach($row_cantidad_ventas as $c): 
			$c=$c->total;
		endforeach; 
/*
		echo '<br>Porcentaje:'.$porc_desc;
		echo '<br>Cantidad:'.$c;*/
		if ( $c > 0){ ?>
				<?php
				$cuenta++;
				$ide_vta_anterior  =0;
				?>
				<div class="col-sm-3">
					<tr >
						<th  width="15%" style="background: #a5a5a5" class="active text-left">PORCENTAJE: <?php echo $t->descrip ?></th>
						<td  width="15%" style="background: #a5a5a5"><?php echo 'Cantidad: '.$c ?></td>
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
						if ($porc_desc ==0)   $cuenta_0++;
						if ($porc_desc ==5)   $cuenta_5++;
						if ($porc_desc ==10)  $cuenta_10++;
						if ($porc_desc ==15)  $cuenta_15++;
						if ($porc_desc ==20)  $cuenta_20++;
						if ($porc_desc ==25)  $cuenta_25++;
						if ($porc_desc ==30)  $cuenta_30++;						
						if ($porc_desc ==33)  $cuenta_33++;

						//$monto_venta_detalle=$monto_venta_detalle+$d->monto_venta;
						$acum_desglose=$acum_desglose+$d->monto_venta;
						$monto_venta=0;
						$venta_ide =$d->desgvta_ide;
						$row_monto_venta=$mdesglose->suma_detallevta_poride($venta_ide); 
						$monto_venta=$row_monto_venta[0]->monto_venta;
						$acum_por_porcentaje=$acum_por_porcentaje+$d->monto_venta;
					?>
						<?php  if ( $contador ==0 ){
									$ide_vta_anterior=$d->desgvtadet_desgvta_ide;
						        }
						       if ( $contador > 0 ){
						       
						       		if ($d->desgvtadet_desgvta_ide <> $ide_vta_anterior) {
						       			echo "<tr>";
						       			echo "<td colspan ='4'  width='50' style='background: #c2c2c2'></td>";
						       			echo "<td width='15' style='background: #c2c2c2'></td>";
						       			echo "<td width='15' style='background: #c2c2c2'></td>";
						       			echo "<td width='20' style='background: #c2c2c2'>".number_format($acum_venta,2,",",".")."</td>";
						       			echo "</tr>";
						       			$acum_venta=0;
						       		}
						       		$ide_vta_anterior=$d->desgvtadet_desgvta_ide;
						       }
						       $contador++;
						       $acum_venta=$acum_venta+$d->monto_venta;
						?>

					<tr>
						<td colspan ="4" width="50%">
							<?php

							switch ($porc_desc) {
							  case 25:
							    echo $cuenta_25." - ".$d->clien_nombre1 ;
							    break;
							  case 0:
							    echo $cuenta_0." - ".$d->clien_nombre1 ;
							    break;

							  default:
							    echo $d->clien_nombre1 ;
							}
							?>
	
							</td>
						<td width="15%"><?php echo $d->nota ?></td>
						<td width="20%"><?php echo number_format($d->monto_venta,2,",",".") ?></td>
						<td></td>

					</tr>
					<?php if ($contador==$c){ 
						       			echo "<tr>";
						       			echo "<td colspan ='4'  width='50' style='background: #c2c2c2'></td>";
						       			echo "<td width='15' style='background: #c2c2c2'></td>";
						       			echo "<td width='15' style='background: #c2c2c2'></td>";
						       			echo "<td width='20' style='background: #c2c2c2'>".number_format($acum_venta,2,",",".")."</td>";
						       			echo "</tr>";
						       			$acum_venta=0;

					  }
				endforeach; ?>	
				<tr>
					<th class="active text-left">TOTAL DE  <?php echo $t->descrip; ?></th>
					<td ><?php echo $acum_por_porcentaje;$acum_por_porcentaje=0; ?></td>
				</tr>					
				<tr><td></td></tr>
				<tr><td></td></tr>
				<div class="space-10"></div>			
				<?php $total_desglose=$total_desglose+$mto; ?>
		<?php 	} ?>

	<?php endforeach; ?>	
	<tr>
		<th class="active text-left">TOTAL DESGLOSE:</th>
		<!-- <td><?php //echo number_format($acum_desglose,2,",","."); ?></td> 
			$acum_desglose debe ser igual a $total_notas_ventas -->
		<td><?php echo number_format($total_notas_ventas,2,",","."); ?></td>
	</tr>					
	<tr>
		<th class="active text-left">TOTAL notas asociadas al Desglose (Monto sin descuento):</th>
		<td><?php echo number_format($total_notas_asociadas,2,",","."); ?></td>   
		
	</tr>					
	<tr>
		<th class="active text-left">Diferencia:</th>
		<td><?php echo number_format($diferencia,2,",","."); ?></td>   
		
	</tr>					

	</table>
</div>	
</div>

<?php echo $fn->modalFooter(1) ?> 