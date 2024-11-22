<?php class mOrden {

	function __clone() {}
	function __construct() {}

	public function lista() {
		$sql = "SELECT * FROM vw_orden WHERE orden_tienda= ".$_SESSION['s_usua_tienda']." AND orden_borrado=0 ORDER BY orden_ide";
		return Enlace::sql($sql,'',3,'');
	}

	public function listaporestatus($esta1,$esta2) {
		$sql = "SELECT * FROM vw_orden WHERE orden_tienda= ".$_SESSION['s_usua_tienda']." AND orden_borrado=0 AND (orden_status>=$esta1 AND orden_status<=$esta2) ORDER BY orden_ide";
		return Enlace::sql($sql,'',3,'');
	}

	public function listaporprov($prove_ide) {
		$sql = "SELECT * FROM vw_orden WHERE orden_tienda= ".$_SESSION['s_usua_tienda']." AND orden_status=0 AND orden_borrado=0 AND orden_prove_ide=?";
		$datos = array($prove_ide);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function poride($ide) {
		$sql = "SELECT * FROM vw_orden WHERE orden_ide=?";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function insert() {
		$sql = "SELECT sf_orden(?,?,?,?,?,?,?,?) AS res";
		extract($_POST); 
		 $datos = array(0,$clien_ide,$prove_ide,$control,"$fec",$_SESSION['s_usua_tienda'],1,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function update() {
		$sql = "SELECT sf_orden(?,?,?,?,?,?,?,?) AS res";
		extract($_POST); $datos = array($ide,$clien_ide,$prove_ide,$control,"$fec",$_SESSION['s_usua_tienda'],2,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function delete() {
		$sql = "SELECT sf_orden(?,?,?,?,?,?,?,?) AS res";
		extract($_POST); $datos = array($ide,0,0,0,"",$_SESSION['s_usua_tienda'],3,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,1,'res');
	}

	public function envioorden() {
		$sql = "SELECT sf_orden(?,?,?,?,?,?,?,?) AS res";
		extract($_POST); $datos = array($ide,0,0,0,"",$_SESSION['s_usua_tienda'],4,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	}
} ?>