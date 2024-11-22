<?php 
/*require '../../../cfg/base.php'; */
extract($_POST);
$estado ="";
$row = $mventa_wh->lista_general_ventas(); ?> 

<?php if(count($row)>0):?>
	<div class="table-responsive">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th width="4%">Ide Venta Gral.160924</th> 
					<th width="6%">Fecha </th>
					<th width="15%">Cliente</th>
					<th width="10%">Num Factura</th>
					<th width="5%">% Descuento</th>
					<th width="5%">% Asig </th>
					<th width="5%">Monto </th>
					
					<th width="5%">Flete </th>
					<th width="5%">Total Abono </th>
					<th width="5%">Por cobrar </th>
					<th width="5%">Condición</th>
					<th width="10%">Vendedor</th>
					<th width="10%">Estado</th>
					<th width="5%">Opciones</th>				
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): 
					$total_venta =0;
						/*$date = date("d-m-Y");*/
					$fecha_actual = strtotime(date("d-m-Y H:i:00",time()));
					$fecha_venc = strtotime($r->venta_fecha."+ 7 days");
					//echo date("d-m-Y",$fecha_venc);
					$mensaje_estado="VIGENTE";
					if 	($fecha_actual > $fecha_venc )
						$mensaje_estado="VENCIDA";

					$total_abono = 0 ;
					$estilo="";
					$color_letra = ""; 
					$condicion_text='';
					switch ($r->venta_condicion) {
	  				case 0:
	  					$color_letra = ""; 
	  					$color_fondo = "#D9EDF7"; 
						$condicion_text="Contado";
						$total_venta =$r->venta_monto +$r->venta_flete;
	    				break;
	  				case 1:
	  				    /*$estilo      = "color:#000000; font-size:12px; background-color: #fb5e17;";*/
	  				    /*$estilo      = "color:#000000; font-size:12px; background-color: #FF0000;";  // rojo*/
	  				    $estilo      = "color:#000000; font-size: 16px; background-color: #fb5e17;";
	  					$color_letra = "#1b00ff"; 
	  					//$color_fondo = "#FFFFFF"; 
	  					$color_fondo = "#fb5e17"; 
	    				$condicion_text="Crédito";
	    				$total_venta =$r->venta_monto_credito +$r->venta_flete;
	  				default:						    
	    				break;
	  					$condicion_text="Error.Admin.".$r->compra_condicion;
					}


					/*$total_venta =$r->venta_monto +$r->venta_flete;*/
					$por_cobrar = $total_venta - $total_abono;
					$color_destino='';
					$texto_destino='';
					$monto=0;
					$monto=round($total_venta,2);

					?>

					<tr  style="<?php echo $estilo; ?>">
						<!-- <tr  bgcolor="<?php //echo $color_fondo; ?>" style="color: <?php //echo $color_letra;  ?>;"> -->

						<td ><?php echo $r->venta_ide ?></td>

						<td align="center">
						<?php
							//var_dump($r->venta_fecha);
							if ($r->venta_fecha == "0000-00-00" )
								echo $r->venta_fecha;
							else
							 	echo date_format(date_create($r->venta_fecha),"d/m/Y");

/*							if 	(len(trim($r->venta_fecha))>0)
									echo "Paso". date_format(date_create($r->venta_fecha),'d-m-Y'); 
							if 	(len(trim($r->venta_fecha))==0)	
									echo $r->venta_fecha;
*/						?>
						</td>
						<td align="center"><?php echo $r->clien_nombre1; ?></td>
						<td align="center"><?php echo $r->venta_num ?></td>
						<td align="center"><?php echo $r->venta_porc_desc ?></td>
						<td align="center"><?php echo $r->venta_porc_asig ?></td>
						<td align="right"><?php echo number_format($r->venta_monto,2,",",".") ?></td>
						
						<td align="right"><?php echo number_format($r->venta_flete,2,",",".") ?></td>
						<td align="right"><?php echo number_format($total_abono,2,",",".") ?></td>
						<td align="right"><?php echo number_format($por_cobrar,2,",",".") ?></td>
						<td align="center"><?php echo $condicion_text ?></td>
						<td align="center"><?php echo $r->vendedor ?></td>
						<td align="center"><?php echo $mensaje_estado ?></td>
						<td align="center">
							<div class="btn-group">
								<!-- <button class="btn btn-success btn-xs" title="Actualizar"
								onclick="modal('vst-compracom-update1','ide=<?php //echo //$r->compra_encab_ide ?>')">
									<i class="fa fa-edit"></i>
								</button> -->
							</div>
						</td>						
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