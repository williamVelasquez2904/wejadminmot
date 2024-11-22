<?php require '../../../cfg/base.php'; ?>
<?php 
$monto=0;  // monto contado
$monto_credito=0;
extract($_POST);
$row = $mcompra_wh->lista_temporal(); 
$suma_comision=0;
?> 
<?php if(count($row)>0):?>
	<div class="table-responsive">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<?php $ancho="6%" ?>

					<th width="3%">Id 25-09</th>
					<th width="<?php echo $ancho; ?>">Proveedor</th>
					<th width="<?php echo $ancho; ?>">Fecha Factura</th>
					<th width="<?php echo $ancho; ?>">Fecha envio</th>
					<th width="<?php echo $ancho; ?>">Fecha recep</th>
					<th width="20%">Cliente </th>
					<th width="<?php echo $ancho; ?>">Num Factura</th>
					<th width="<?php echo $ancho; ?>">% Descuento</th>
					<th width="<?php echo $ancho; ?>">Tipo</th>
					<th width="<?php echo $ancho; ?>">Comisión</th>
					<th width="<?php echo $ancho; ?>">Contado </th>
					<th width="<?php echo $ancho; ?>">Monto Crédito </th>
					<th width="<?php echo $ancho; ?>">Flete</th>
					<th width="<?php echo $ancho; ?>">Condición</th>	
					<th width="<?php echo $ancho; ?>">Estatus</th>	
					<th width="3%">Opciones</th>				
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): 
					$_SESSION['color_tipo']="";
					$texto_sustitucion="";
					$estilo="";
					$color_letra = ""; 
					$condicion_text='';
					$tipo_text ="";
					$color_tipo="";
					$color_destino='';
					$texto_destino='';
					//$estilo="";
					//$color_letra    = ""; 
					//$condicion_text = '';
					$estatus_text   = '';

					$tipo_text ="";
					if ($r->compra_tipo!==1){
						$tipo_text =$r->tipvta_descrip;
					}
					
					//$tipo_text =$r->tipvta_descrip;   // ojo 
					//$tipo_text =funciones::getTipoFactura($r->compra_tipo);

					//$color_tipo=$_SESSION['color_tipo'];
					$color_tipo=$r->tipvta_color;
					$fecha_factura=$r->compra_fecha;

					switch ($r->compra_condicion) {
	  				case 0:
	  					$color_letra = ""; 
	  					$color_fondo = "#D9EDF7"; 
						$condicion_text="Contado";
	    				break;
	  				case 1:
	  				    /*$estilo      = "color:#000000; font-size:12px; background-color: #fb5e17;";*/
	  				    /*$estilo      = "color:#000000; font-size:12px; background-color: #FF0000;";  // rojo*/
	  				    $estilo      = "color:#000000; font-size: 12px; background-color: #fb5e17;";
	  					$color_letra = "#1b00ff"; 
	  					//$color_fondo = "#FFFFFF"; 
	  					$color_fondo = "#fb5e17"; 
	    				$condicion_text="Crédito";
	  				default:						    
	    				break;
	  					$condicion_text="Error.Admin.".$r->compra_condicion;
					}


					
					//var_dump($r->compra_destino);
					switch ($r->compra_destino) {
	  				case 0:
	  					//$color_letra = ""; 
	  					$texto_destino= "";
	    				break;
	  				case 1:
	  					//$color_letra = "#FF0000"; 
	  					$texto_destino= " - SAN CRISTÓBAL";
	  					break;
	  				case 2:
	  					//$color_letra = "#ff00ff"; 
	  					$texto_destino= "";
	    				break;
	  				default:						    
	  					 //$color_letra="Error.Admin.".$r->compra_destino;
	    				break;

					}
					//$texto_sustitucion=$r->compra_sustitucion;
					switch ($r->compra_estatus) {
	  				case 0:
	  					//$estilo="";
						$color_letra = ""; 
	  					$color_fondo = ""; 	  					
	  					$texto_sustitucion="EN PROCESO";
	  					$estatus_text   = 'Normal';
	    				break;
	    			case 1:
	  					/*$color_letra = "#FF0001"; */
	  					$texto_sustitucion="ELIMINADA";
	    				break;	
  					case 3:  // En desglose
	  				    //$estilo      = "color:#000000; font-size: 12px; background-color: #17a589;";
	  					$estatus_text   = 'En desglose';
	  					$color_fondo = ""; 
	  				case 5:
	  					$color_letra = "#FF0001"; 
	  					$texto_sustitucion="SUSTITUIDA";
	  					break;
	  				case 6:
	  					$color_letra = "#ff00GG"; 
	  					$texto_sustitucion="SUSTITUCIÓN";
	    				break;
	  				default:						    
	  					 //$color_letra="Error.Admin.".$r->compra_destino;
	  					$texto_sustitucion="ERROR EN VALOR";
	    				break;
					}


					$monto=round($r->compra_monto,2);
					$monto_credito=round($r->compra_monto_credito,2);
					$tasa_comision=0;
					$tasa_comision=$r->tipvta_com_compra;
					/*$tasa_comision=funciones::getComision("compra",$r->compra_tipo);*/
					$comision=0;
					//0 Contado, 1 Credito

					if ($r->compra_condicion ==0 ){
						$comision=($monto*$tasa_comision)/100;
					} 
					if ($r->compra_condicion ==1 ){
						$comision=($monto*$tasa_comision)/100;   // validar luego con walter 
					} 
					$suma_comision=$suma_comision+$comision;
					?>

					<tr  style="<?php echo $estilo; ?>">
						<!-- <tr  bgcolor="<?php //echo $color_fondo; ?>" style="color: <?php //echo $color_letra;  ?>;"> -->

						<td ><?php echo $r->compra_ide ?></td>
						<td ><?php echo $r->prove_razonsocial ?></td>
						<td align="center"><?php echo implode('-', array_reverse(explode('-', $fecha_factura)));?></td>
						<td align="center"><?php echo implode('-', array_reverse(explode('-', $r->compra_fecha_envio)));?></td>
						<td align="center"><?php echo implode('-', array_reverse(explode('-', $r->compra_fecha_recep)));?></td>						
						<td align="left"><?php echo $r->nombre1.'<b>'.$texto_destino.'</b> -  ' .'<b>'.$r->compra_sustitucion.'</b>' ?> <font color="<?php echo $color_tipo; ?>"><b><?php echo $tipo_text; ?></b></font> </td>
						<td align="center"><?php echo $r->compra_num ?></td>
						<td align="center"><?php echo $r->compra_porc_desc ?></td>
						<td align="center"><?php echo $r->tipvta_descrip ?></td>
						<td align="right"><?php echo number_format($comision,2,",",".") ?></td>
						<td align="right"><?php echo number_format($monto,2,",",".") ?></td>

						<td align="right"><?php echo number_format($monto_credito,2,",",".") ?></td>
						<td align="right"><?php echo number_format($r->compra_flete,2,",",".") ?></td>
						<td align="center"><?php echo $condicion_text ?></td>
						<td align="center"><?php echo '<b>'.$estatus_text.'</b>' ?></td>
						<td align="center">
							<div class="btn-group"> 
								<button class="btn btn-success btn-xs" title="Actualizar"
								onclick="modal('vst-compra_wh-update_matriz','ide=<?php echo $r->compra_ide ?>')">
									<i class="fa fa-edit"></i>
								</button>
							</div>
						</td>						
					</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
	</div>
	<div class="alert alert-info"><?php echo "Total Comisión: ".number_format($suma_comision,2,",","."); ?></div>	
<?php else: ?>

	<div class="alert alert-info">No hay registros para mostrar.</div>
<?php endif; ?>	
<script>
	$(function(){
		$('.table').dataTable();
	})
</script>