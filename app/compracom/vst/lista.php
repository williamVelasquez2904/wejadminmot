<?php require '../../../cfg/base.php'; 
extract($_POST);
//var_dump($orden_ide);exit;
if (!isset($orden_ide))
	$orden_ide=0;
?>
<?php 
if($orden_ide==0){
	$row = $mcompracom->lista_all($orden_ide);
	//echo "<br>Paso 1";
	}
if($orden_ide>0){
	//echo "<br>Paso 2";
	$row = $mcompracom->porOrden($orden_ide);
	}
?>
<?php if(count($row)>0):?>
	<div class="table-responsive">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th width="5%">Id Compra</th>
					<th width="5%">Orden</th>
					<th >Control</th>
					<th>Fecha Compra</th>
					<th>Fecha Envio</th>
					<th width="5%">Descuento</th>
					<th>Monto Contado</th>
					<th width="5%" align="center">Factor de cambio</th>					
					<th>Monto Crédito ($)</th>
					<th>Flete</th>
					<th>Condición</th>	
					<th>Opciones</th>				
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): 
					$condicion_text='';
					switch ($r->compra_encab_condicion) {
	  				case 0:
						$condicion_text="Contado";
	    				break;
	  				case 1:
	    				$condicion_text="Crédito";
	  				default:						    
	    				break;
	  					$condicion_text="Error.Admin.".$r->compra_encab_condicion;
					}
					?>
					<tr>
						<td align="left">  <?php echo $r->compra_encab_ide ?></td>
						<td align="left">  <?php echo $r->compra_encab_orden_ide ?></td>
						<td align="center"><?php echo $r->compra_encab_control ?></td>
						<td align="center"><?php echo $r->compra_encab_fecha ?></td>
						<td align="center"><?php echo $r->compra_encab_fecha_envio; ?></td>
						<td align="center"><?php echo $r->compra_encab_porcentaje ?></td>
						<td align="right">
							<?php echo number_format(($r->compra_encab_monto_contado),2) ?>
							</td>
						<td align="right"><?php echo $r->compra_encab_tasa ?></td>							
						<td align="right">
							<?php echo number_format($r->compra_encab_monto_credito,2) ?>
						</td>
						<td align="right"><?php echo $r->compra_encab_flete ?></td>										
						<td align="center"><?php echo $condicion_text ?></td>
						<td align="center">
							<div class="btn-group">
								<button class="btn btn-success btn-xs" title="Actualizar"
								onclick="modal('vst-compracom-update','ide=<?php echo $r->compra_encab_ide ?>')">
									<i class="fa fa-edit"></i>
								</button>
							
								<button class="btn btn-danger btn-xs" title="Borrar" onclick="modal('vst-compracom-delete','ide=<?php echo $r->compra_encab_ide ?>')">
										<i class="fa fa-trash"></i>
								</button>
							
								<button class="btn btn-info btn-xs" title="Ver Detalles" 
								onclick="modal('vst-compracom-detacompra',
								'orden_ide=<?php echo $r->compra_encab_orden_ide ?>&compra_encab_ide=<?php echo $r->compra_encab_ide ?>&compra_encab_fecha=<?php echo $r->compra_encab_fecha ?>')">
									<i class="fa fa-search"></i>
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