<?php require '../../../cfg/base.php'; ?>
<?php 
$monto=0;  // monto contado
$monto_credito=0;
//var_dump("entro");
extract($_POST);


$row =      $mcompra_wh->lista_matriz_confiltro($prov_ide,$clien_ide,$f_ini,$f_fin);
include 'inicializar.php';

?> 
<?php if(count($row)>0):?>
	<div class="table-responsive">
		<table class="table table-hover table-bordered">
            <?php 
                include 'plantilla_matriz_encab.php';
            ?>
			<tbody>
				<?php foreach($row as $r): 
					$texto_sustitucion="";
					$texto_comparacion="";
					$estilo="";
					$color_letra = ""; 
					$condicion_text='';
					$tipo_text ="";
					$tipo_text =funciones::getTipoFactura($r->compra_tipo);
                    $saldo =0;
                    $monto=round($r->compra_monto,2);
                    $saldo = $r->abono - $monto; 

					switch ($r->compra_condicion) {
	  				case 0:
	  					$color_letra = ""; 
	  					$color_fondo = "#D9EDF7"; 
						$condicion_text="Contado";
	    				break;
	  				case 1:
	  				    /*$estilo      = "color:#000000; font-size:12px; background-color: #fb5e17;";*/
	  				    /*$estilo      = "color:#000000; font-size:12px; background-color: #FF0000;";  // rojo*/
	  				    $estilo      = "color:#000000; font-size: 11px; background-color: #fb5e17;";
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
	<?php include 'totales_lista_matriz.php' ?>

	<button class="btn btn-success btn-xs" 
	onclick="window.open('app/reportes/vst/lista_matriz_confiltro_excel.php?fini=<?php echo $fini ?>&ffin=<?php echo $ffin ?>')">
	<i class="fa fa-file-excel-o"> Generar Excel</i>
	</button>
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