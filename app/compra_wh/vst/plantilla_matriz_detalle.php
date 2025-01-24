	<td align="center"><?php echo $r->compra_ide;?></td>
	<td align="center"><?php echo $r->compra_prov_ide;?></td>
	<td align="center"><?php echo implode('-', array_reverse(explode('-', $fecha_factura)));?></td>
	<td align="center"><?php echo implode('-', array_reverse(explode('-', $r->compra_fecha_recep)));?></td>						
	<td align="left"><?php echo $r->nombre1.'<b>'.$texto_destino.'</b> -  ' .'<b>'.$r->compra_sustitucion.'</b>' ?> <font color="<?php echo $color_tipo; ?>"><b><?php echo $tipo_text; ?></b></font> </td>
	<td align="center"><?php echo $r->compra_num ?></td>
	<td align="center"><?php echo $r->compra_porc_desc ?></td>
	<td align="right"><?php echo number_format($monto,2,",",".") ?></td>
	<td align="right"><?php echo number_format($r->compra_devol,2,",",".") ?></td>

	<td align="right"><?php echo number_format($comision,2,",",".") ?></td>
	<td align="right"><?php echo number_format($comision_ex,2,",",".") ?></td> <!-- OJO aqui va comision excel -->
	<td align="right"><?php echo number_format($r->abono,2,",",".") ?></td>
	<td align="right">
		<font size ="3", color =<?php if ($saldo < 0 ) echo "#ff0000" ?>>
		<?php echo number_format($saldo,2,",",".") ?></td>

	<!-- <td align="center"><?php //echo '<b>'.$estatus_text.'</b>' ?></td> -->
	<td align="center">
		<div class="btn-group"> 
			<button class="btn btn-success btn-xs" title="Actualizar"
			onclick="modal('vst-compra_wh-update_matriz','ide=<?php echo $r->compra_ide ?>')">
				<i class="fa fa-edit"></i>
			</button>
		</div>
	</td>