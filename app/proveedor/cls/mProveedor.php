<?php class mProveedor {

	function __clone() {}
	function __construct() {} 

	public function lista() {
		$sql = "SELECT * FROM vw_proveedor ORDER BY prove_razonsocial ASC";
		$datos = array(0);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function lista_sin_taller() {
		$sql = "SELECT * FROM vw_proveedor where prove_ide <> 1 ORDER BY prove_razonsocial ASC";
		$datos = array(0);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function listasinide($ide) {
		$sql = "SELECT * FROM vw_proveedor WHERE prove_ide<>? ORDER BY prove_razonsocial ASC";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function poride($ide) {
		$sql = "SELECT * FROM vw_proveedor WHERE prove_ide=?";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function insert() {
		extract($_POST);
		$sql = "SELECT sf_proveedor(?,?,?,?,?,?,?,?,?,?,?,?,?) AS res";
		$datos = array(
			0, // Identificador
			$tipo,
			$ced,
			Funciones::may($nom1),
			Funciones::may($nom2),
			date('Y-m-d',strtotime($freg)),
			Funciones::may($dir),
			$mov,
			Funciones::may($corre),
			$coes,
			$ubimap,
			1, //  operación
			$_SESSION['s_usua_ide'] #Usuario que realiza operación
		);
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function insertRapido() {
		extract($_POST);
		$nom2  = null;
		$ubimap = null;
		$freg  = null;
		$dir   = null;
		$mov   = null;
		$corre = null;


		$sql = "SELECT sf_proveedor(?,?,?,?,?,?,?,?,?,?,?,?,?) AS res";
		$datos = array(
			0,
			$tipo,
			$ced,
			Funciones::may($nom1),
			Funciones::may($nom2),
			date('Y-m-d',strtotime($freg)),
			Funciones::may($dir),
			$mov,
			Funciones::may($corre),
			$coes,
			$ubimap,
			4,
			$_SESSION['s_usua_ide']
		);
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function update() {
		extract($_POST);
		$sql = "SELECT sf_proveedor(?,?,?,?,?,?,?,?,?,?,?,?,?) AS res";
		$datos = array(
			$prove_ide,
			$tipo,
			$ced,
			Funciones::may($nom1),
			Funciones::may($nom2),
			date('Y-m-d',strtotime($freg)),
			Funciones::may($dir),
			$mov,
			Funciones::may($corre),
			$coes,
			$ubimap,
			2,
			$_SESSION['s_usua_ide']
		);
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function delete() {
		extract($_POST);
		$sql = "SELECT sf_proveedor(?,?,?,?,?,?,?,?,?,?,?,?,?) AS res";
		$datos = array($ide,0,0,0,0,date('Y-m-d',strtotime($freg)),0,0,0,0,0,3,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function reactivarlo() {
		extract($_POST);
		$sql = "SELECT sf_proveedor(?,?,?,?,?,?,?,?,?,?,?,?,?) AS res";
		print_r($ide);
		$datos = array($ide,0,0,0,0,'0000-00-00',0,0,0,0,0,8,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	}

	/* 23/07/2023*/
	public function porRequisicion(){
		/*Busca id de vendedor
		parametro de entrada ide del detalle de la requisicion
		reqdet_req_ide
		*/

	}
} ?>