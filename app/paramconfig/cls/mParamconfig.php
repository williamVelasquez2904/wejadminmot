<?php class mParamconfig {

	function __clone() {}
	function __construct() {}

	public function lista() {
		$sql = "SELECT * FROM vw_paramconfig WHERE config_borrado=0 ";
		return Enlace::sql($sql,'',3,'');
	}
	

} ?> 