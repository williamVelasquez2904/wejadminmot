<?php class mCompra_wh { 

	function __clone() {}
	function __construct() {}
/*
	public function lista() {
		$sql = "SELECT * FROM vw_wh_tbl_compra WHERE compra_tienda= ".$_SESSION['s_usua_tienda']." AND compra_borrado=0 ORDER BY compra_ide";
		return Enlace::sql($sql,'',3,'');
	}
*/ 
	public function lista() { 
		$sql ="	SELECT * FROM vw_wh_tbl_compra WHERE compra_tienda= ".$_SESSION['s_usua_tienda']." 
		AND vw_wh_tbl_compra.compra_ide not in (select venta_compra_ide from  wh_tbl_venta )
		AND vw_wh_tbl_compra.compra_ide not in (select desgnota_nota_ide from vw_desglose_nota  where desgnota_status=1)
		AND  compra_borrado=0 ORDER BY compra_ide ";
		return Enlace::sql($sql,'',3,'');
	}

	public function lista_matriz() { 

/*		$sql ="	SELECT * FROM vw_wh_tbl_compra 
			WHERE 
			compra_prov_ide != 1 AND  /*1 = Taller */
/*			
			compra_tienda= ".$_SESSION['s_usua_tienda']." 
			AND vw_wh_tbl_compra.compra_ide
			AND  compra_borrado=0 ORDER BY compra_ide ";
*/
		$sql ="	SELECT * FROM vw_wh_tbl_compra 
			WHERE 
			compra_prov_ide != 1 AND  /*1 = Taller */
			compra_tienda= ".$_SESSION['s_usua_tienda']." 
			AND  compra_borrado=0 ORDER BY compra_ide ";
		return Enlace::sql($sql,'',3,'');
	}

	public function lista_matriz_confiltro($prov_ide, $clien_ide, $f_ini,$f_fin) { 

		//$datos = array($f_ini,$f_fin);
		$datos = array($prov_ide, $clien_ide, $f_ini,$f_fin);

		$sql_clien =" ";
		$sql_prov  =" ";

		$final =" AND  compra_borrado=0 ORDER BY compra_ide   ";

		$sql ="	SELECT * FROM vw_wh_tbl_compra 
			WHERE 
			compra_prov_ide != 1 AND  /*1 = Taller */
			compra_tienda= ".$_SESSION['s_usua_tienda']." 
			And vw_wh_tbl_compra.compra_fecha between '".$f_ini."' and '".$f_fin."'"  ;
			// AND  compra_borrado=0 ORDER BY compra_ide ";


		if ($clien_ide!= "0" ) $sql_clien =" AND compra_clien_ide = '".$clien_ide."'";
		if ($prov_ide != "0" ) $sql_prov  =" AND compra_prov_ide  = '".$prov_ide."'";

		$sql = $sql . $sql_prov.$sql_clien. $final;	
		var_dump($sql)	;
		return Enlace::sql($sql,'',3,'');
	}	

 
	public function poride($ide) {
		$sql = "SELECT * FROM vw_wh_tbl_compra WHERE compra_ide=?";
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
		$sql = "SELECT * FROM vw_desglose_nota_dos WHERE desgnota_desglose_ide= ? AND  compra_porc_desc=? and desgnota_borrado=0 ORDER BY desgnota_ide";
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
			date('Y-m-d',strtotime($fec)),
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

	public function update_matriz() {
		$sql = "SELECT sf_compra_wh_matriz(?,?,?,?,?,?,?,?) AS res";
		extract($_POST); 
		$datos = array($ide,$estatus,$fec_envio,$fec_recep,$nota_sustituida,$destino,2,$_SESSION['s_usua_ide']);			
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function delete() {
		extract($_POST);
		$sql = "SELECT sf_compra_wh(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) AS res";
		$datos = array(
			$ide, // Identificador
			0,
			0,
			0,
			date('Y-m-d',strtotime('0000-00-00')),
			0, // porcentaje
			0, //monto contado
			0, //monto credito
			0,
			0,
			0,
			0,
			0,
			1,	//tienda		
			3, 	 //  operación
			$_SESSION['s_usua_ide'] #Usuario que realiza operación
		);

		//$datos = array($ide,0,0,0,0,0,0,'0000-00-00',0,0,0,0,3,$_SESSION['s_usua_ide']);

		return Enlace::sql($sql,$datos,1,'res');
	}


	public function subtotal_por_prov_cond($prov,$cond,$f_ini,$f_fin){ // devuelve en total la sumatoria de monto , segun proveedor y condicion
		
		$datos = array($prov,$cond,$f_ini,$f_fin);
		$sql = "SELECT  round(sum(compra_monto),2) as total FROM vw_wh_tbl_compra WHERE compra_prov_ide= ? AND compra_condicion = ? And compra_fecha between ? and ?   AND compra_borrado=0 ORDER BY compra_ide";
		//var_dump($sql);
		return Enlace::sql($sql,$datos,3,'');	

	}

	public function subtotal_por_prov($prov,$f_ini,$f_fin){ // devuelve en total la sumatoria de monto , segun proveedor 
		
		$datos = array($prov,$f_ini,$f_fin);
		$sql = "SELECT  round(sum(compra_monto),2) as total FROM vw_wh_tbl_compra WHERE compra_prov_ide= ?  And compra_fecha between ? and ?   AND compra_borrado=0 ORDER BY compra_ide";
		//var_dump($sql);
		return Enlace::sql($sql,$datos,3,'');	

	}

} ?>