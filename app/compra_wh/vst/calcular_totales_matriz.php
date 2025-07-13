<?php 
	$monto        =round($r->compra_monto,2); // MONTO CONTADO
	$monto_credito=round($r->compra_monto_credito,2); // MONTO CREDITO
	$tasa_comision=0;
	/*$tasa_comision=funciones::getComision("compra",$r->compra_tipo);*/
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
	//$texto_comparacion="Comision diferente";
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
	}	
?>