<?php 
require '../../../cfg/base.php'; 
//$row = $mdesglose->lista_detallevta($_SESSION['desgvta_ide']);
extract($_POST); 
//var_dump($_SESSION['desgvta_ide']);
//echo "<br>Desglose IDE = ". $_SESSION['desglose_ide'] ;
//$ide=1;
$row = $mdesglose->lista_detallevta($desgvta_ide); 

$total_venta=0.0;
/*
foreach($row_total_notas as $t):
	$total_notas  =  $t->total_nota;
endforeach;
*/


if(count($row)>0): ?>
	<div class="table-responsive">
		<table class="table_detalle_venta table-hover table-bordered" width="100%">
			<thead>
				<tr>
<!-- 
					<th>Id</th>
					<th>Id Venta</th>
					<th>Id Nota</th>
 -->					
 					<th>Id</th>
					<th>Num Nota</th>
					<th >Monto Credito</th>
					<th >% Asignado</th>
					<th >Monto contado</th>
					<th >Condicion</th>					
					<th>Monto Flete</th>
					<th>Monto Nota</th>
					<th>Monto Acum. Nota</th>					
					<th>Estatus</th>
					<th>Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): 	?>
					<tr>
						<?php
							$condicion_text="";
		 					switch ($r->condicion) {
		  	  				case 0:
		  	  					$color_fondo = "#D9EDF7"; 
		  						$condicion_text="Contado";
		   	    				break;
		  	  				case 1:
		  	  					$color_fondo = "#fc4b08"; 
		  	    				$condicion_text="Crédito";
		  	  				default:						    
		  	    				break;
		 	  					$condicion_text="Error.Admin.".$r->condicion;
		 					}

							$total_venta=$total_venta+$r->monto_venta;
							$monto_acumulado_nota=0.0;
							$row_nota = $mdesglose->total_venta_nota($r->nota);
							foreach($row_nota as $n):
								$monto_acumulado_nota  =  $n->total_venta;
							endforeach;
						?>
<!-- 
						<td align="center" width="10%"><?php //echo $r->desgvtadet_ide ?></td>
						<td align="center" width="10%"><?php //echo $r->desgvtadet_desgvta_ide ?></td>
						<td align="center" width="10%"><?php //echo $r->desgvtadet_nota_ide ?></td> -->
						<td align="center" width="10%"><?php echo $r->desgvtadet_ide ?></td>
						<td align="center" width="10%"><?php echo $r->nota ?></td>
						<td align="center" width="10%" style="background-color: #fc4b08"><?php echo $r->monto_venta ?></td>
						<td align="center" width="10%"><?php echo $r->porc_asig ?></td>
						<td align="center" width="10%" style="background-color: #110HHH"><?php echo $r->monto_contado ?></td>
						<td align="center" width="10%"><?php echo $condicion_text ?></td>						
						<td align="center" width="10%"><?php echo $r->mto_flete ?></td>
						<td align="center" width="10%"><?php echo $r->monto_nota ?></td>
						<td align="center" width="10%"><?php echo number_format($monto_acumulado_nota,2,",",".") ?></td>
						<td align="center" width="10%"><?php echo $r->desgvtadet_status ?></td>
						<td width="10%">
							<div class="btn-group">
								<button class="btn btn-danger btn-xs" title="Borrar venta" onclick="modal('vst-desglose-deleteventa','ide=<?php echo $r->desgvtadet_ide ?>')">
									<i class="fa fa-trash"></i>
								</button>
							</div>
						</td>
					</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
		<div class="totales">TOTAL VENTA:   <b><?php echo $total_venta ?> </b></div>
	</div>
<?php else: ?>
	<div class="alert alert-info">No hay ventas para mostrar.</div>
<?php endif; ?>	
<script>
	$(function(){
		$('.table_detalle_venta').dataTable();
	})
</script>