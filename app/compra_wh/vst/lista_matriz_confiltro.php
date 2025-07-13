<?php require '../../../cfg/base.php'; ?>
<?php 
$monto=0;  // monto contado
$monto_credito=0;
//var_dump("entro");
extract($_POST);
//if (isset($prov_ide)) echo var_dump($prov_ide);

$row =      $mcompra_wh->lista_matriz_confiltro($prov_ide,$clien_ide,$f_ini,$f_fin);
include 'inicializar.php';

?> 
<?php if(count($row)>0):?>
	<div class="table-responsive">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<?php $ancho="6%" ?>
					<th width="3%">Id</th>
					<th width="<?php echo $ancho; ?>">Fecha Factura</th>
					<th width="<?php echo $ancho; ?>">Fecha envio</th>
					<th width="<?php echo $ancho; ?>">Fecha recep</th>
					<th width="20%">Cliente</th>
					<th width="<?php echo $ancho; ?>">Num Factura</th>
					<th width="<?php echo $ancho; ?>">% Descuento</th>
					<th width="<?php echo $ancho; ?>">Tipo</th>
					<th width="<?php echo $ancho; ?>">% Com.</th>
					<th width="<?php echo $ancho; ?>">Comisión</th>
					<th width="<?php echo $ancho; ?>">Comisión Excel</th>
					<th width="<?php echo $ancho; ?>">Comparación</th>
					<th width="<?php echo $ancho; ?>">Contado </th>
					<!-- <th width="<?php echo $ancho; ?>">Monto Crédito </th> -->
					<th width="<?php echo $ancho; ?>">Flete</th>
					<th width="<?php echo $ancho; ?>">Condición</th>	
					<th width="<?php echo $ancho; ?>">Estatus</th>	
					<th width="3%">Opciones</th>				
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): 
					$texto_sustitucion="";
					$texto_comparacion="";
					$estilo="";
					$color_letra = ""; 
					$condicion_text='';
					$tipo_text ="";
					$tipo_text =funciones::getTipoFactura($r->compra_tipo);

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

					$color_destino='';
					$texto_destino='';
					
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
					$texto_sustitucion=$r->compra_sustitucion;
					switch ($r->compra_estatus) {
	  				case 0:
	  					/*$color_letra = "#FF0001"; */
	  					$texto_sustitucion="EN PROCESO";
	    				break;
	    			case 1:
	  					/*$color_letra = "#FF0001"; */
	  					$texto_sustitucion="ELIMINADA";
	    				break;	
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
					include 'calcular_totales_matriz.php';
/*
					$monto        =round($r->compra_monto,2); // MONTO CONTADO
					$monto_credito=round($r->compra_monto_credito,2); // MONTO CREDITO
					$tasa_comision=0;
					$tasa_comision=$r->tipvta_com_compra;
					$comision=0;
					$comision_ex=0;
					if (isset($r->compra_comision_ex))  $comision_ex=round($r->compra_comision_ex,2);

					if ($r->compra_condicion ==0 ){ // Contado
						$comision= round(($monto*$tasa_comision)/100,3);
						$acum_monto_contado=$acum_monto_contado+$monto;
					} 
					if ($r->compra_condicion ==1 ){
						$comision= round(($monto_credito*$tasa_comision)/100,3);
						$acum_monto_credito=$acum_monto_credito+$monto_credito;
					} 
					$suma_comision=$suma_comision+$comision;
					$suma_comision_ex=$suma_comision_ex+$comision_ex;
					$texto_comparacion="";
					if (isset($r->compra_comision_ex)) {
						
						if  ( ($r->compra_comision_ex == $comision) ){   
							$texto_comparacion=" Igual";
						} 
						if  ( ($r->compra_comision_ex <> $comision) ){   
							
							$diferecia = abs($r->compra_comision_ex - $comision);
							if ($diferecia > 0.05)
								$texto_comparacion = "Diferente";
						} 
					}	*/
					?>

					<tr  style="<?php echo $estilo; ?>">
						<td ><?php echo $r->compra_ide ?></td>
						<td align="center"><?php echo date_format(date_create($r->compra_fecha),'d-m-y') ?></td>

						<!-- <td align="center"><?php //echo date_format(date_create($r->compra_fecha_envio),'d-m-y') ?></td> -->

						<td align="center"><?php  if ($r->compra_fecha_envio != NULL ) echo date_format(date_create($r->compra_fecha_envio),'d-m-y')  ?></td>
						<td align="center"><?php  if ($r->compra_fecha_recep != NULL ) echo date_format(date_create($r->compra_fecha_recep),'d-m-y')  ?></td>
						<!-- <td align="center"><?php //echo date_format(date_create($r->compra_fecha_recep),'d-m-y') ?></td> -->
						<td align="left"><?php echo $r->nombre1.$texto_destino.' -  ' .$r->compra_sustitucion ?></td>
						<td align="center"><?php echo $r->compra_num ?></td>
						<td align="center"><?php echo $r->compra_porc_desc ?></td>
						<td align="center"><?php echo $tipo_text ?></td>
						<td align="right"><?php echo $r->tipvta_com_compra ?></td>
						<td align="right"><?php echo number_format($comision,2,",",".") ?></td>

						<td align="right">
							<?php 
							if (isset($r->compra_comision_ex)) {
								echo number_format($r->compra_comision_ex,2,",",".") ;
								}	
							?>
						</td>
						<td align="center"><?php echo $texto_comparacion ?></td>
						<td align="right"><?php echo number_format($monto,2,",",".") ?></td>

						<!-- <td align="right"><?php //echo number_format($monto_credito,2,",",".") ?></td> -->
						<td align="right"><?php echo number_format($r->compra_flete,2,",",".") ?></td>
						<td align="center"><?php echo $condicion_text ?></td>
						<td align="center"><?php echo $texto_sustitucion ?></td>
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
	<?php include 'totales_lista_matriz.php' ?>
<!-- 
	<div class="alert alert-info">
		<table>
			<tr>
				<td><?php //echo "Total Comisión: ".number_format($suma_comision,2,",","."); ?></td>
			</tr>			
			<tr>
				<td><?php //echo "Total Notas 05-05-2025: ".number_format($acum_monto,2,",","."); ?></td>
			</tr>			
		</table>
	</div>	 -->
	<button class="btn btn-success btn-xs" 
	onclick="window.open('app/reportes/vst/lista_matriz_confiltro_excel.php?fini=<?php echo $fini ?>&ffin=<?php echo $ffin ?>')">
	<i class="fa fa-file-excel-o"> Generar Excel</i>
	</button>
<?php else: ?>
	<div class="alert alert-info">No hay registros para mostrar.</div>
<?php endif; ?>	
<script>
	$(function(){
		$('.table').dataTable();
	})
</script>