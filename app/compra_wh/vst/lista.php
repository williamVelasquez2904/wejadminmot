<?php require '../../../cfg/base.php';
$monto=0;  // monto contado
$monto_credito=0;
extract($_POST);

/* Origen Venta
1	Directa
2	Por desglose
3	Taller
*/
$origen_ide=1;  

$row = $mcompra_wh->lista(); ?> 

<?php if(count($row)>0):?>
	<div class="table-responsive">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th width="3%">Id</th>
					<th width="7%">Prov</th>
					<th width="5%">Fecha Fac.</th>
					<th width="5%">Fecha Recep.</th>
					<th width="18%">Cliente [26-06-25] lista.php</th>
					<th width="6%">Num Fac.</th>
					<th width="3%">% Desc.</th>
					<th width="5%">Monto Contado </th>
					<!-- <th width="7%">Monto Crédito </th> -->
					<th width="7%">Destino </th>
					<th width="5%">Flete</th>
					<!-- <th width="5%">Condición</th>	 -->
					<th width="5%">Estatus</th>						
					<th width="7%">Opciones</th>				
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): 
					$estilo="";
					$color_letra    = ""; 
					$condicion_text = '';
					$estatus_text   = '';
					$tipo_text      = '';

/*					switch ($r->compra_tipo) {
	  				case 0:
	  					$tipo_text=
	    				break;
	  				case 1:
	  					break;
	  				default:						    
	    				break;
	  					$tipo_text="Error en Tipo: ".$r->compra_tipo;
					}
*/


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

					switch ($r->compra_estatus) {
	  				case 0:
	  					$color_letra = ""; 
	  					$color_fondo = ""; 
	  					$estatus_text   = 'Normal';
	    				break;
	  				case 3:  // En desglose
	  				    /*$estilo      = "color:#000000; font-size:12px; background-color: #fb5e17;";*/
	  				    /*$estilo      = "color:#000000; font-size:12px; background-color: #FF0000;";  // rojo*/
	  				    $estilo      = "color:#000000; font-size: 12px; background-color: #17a589;";
	  					/*$color_letra = "#1b00ff"; */
	  					//$color_fondo = "#FFFFFF"; 
	  					/*$color_fondo = "#9f33ff"; */
	  					$estatus_text   = 'En desglose';
	  					$color_fondo = ""; 
	  					break;
	  				case 5:  // En desglose
	  				    /*$estilo      = "color:#000000; font-size:12px; background-color: #fb5e17;";*/
	  				    /*$estilo      = "color:#000000; font-size:12px; background-color: #FF0000;";  // rojo*/
	  				    $estilo      = "color:#000000; font-size: 12px; background-color: #17a589;";
	  					/*$color_letra = "#1b00ff"; */
	  					//$color_fondo = "#FFFFFF"; 
	  					/*$color_fondo = "#9f33ff"; */
	  					$estatus_text   = $r->compra_estatus.' - '.'SUSTITUIDA';
	  					$color_fondo = ""; 
	  					break;
	  				case 6:  // 
	  				    /*$estilo      = "color:#000000; font-size:12px; background-color: #fb5e17;";*/
	  				    /*$estilo      = "color:#000000; font-size:12px; background-color: #FF0000;";  // rojo*/
	  				    $estilo      = "color:#000000; font-size: 12px; background-color: #17a589;";
	  					/*$color_letra = "#1b00ff"; */
	  					//$color_fondo = "#FFFFFF"; 
	  					/*$color_fondo = "#9f33ff"; */
	  					$estatus_text   = $r->compra_estatus.' - '.'Sustituye';
	  					$color_fondo = ""; 
	  					break;
	  				default:						    
	    				break;
	  					$condicion_text="Error.Admin.".$r->compra_condicion;
					}


					$color_destino ='';
					$texto_destino ='';
					$texto_destino_corto= "";
					$color_tipo=$r->tipvta_color;					
					$tipo_text ="";
					$tipo_text =$r->tipvta_descrip;   // ojo 


					switch ($r->compra_destino) {
	  				case 0:
	  					//$color_letra = ""; 
	  					$texto_destino= " Directo";
	  					$texto_destino_corto= "0-Directo ";
	    				break;
	  				case 1:
	  					//$color_letra = "#FF0000"; 
	  					$texto_destino= "  SAN CRISTÓBAL";
	  					$texto_destino_corto= "1-SC ";
	  					break;
	  				case 2:
	  					//$color_letra = "#ff00ff"; 
	  					$texto_destino= "  SC- AL CLIENTE";
	  					$texto_destino_corto= "2- SC / DIRECTO AL CLIENTE ";	  				
	  					$texto_destino= "";
	    				break;
	  				case 3:
	  					$texto_destino= " Taller";
	  					$texto_destino_corto= "3-Ingreso a Taller ";	  					
	    				break;	    				
	  				default:						    
	  					 //$color_letra="Error.Admin.".$r->compra_destino;
	    				break;

					}
					$monto=round($r->compra_monto,2);
					$monto_credito=round($r->compra_monto_credito,2);

					?>

					<tr  style="<?php echo $estilo; ?>">

						<td ><?php echo $r->compra_ide ?></td>
						<td align="center"><?php echo $r->prove_razonsocial ?></td>
						<!-- <td align="center"><?php //echo date_format(date_create($r->compra_fecha),'d-m-Y') ?></td> -->
						<td align="center"><?php echo implode('-', array_reverse(explode('-', $r->compra_fecha)));?></td>
						<td align="center"><?php echo implode('-', array_reverse(explode('-', $r->compra_fecha_recep)));?></td>						
						<td align="left"><?php echo $r->nombre1.'<b>'.$texto_destino.'</b> -  ' .'<b>'.$r->compra_sustitucion.'</b>' ?> <font color="<?php echo $color_tipo; ?>"><b><?php echo $tipo_text; ?></b></font> </td>
						<!-- <td align="left"><?php //echo $r->nombre1.$texto_destino ?></td> -->
						<td align="center"><?php echo $r->compra_num ?></td>
						<td align="center"><?php echo $r->compra_porc_desc ?></td>
						<td align="right"><?php echo number_format($monto,2,",",".") ?></td>
						<!-- <td align="right"><?php //echo number_format($monto_credito,2,",",".") ?></td> -->

						<!-- <td align="right"><?php //echo $r->compra_destino.' - '.$texto_destino_corto ?></td> -->
						<td align="right"><?php echo $texto_destino_corto ?></td>						


						<td align="right"><?php echo number_format($r->compra_flete,2,",",".") ?></td>
						<!-- <td align="center"><?php //echo $condicion_text ?></td> -->
						<td align="center"><?php echo $estatus_text  ?></td>
						<td align="center">
							<div class="btn-group">
								<button class="btn btn-success btn-xs" title="Actualizar"
								onclick="modal('vst-compra_wh-update_matriz','ide=<?php echo $r->compra_ide ?>')">
									<i class="fa fa-edit"></i>
								</button>
							
								<button class="btn btn-danger btn-xs" title="Borrar" onclick="modal('vst-compra_wh-delete','ide=<?php echo $r->compra_ide ?>')">
										<i class="fa fa-trash"></i>
								</button>
								<button class="btn btn-info btn-xs" title="Ver Detalles" 
								onclick="modal('vst-compracom-detacompra',
								'orden_ide=<?php echo $r->compra_encab_orden_ide ?>&compra_encab_ide=<?php echo $r->compra_encab_ide ?>&compra_encab_fecha=<?php echo $r->compra_encab_fecha ?>')">
									<i class="fa fa-search"></i>
								</button>
								<?php if  ( ($r->compra_estatus==0  || $r->compra_estatus==6  ) && ($r->compra_destino==0) || $r->compra_destino==2 ) { ?>	
									<button class="btn btn-info btn-xs" title="venta.php Pasar a cobranza" onclick="modal('vst-venta-venta','ide=<?php echo $r->compra_ide ?>&origen_ide=<?php echo $origen_ide ?>')">
										<i class="fa fa-shopping-cart" aria-hidden="true"></i>
									</button>									
								<?php  }	?> 
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