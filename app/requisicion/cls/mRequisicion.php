<?php class mRequisicion {

	function __clone() {}
	function __construct() {}

	public function lista() {
		$sql = "SELECT * FROM vw_requisicion WHERE req_tienda=?";
		$datos = array($_SESSION['s_usua_tienda']);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function listaporcliente($clien_ide,$tienda) {
		$sql = "SELECT * FROM vw_requisicion WHERE req_clien_ide=? AND req_borrado=? AND req_tienda=? ORDER BY req_ide DESC";
		$datos = array($clien_ide,0,$tienda);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function listaporclienteestatus($clien_ide,$tienda,$estatus) {
		$sql = "SELECT * FROM vw_requisicion WHERE req_clien_ide=? AND req_borrado=? AND req_tienda=? AND req_status=? ORDER BY req_ide DESC";
		$datos = array($clien_ide,0,$tienda,$estatus);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function listapordetalle($ide) {
		$sql = "SELECT * FROM vw_requisicion_deta WHERE reqdet_req_ide=? ORDER BY reqdet_ide DESC";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function listapordetalleprove($ide,$pro) {
		$sql = "SELECT * FROM vw_requisicion_deta WHERE reqdet_req_ide=? AND reqdet_prove_ide=?";
		$datos = array($ide,$pro);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function listaporordenclien($ideord,$idecli) {
		$sql = "SELECT * FROM vw_requisicion_deta WHERE reqdet_ord_ide=? AND req_clien_ide=?";
		$datos = array($ideord,$idecli);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function listaclientespororden($ideord) {
		$sql = "SELECT * FROM vw_requisicion_deta WHERE reqdet_ord_ide=? ";
		$datos = array($ideord);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function sumaporidereq($ide) {
		$sql = "SELECT Sum(reqdet_monto) as SumMontoDet FROM vw_requisicion_deta WHERE reqdet_req_ide = ? GROUP BY reqdet_req_ide";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function poride($ide) {
		$sql = "SELECT * FROM vw_requisicion WHERE req_ide=?";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function insert() {
		$sql = "SELECT sf_requisicion(?,?,?,?,?,?,?,?) AS res";
		extract($_POST); 
		$datos = array(0,$_SESSION['s_usua_tienda'],$clien_ide,$vende_ide,$mto,$fec,1,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function update() {
		$sql = "SELECT sf_requisicion(?,?,?,?,?,?,?,?) AS res";
		extract($_POST); 
		$datos = array($ide,$_SESSION['s_usua_tienda'],0,$vende_ide,$mto,$fec,2,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function delete() {
		$sql = "SELECT sf_requisicion(?,?,?,?,?,?,?,?) AS res";
		extract($_POST); 
		$datos = array($ide,$_SESSION['s_usua_tienda'],0,0,0,'',3,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,1,'res');
	}

	public function insertdetalle() {
		$sql = "SELECT sf_requisiciondeta(?,?,?,?,?,?,?,?,?,?) AS res";
		extract($_POST); 
		if($orden_ide=="crear") { $orden_ide=0; }
		$datos = array(0,$ide,$prove_ide,$orden_ide,$mtod,'',0,$_SESSION['s_usua_tienda'],1,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function CerrarAbrirDetalle() {
		$sql = "SELECT sf_requisiciondeta(?,?,?,?,?,?,?,?,?,?) AS res";
		extract($_POST); 
		$datos = array($idedet,0,0,0,0,'',$accion,$_SESSION['s_usua_tienda'],4,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function deletedetalle() {
		$sql = "SELECT sf_requisiciondeta(?,?,?,?,?,?,?,?,?,?) AS res";
		extract($_POST); 
		$datos = array($idedet,0,0,0,0,'',0,$_SESSION['s_usua_tienda'],3,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,1,'res');
	}
/*
	//creada por william 23/07/2023
	public function poride($ide) {
		$sql = "SELECT * FROM vw_requisicion WHERE req_ide=? ";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}
*/
} ?>