<?php class mCruce {
	function __clone() {}
	function __construct() {}

	public function lista_encab() {
		$sql = "SELECT * FROM vw_cruce_encab WHERE cruce_encab_borrado=0 ORDER BY cruce_encab_ide ASC";
		return Enlace::sql($sql,'',3,'');
	}

	public function lista_detalle($ide) {
		extract($_POST);
		$datos = array($ide); // ide del encabezado
		$sql = "SELECT * FROM vw_cruce_detalle WHERE crudeta_encab_ide=? AND  crudeta_borrado=0 ORDER BY crudeta_ide ASC";
		//return Enlace::sql($sql,$datos,3,'');
		return Enlace::sql($sql,$datos,3,'');
	}	

	public function insert_encab() {
		$sql = "SELECT sf_cruce_encab(?,?,?,?,?,?,?,?) AS res";
		extract($_POST);
   /*     `ide` INT(11),`fec` DATE,  `pago` INT,  `mto` double,  `ope` INT, `usu` INT*/

		$datos = array(0,date('Y-m-d',strtotime($fec)),$hora,$pago,$mto,$arch_img,1,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function insert_detalle() { // insert al detalle del cruce
		$sql = "SELECT sf_cruce_detalle(?,?,?,?,?,?) AS res";
		extract($_POST);
   /*     `ide` INT(11),`ide_encab` INT(11), `mto` double,  `ope` INT, `usu` INT*/

		$datos = array(0,$encab_ide,$nota_ide,$mto,1,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	}
	
	//$mcruce->por_nota_ide($nota_ide);

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
} ?>