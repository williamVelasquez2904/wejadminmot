<?php class mCruce {
	function __clone() {}
	function __construct() {}

	public function lista_encab() {
		$sql = "SELECT * FROM vw_cruce_encab WHERE cruce_encab_borrado=0 
		AND cruce_encab_fec >= '2025-01-01'
		ORDER BY cruce_encab_ide ASC";
		return Enlace::sql($sql,'',3,'');
	}

	public function lista_encab_pornota($nota_ide) {
		extract($_POST);
		$datos = array($nota_ide); // ide del encabezado
		$sql = "SELECT * FROM vw_cruce_detalle WHERE crudeta_nota_ide=? ";
		return Enlace::sql($sql,$datos,3,'');
	}

	public function lista_detalle($ide) {
		extract($_POST);
		$datos = array($ide); // ide del encabezado
		$sql = "SELECT * FROM vw_cruce_detalle WHERE crudeta_encab_ide=? AND  crudeta_borrado=0 ORDER BY crudeta_ide ASC";
		return Enlace::sql($sql,$datos,3,'');
	}	

	public function lista_detalle_json() {
		header('Content-Type: application/json; charset=utf-8');
		$ide = isset($_POST['ide']) ? (int)$_POST['ide'] : 0;
		if ($ide <= 0) {
			echo json_encode(['error' => 'ID de cruce no válido.']);
			exit;
		}
		$datos = array($ide);
		$sql = "SELECT * FROM vw_cruce_detalle WHERE crudeta_encab_ide=? AND  crudeta_borrado=0 ORDER BY crudeta_ide ASC";
		$notas = Enlace::sql($sql,$datos,3,'');
		$notas =json_encode($notas, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
		echo json_encode($notas);
		exit;
	}	

	public function insert_encab() { // 19-08-2025
		$sql = "SELECT sf_cruce_encab(?,?,?,?,?,?,?,?,?,?) AS res";
		extract($_POST);
		$sta=0; // 19/08/2025 Por defecto 0
		$datos = array(0,date('Y-m-d',strtotime($fec)),$hora,$pago,$mto,$arch_img,$tipo,$sta,1,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function insert_detalle() { // insert al detalle del cruce
		$sql = "SELECT sf_cruce_detalle(?,?,?,?,?,?) AS res";
		extract($_POST);
		$datos = array(0,$encab_ide,$nota_ide,$mto,1,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function detalle_por_nota_ide($nota_ide){
		$sql = "SELECT * FROM vw_cruce_detalle WHERE crudeta_nota_ide=?";
		$datos = array($nota_ide);
		return Enlace::sql($sql,$datos,3,'');		
	}

	public function poride($ide) { 
		$sql = "SELECT * FROM vw_cruce_encab WHERE cruce_encab_ide=?";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function poride_detalle($ide) {  // para detalle del cruce
		$sql = "SELECT * FROM vw_cruce_detalle WHERE crudeta_encab_ide=?";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function monto_porcruzar(){
		//var_dump($ide);
		$monto_porcruzar=0;
		extract($_POST);
		$row_encab = $this->poride($encab_ide);
		foreach ($row_encab as $r) {
			$monto_porcruzar=$r->montoporcruzar;
		}
		return $monto_porcruzar;
	}	

	public function reabrircerrar() {
//		$sql = "SELECT sf_inforepi   (?,?,?,?,?,?,?,?,?) AS res";
		
		$sql = "SELECT sf_cruce_encab(?,?,?,?,?,?,?,?,?,?) AS res";

		extract($_POST); 
		$fec="2025-01-01";
		$hora="12:00";
		$datos = array($ide,date('Y-m-d',strtotime($fec)),$hora,0,0,"",0,$sta,4,$_SESSION['s_usua_ide']);

		return Enlace::sql($sql,$datos,4,'res');
	}

	public function delete() {
		$sql = "SELECT sf_cruce(?,?,?,?) AS res";
		extract($_POST); $datos = array($ide,0,3,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,1,'res');
	}

	public function delete_detalle() { /*05-09-2025*/
		$sql = "SELECT sf_cruce_detalle(?,?,?,?) AS res";
		extract($_POST); $datos = array($ide,0,3,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,1,'res');
	}
} ?>