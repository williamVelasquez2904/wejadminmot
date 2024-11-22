<?php require '../../../cfg/base.php'; 
extract($_POST);
$row = $mventa_wh->lista(); ?> 

<?php if(count($row)>0):?>
	<div class="table-responsive">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th width="5%">Ide Factura</th>
					<th width="10%">Fecha Factura</th>
					<th width="40%">Cliente</th>
					<th width="10%">Num Factura</th>
					<th width="5%">% Descuento</th>
					<th width="10%">Monto </th>
					<th width="5%">Condición</th>	
					<th width="10%">Opciones</th>				
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): 
					$estilo="";
					$color_letra = ""; 
					$condicion_text='';
					switch ($r->compra_condicion) {
	  				case 0:
	  					$color_letra = ""; 
	  					$color_fondo = "#D9EDF7"; 
						$condicion_text="Contado";
	    				break;
	  				case 1:
	  				    /*$estilo      = "color:#000000; font-size:12px; background-color: #fb5e17;";*/
	  				    /*$estilo      = "color:#000000; font-size:12px; background-color: #FF0000;";  // rojo*/
	  				    $estilo      = "color:#000000; font-size: 16px; background-color: #fb5e17;";
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
					$monto=round($r->compra_monto,2);
					?>

					<tr  style="<?php echo $estilo; ?>">
						<!-- <tr  bgcolor="<?php //echo $color_fondo; ?>" style="color: <?php //echo $color_letra;  ?>;"> -->

						<td ><?php echo $r->compra_ide ?></td>
						<td align="center"><?php echo $r->compra_fecha ?></td>
						<td align="left"><?php echo $r->nombre1.$texto_destino ?></td>
						<td align="center"><?php echo $r->compra_num ?></td>
						<td align="center"><?php echo $r->compra_porc_desc ?></td>
						<td align="right"><?php echo number_format($monto,2,",",".") ?></td>
						<td align="center"><?php echo $condicion_text ?></td>
						<td align="center">
							<div class="btn-group">
								<button class="btn btn-success btn-xs" title="Actualizar"
								onclick="modal('vst-compracom-update','ide=<?php echo $r->compra_encab_ide ?>')">
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
								<button class="btn btn-info btn-xs" title="Pasar a cobranza" onclick="modal('vst-venta-venta','ide=<?php echo $r->compra_ide ?>')">
									<i class="fa fa-shopping-cart" aria-hidden="true"></i>
								</button>												
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
