<?php class mVenta_wh { 

	function __clone() {}
	function __construct() {}

	public function lista() {
		$sql = "SELECT * FROM vw_wh_tbl_compra WHERE compra_tienda= ".$_SESSION['s_usua_tienda']." 
		AND compra_borrado=0 
		AND 
		ORDER BY compra_ide";
		return Enlace::sql($sql,'',3,'');
	}

	public function lista_taller() {
		/*$sql = "SELECT * FROM vw_wh_tbl_venta WHERE venta_origen_ide = 3 and*/
		$sql = "SELECT * FROM vw_venta2 WHERE venta_origen_ide = 3 and
		venta_tienda= ".$_SESSION['s_usua_tienda']." AND venta_borrado=0 ORDER BY venta_ide";
		return Enlace::sql($sql,'',3,'');
	}

	public function lista_general_ventas() { 
		$sql = "SELECT * FROM vw_wh_tbl_venta where venta_tienda= ".$_SESSION['s_usua_tienda']." AND venta_borrado=0 ORDER BY venta_ide";
		return Enlace::sql($sql,'',3,'');
	}

	public function poride($ide) {
		$sql = "SELECT * FROM vw_venta  WHERE venta_ide=?";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function porcliente($clien_ide) {
		$datos = array($clien_ide);
		$sql = "SELECT * FROM vw_wh_tbl_compra WHERE compra_clien_ide= ? AND compra_borrado=0 ORDER BY compra_ide";
		return Enlace::sql($sql,$datos,3,'');
	}

	public function pordesglose($desglose_ide, $porcentaje) { 
		$datos = array($desglose_ide,$porcentaje);
		$sql = "SELECT * FROM vw_desglose_nota WHERE desgnota_desglose_ide= ? AND  compra_porc_desc=? and desgnota_borrado=0 ORDER BY desgnota_ide";
		return Enlace::sql($sql,$datos,3,'');
	}

    public function notas_con_diponibilidad($desglose_ide, $porcentaje){
    	$datos = array($desglose_ide,$porcentaje);
		$sql = "SELECT
		vw_desglose_nota.desgnota_nota_ide,
		vw_desglose_nota.compra_num,
		vw_desglose_nota.compra_monto_credito,
		vw_desglose_nota.compra_porc_desc,
		vw_desglose_nota.desgnota_desglose_ide as desg_ide,
		(SELECT sum(monto_venta)  FROM vw_desg_deta_vta WHERE  desgvtadet_borrado=0 ) as total_venta
		FROM
		vw_desglose_nota
		WHERE  desg_ide=? and compra_porc_desc=?
		";
		return Enlace::sql($sql,$datos,3,'');
    }

	public function insert() {
		/* 
		extract($_POST);
		/*$_SESSION['s_usua_tienda']
		var_dump("<pre>");
		var_dump($_POST);
		var_dump("</pre>");
		
		exit;
		*/

		//$sql = "SELECT sf_compra(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) AS res";
		extract($_POST);
		$sql = "SELECT sf_compra_wh(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) AS res";
		$datos = array(
			0, // Identificador
			$prov_ide,
			$nro,
			$clien_ide,
			date('Y-m-d',strtotime($fec_fac)), 
			$porc, // porcentaje
			$mto_contado, //monto contado
			$mto_credito, //monto credito
			$tasa,
			$mto_flete,
			$cond,
			$destino,
			$tipo,
			1,	//tienda		
			1, 	 //  operación
			$_SESSION['s_usua_ide'] #Usuario que realiza operación
		);
		/* */
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function delete() {
		$sql = "SELECT sf_venta_wh(?,?,?,?) AS res";
		extract($_POST); $datos = array($ide,0,3,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,1,'res');
	}
} ?>