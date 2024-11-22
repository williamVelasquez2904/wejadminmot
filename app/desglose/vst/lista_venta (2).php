<?php
require '../../../cfg/base.php';
$_SESSION['origen_venta_ide'] = 2; // Desglose
$_SESSION['cadena_notas']   = "";
$_SESSION['total_venta']    = 0;  // monto credito
$_SESSION['monto_contado']  = 0;
$_SESSION['monto_flete']    = 0;
$row = $mdesglose->lista_venta_desglose($_SESSION['desglose_ide']);
$mensaje_estatus="";
$acum_total_venta=0.0;
if(count($row)>0): ?>
	<div class="alert alert-info"><i class="material-icons"></i>(lista_venta.php) LISTADO VENTAS PARA ESTE DESGLOSE.... 13/08/2024 </div>
	<div class="table-responsive">
		<table class="table_desglose_venta table-hover table-bordered">
			<thead>
				<tr align="center">
					<th >Id Venta</th>
					<th >Id Desglose</th>
					<th >Cliente</th>
					<th align="center">% Desc.</th>
					<th align="center" >% Asig.</th>
					<th >Monto crédito</th>
					<th >Monto contado</th>
					<th >Monto flete</th>
					<th >Estatus</th>
					<th >Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): 	?>

					<tr>

						<?php 
							$monto_venta   = 0;
							$monto_contado = 0;
							$monto_flete   = 0;
							$total_venta   = 0;
							$_SESSION['total_venta']   = 0;  // monto credito
							$_SESSION['monto_contado'] = 0;
							$_SESSION['monto_flete']   = 0;

/*							$row_monto_venta=$mdesglose->suma_detallevta_poride($venta_ide); */

							$row_monto_venta=$mdesglose->suma_detallevta_poride($r->desgvta_ide);
							if (count($row_monto_venta)>0){
									$monto_venta   = $row_monto_venta[0]->monto_venta;  // venta a credito
 									$monto_contado = $row_monto_venta[0]->monto_contado;
									$monto_flete   = $row_monto_venta[0]->monto_flete;
							}

							
							$row_total_venta = $mdesglose->total_venta($r->desgvta_ide);
							foreach($row_total_venta as $t):
								$total_venta  =  $t->total_venta;
							endforeach;
							$acum_total_venta = $acum_total_venta+ $total_venta;
							// Para extraer todas las notas de una venta y colocarlo en la descripcion
							$row_notas_venta = $mdesglose->lista_detallevta_ordenadopornota($r->desgvta_ide);
							$cadena_notas="";
							foreach($row_notas_venta as $u):
								//$cadena_notas  =  $cadena_notas && $u->nota;
								if (trim($cadena_notas)=="")
										$cadena_notas  =   $cadena_notas." ". $u->nota;
								else 
											$cadena_notas  =   $cadena_notas." - ". $u->nota;
							endforeach;
							$_SESSION['cadena_notas']  = $cadena_notas;
							$_SESSION['total_venta']   = $total_venta;  // monto credito
							$_SESSION['monto_contado'] = $monto_contado;
							$_SESSION['monto_flete']   = $monto_flete;

						 ?>
						<?php
							$mensaje_estatus   = Funciones::descrip_estatus("desgvta",$r->desgvta_status);
							$mensaje_porc_asig = Funciones::getPorcentaje($r->desgvta_porc_asig);
							//$newDate = date("d/m/Y", strtotime($r->desglose_fecha));

						 ?>
						<td align="center" width="5%"><?php echo $r->desgvta_ide ?> </td>
						<td align="center" width="5%"><?php echo $r->desgvta_desg_ide ?> </td>
						<td width="30%"><?php echo $r->clien_ide." - ".$r->cliente." - ".$cadena_notas; ?></td>
						<td width="5%" align="center"><?php echo $r->porcentaje_nota ?> %</td>
						<td width="5%" align="center"><?php echo $mensaje_porc_asig ?> %</td>
						<td width="5%" align="right"><?php echo number_format($total_venta,2,",",".") ?></td>
						<td width="5%" align="right"><?php echo number_format($monto_contado,2,",",".") ?></td>
						<td width="5%" align="right"><?php echo number_format($monto_flete,2,",",".") ?></td>
						<td width="5%"><?php echo $mensaje_estatus ?></td>
						<td width="10%">
							<div class="btn-group">
								<button class="btn btn-success btn-xs" title="Actualizar" onclick="modal('vst-requisicion-update','ide=<?php echo $r->req_ide ?>')">
									<i class="fa fa-edit"></i>
								</button> 
																								<!-- falta borra_desgventa.php -->
								<button class="btn btn-danger btn-xs" title="Borrar" onclick="load('vst-desglose-borra_desgventa','desgvta_ide=<?php echo $r->desgvta_ide  ?>','')">
									<i class="fa fa-trash"></i>
								</button>
								<button class="btn btn-info btn-xs" title="detalleventa.php Ver detalle de la venta" onclick="modal('vst-desglose-detalleventa','desgvta_ide=<?php echo $r->desgvta_ide  ?>&clien_ide=<?php echo $r->clien_ide; ?>&porcentaje=<?php echo $r->porcentaje_nota; ?>')">
									<i class="fa fa-search"></i>
								</button>
								<button class="btn btn-info btn-xs" title="(envia_venta.php) Pasar a Venta " onclick="modal('vst-desglose-envia_venta','ide=<?php echo $r->desgvta_ide ?>')">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</td>
					</tr>

				<?php endforeach; ?>
				<button class="btn btn-info btn-xs" onclick="recargar();">Refrescar</button>
			</tbody>
		</table>
		<td></td><td></td><td><b>TOTAL Monto Crédito: </b></td><td align="right"><b><?php echo "    ".$acum_total_venta; ?></b></td>
	</div>
<?php else: ?>
	<div class="alert alert-info">No hay ventas para este desglose. </div>
<?php endif; ?>	
<script>
	$(function(){
		$('.table_desglose_venta').dataTable();
	})
</script> 
<script>
	function recargar(){
		location.reload();
	}
</script>