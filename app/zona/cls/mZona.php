<?php class mZona {

	function __clone() {}
	function __construct() {}

	public function lista() {
		$sql = "SELECT * FROM tbl_zona WHERE zona_borrado=0 ORDER BY zona_ide DESC";
		return Enlace::sql($sql,'',3,'');
	}

	public function poride($ide) {
		$sql = "SELECT * FROM tbl_zona WHERE zona_ide=?";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function insert() {
		$sql = "SELECT sf_zona(?,?,?,?) AS res";
		extract($_POST); $datos = array(0,Funciones::may($des),1,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function update() {
		$sql = "SELECT sf_zona(?,?,?,?) AS res";
		extract($_POST); $datos = array($ide,Funciones::may($des),2,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function delete() {
		$sql = "SELECT sf_zona(?,?,?,?) AS res";
		extract($_POST); $datos = array($ide,0,3,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,1,'res');
	}
} ?>