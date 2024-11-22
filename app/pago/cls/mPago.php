<?php class mPago {

	function __clone() {}
	function __construct() {}

	public function lista() {
		$sql = "SELECT * FROM vw_pago WHERE pago_borrado=0 ORDER BY pago_ide ASC";
		return Enlace::sql($sql,'',3,'');
	}
	public function formapago_lista() {
		$sql = "SELECT * FROM tbl_forpago WHERE forpago_borrado=0 ORDER BY forpago_ide ASC";
		return Enlace::sql($sql,'',3,'');
	}

	public function insert() {
		$sql = "SELECT sf_pago(?,?,?,?,?,?,?,?,?,?,?,?,?,?) AS res";
		extract($_POST);
 		//$forpago=1;
		//$ref="prueba ref 1.";
		$banco_origen=1;
		$banco_destino=1;
		//$envia = "prueba envia 1";
		$mto_bs= 0;
		//$mto= 200;
		$tasa=46.5;
	
		 $datos = array(0,date('Y-m-d',strtotime($fec)),$hora,$forpago,Funciones::may($ref),$banco_origen,$banco_destino, Funciones::may($titular),$mto_bs,$mto,$tasa,$arch_img,1,$_SESSION['s_usua_ide']);

/*		 $datos = array(0,"2024-01-01",1,"prueba ref 22222",1,2,"prueba envia",0,100,0,1,1);*/
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function insert_prueba() {
		$sql = "SELECT sf_banco(?,?,?,?) AS res";
		extract($_POST);
		$des="prueba desc";
		$datos = array(0,Funciones::may($des),1,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function poride($ide) { 
		$sql = "SELECT * FROM vw_pago WHERE pago_ide=?";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}


} ?> 