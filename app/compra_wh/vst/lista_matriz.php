<?php require '../../../cfg/base.php'; ?>
<?php
$monto=0;  // monto contado
$monto_credito=0;
extract($_POST);
$nombre_proveedor="";
$row_proveedor=$mproveedor->poride($prov_ide);
foreach($row_proveedor as $rp): 
	$nombre_proveedor=$rp->prove_razonsocial;
endforeach;	

include 'inicializar.php';
//$row = $mcompra_wh->lista_matriz_porprov($prov_ide,"2025-06-01","2025-06-30"); 
$row = $mcompra_wh->lista_matriz_porprov($prov_ide,$f_ini,$f_fin);
//$row_cant = $mcompra_wh->cantidad_cred_cont($prov_ide, $f_ini, $f_fin);

/*$acum_monto_contado   =0.0;
$acum_monto_credito   =0.0;
$suma_comision=0.0;
$suma_comision_ex=0.0;
*/
 
?> 
<?php if(count($row)>0):?>
    <h5 style="margin-top:20px; color:#333; text-align:center;">
        <strong><?php echo "PROVEEDOR: " . $nombre_proveedor; ?></strong>
    </h5>
    <div class="table-responsive">
        <table class="table table-hover table-bordered">
            <?php 
                include 'plantilla_matriz_encab.php';
            ?>
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
                    $estatus_text   = '';
                    $tipo_text ="";
                    $deuda     =0;
                    $comision_ex=0;
                    $comision_ex=round($r->compra_comision_ex,2);

   					//$suma_comision=$suma_comision+$comision;
					$suma_comision_ex=$suma_comision_ex+$comision_ex;

                    $saldo =0;
                    $monto=round($r->compra_monto,2);
                    $saldo = $r->abono - $monto; 

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

	  				    if ($saldo == 0) 
	  				    	$estilo      = "color:#ff0000; font-size: 14px; background-color: #fb5e17;";

	  				    if ($saldo <> 0) 
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
	  					$estatus_text   = '5-SUSTITUIDA';
	  					break;
	  				case 6:
	  					$color_letra = "#ff00GG"; 
	  					$texto_sustitucion="SUSTITUCIÓN";
	  					$estatus_text   = '6-SUSTITUCION';
	    				break;
	  				default:						    
	  					 //$color_letra="Error.Admin.".$r->compra_destino;
	  					$texto_sustitucion="ERROR EN VALOR";
	    				break;
					}

					$monto_dev=0;
					$monto_para_comision=0;
					$monto_dev=round($r->compra_devol,2);

					$monto_credito=round($r->compra_monto_credito,2);
					$tasa_comision=0;
					$tasa_comision=$r->tipvta_com_compra;
					/*$tasa_comision=funciones::getComision("compra",$r->compra_tipo);*/
					$comision=0;

					if ($r->compra_condicion >1) 
						$monto_para_comision = 0;
					else	
						$monto_para_comision = (($r->compra_condicion == 0) ? $r->compra_monto : $r->compra_monto_credito)-$monto_dev;
					
					if ($r->compra_condicion ==0 ){  //  0 Contado, 1 Credito
						/*$comision= round(($monto*$tasa_comision)/100,3);*/
						//$comision= round((($monto-$monto_dev)*$tasa_comision)/100,3);
						$acum_monto_contado=$acum_monto_contado+$monto;
						$deuda   = $r->compra_monto-$r->abono;
					} 
					if ($r->compra_condicion ==1 ){
						$acum_monto_credito=$acum_monto_credito+$monto_credito;
						$deuda   = $r->compra_monto_credito-$r->abono;
					} 
					$comision=($monto_para_comision*$tasa_comision)/100;  
					$suma_comision=$suma_comision+$comision;
					$texto_alternativo_cliente="";
					$estilo_com_autoasia = '';
					if (isset($comision_ex) && round($comision, 2) != round($comision_ex, 2)) {
						    $estilo_com_autoasia = 'background-color: #fff9c4;'; // amarillo claro
						}
					?>
					<tr  style="<?php echo $estilo; ?>">
						<?php
							  include 'plantilla_matriz_detalle.php'; 
						 ?>
					</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
	</div>
	<div class="alert alert-info">
 	<?php 

		$row_prov=$mproveedor->lista();
		foreach ($row_prov as $p): {?>
			<tr>
				<td>Proveedor: <?php //echo $p->prove_razonsocial; ?> </td>
				<td><?php  //echo "Monto:"; 
						//$row_sub_total=$mcompra_wh->subtotal_por_prov_cond($p->prove_ide,0);
/*
						foreach($row_sub_total as $m): 
							$sub_total=$m->total;
						endforeach; 
						echo "Monto:".$sub_total; 						
						*/
					  ?>

				</td>
			</tr>
	<?php }
		endforeach;	
	?> 
	</div>
	<?php include 'totales_lista_matriz.php' ?>
<!-- <div class="alert alert-info"><?php //echo "Total Comisión: ".number_format($suma_comision,2,",","."); ?></div>	 -->
<?php else: ?>

	<div class="alert alert-info">No hay registros para mostrar.</div>
<?php endif; ?>	
<!-- Aplica estilo de letra pequeña a todo el datatable -->
<style>
    .table.table-hover.table-bordered td,
    .table.table-hover.table-bordered th {
        font-size: 11px;
    }
</style>
<script>
	$(function(){
		$('.table').dataTable();
	})
</script>