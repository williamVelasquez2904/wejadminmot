<?php class mPorcentaje {

	function __clone() {}
	function __construct() {}

	public function lista_tipo($tipo) {
		$datos = array($tipo);
		$sql = "SELECT * FROM wh_tbl_porcdesc WHERE porc_descrip=? AND porc_borrado=0 ORDER BY porc_orden";
		return Enlace::sql($sql,$datos,3,'');
	}

	public function poride($ide) {
		$sql = "SELECT * FROM wh_tbl_porcdesc WHERE porc_ide=?";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}

/*	public function poride($ide) {
		$sql = "SELECT * FROM vw_impuesto WHERE impuesto_ide=?";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}
*/

	public function insert() {
		$sql = "SELECT sf_impuesto(?,?,?,?) AS res";
		extract($_POST); $datos = array(0,$des,1,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function update() {
		$sql = "SELECT sf_impuesto(?,?,?,?) AS res";
		extract($_POST); $datos = array($ide,$des,2,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function delete() {
		$sql = "SELECT sf_impuesto(?,?,?,?) AS res";
		extract($_POST); $datos = array($ide,0,3,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,1,'res');
	}
} ?>