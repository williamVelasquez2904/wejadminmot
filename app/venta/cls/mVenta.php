<?php class mVenta {

	function __clone() {}
	function __construct() {}

	public function lista() {
		/*$sql = "SELECT * FROM vw_venta WHERE venta_tienda= ".$_SESSION['s_usua_tienda']." AND venta_borrado=0 ORDER BY  venta_ide DESC";*/
		$sql = "SELECT * FROM vw_venta LEFT JOIN vw_abonoventa on vw_venta.venta_ide = vw_abonoventa.recnota_venta_ide WHERE venta_tienda= ".$_SESSION['s_usua_tienda']." AND venta_borrado=0";
		$sql = "SELECT * FROM vw_venta WHERE venta_tienda= ".$_SESSION['s_usua_tienda']." AND venta_borrado=0 ORDER BY  venta_ide DESC";
		return Enlace::sql($sql,'',3,'');
	}
 
	public function lista_sinabono() { 
		$sql = "SELECT * FROM vw_venta2 WHERE venta_tienda= ".$_SESSION['s_usua_tienda']." AND venta_borrado=0 ORDER BY  venta_ide DESC";
		return Enlace::sql($sql,'',3,'');
	}	

	//public function lista_cobranza($clien_ide,$vende_ide,$f_ini,$f_fin){
	public function lista_cobranza($clien_ide,$origen,$vende_ide,$f_ini,$f_fin){		

		$condicion =" ";
		$condicion_origen  = " ";
		$condicion_cliente = " ";
		$condicion_vende   = " ";
		$condicion_fecha   = " ";
		$orden             = " ORDER BY  venta_ide"  ;

		$sql  = " SELECT * FROM vw_venta LEFT JOIN vw_abonoventa on vw_venta.venta_ide = vw_abonoventa.recnota_venta_ide  ";
		$sql .= " WHERE venta_tienda= ".$_SESSION['s_usua_tienda']." AND venta_borrado=0 ";
		//var_dump($sql);

		$condicion_origen  = " AND venta_origen_ide = ".$origen;

		if ($vende_ide != 0 ){
			$condicion_vende = " AND venta_vende_ide = ".$vende_ide;
		}

		if ($f_ini != 0 && $f_fin != 0 ){
			$condicion_fecha  = " AND date(venta_fecha) between '".$f_ini."' and '".$f_fin."'" ;
		}

		if ($clien_ide != 0  ){
			$condicion_cliente =" AND venta_clien_ide = ".$clien_ide;
		}

		$sql .= $condicion_origen;
		$sql .= $condicion_cliente ;
		$sql .= $condicion_vende ;
		$sql .= $condicion_fecha ;
		$sql .= $orden ;
		var_dump($sql);

		/*var_dump($sql); */// Si funciona en prueba
		return Enlace::sql($sql,'',3,'');
	}

	public function insert(){
		extract($_POST);
/*		var_dump($_POST);
		return 1;*/

		$sql = "SELECT sf_venta(?,?,?,?,?) AS res";
/*		
		$datos = array(
			0, // Identificador
			$reqdet_ide,
			$vende_ide,
			date('Y-m-d',strtotime($fecha)),				
			date('Y-m-d',strtotime($fecha_envio)),	
			date('Y-m-d',strtotime($fecha_rec)),			
			1, //  operación
			$_SESSION['s_usua_ide'] #Usuario que realiza operación
		);
*/	 
		$datos = array(
			0, // Identificador
			$reqdet_ide,
			$vende_ide,
			1, //  operación
			$_SESSION['s_usua_ide'] #Usuario que realiza operación
		);
		return 1;
		//return Enlace::sql($sql,$datos,4,'res');

		
	}
  
	public function insert_venta_2() { 
		extract($_POST);
		
/*
		var_dump("<pre>");
		var_dump($tipoventa);
		var_dump("</pre>");

*/		$sql = "SELECT sf_venta_wh(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) AS res"; 

		/*$sql = "SELECT sf_venta_wh(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) AS res"; */
		$datos = array($ide,$origen,$compra_ide,funciones::may($nota),"$fec_venta",$porc_asig,$porc_desc,$monto_credito,$monto_contado,$wventa_flete,$cond_venta,$clien_venta_ide,$vende_ide,$tipoventa,0,$_SESSION['s_usua_tienda'] ,1,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	} 
	
	public function insert_venta_taller() {
		extract($_POST);
/*		var_dump("<pre>");
		var_dump("ide: ".$ide."");
		var_dump("</pre>");*/
		$sql = "SELECT sf_venta_taller(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) AS res"; 
		/*$sql = "SELECT sf_venta_wh(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) AS res"; */
		$datos = array($ide,$origen,$compra_ide,$nota,"$fec_venta",$porc_desc,$porc_asig,$monto_credito,$monto_contado,$wventa_flete,$cond_venta,$clien_venta_ide,$vende_ide,0,$_SESSION['s_usua_tienda'] ,1,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	}


	public function porcliente($clien_ide) { 
		$datos = array($clien_ide);
		$sql = "SELECT * FROM vw_venta WHERE venta_clien_ide= ? AND venta_borrado=0 ORDER BY venta_ide";
		return Enlace::sql($sql,$datos,3,'');
	}

}
?>