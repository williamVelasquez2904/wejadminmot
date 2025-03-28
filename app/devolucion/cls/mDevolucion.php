<?php class mDevolucion { 
	function __clone() {}
	function __construct() {}

	public function lista() {
		$sql = "SELECT * FROM vw_tbl_devol WHERE devol_borrado=0 ORDER BY devol_ide DESC";
		return Enlace::sql($sql,'',3,'');
	}
	public function poride($ide) {
		$sql = "SELECT * FROM vw_tbl_devol WHERE devol_ide=?";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}
	public function insert() {
		//var_dump($_POST);
		$sql = "SELECT sf_devolucion(?,?,?,?,?,?,?,?) AS res";
		extract($_POST); $datos = array(0,$prod_ide,$cantidad,Funciones::may($motivo),$compra_ide,$precio,1,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	}
	public function update() {
		$sql = "SELECT sf_devolucion(?,?,?,?) AS res";
		extract($_POST); $datos = array($ide,Funciones::may($des),2,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	}
	public function delete() {
		$sql = "SELECT sf_devolucion(?,?,?,?) AS res";
		extract($_POST); $datos = array($ide,0,3,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,1,'res');
	}
} ?>