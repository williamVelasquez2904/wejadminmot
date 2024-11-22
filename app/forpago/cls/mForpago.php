 <?php class mforpago {

	function __clone() {}
	function __construct() {}

	public function lista() {
		$sql = "SELECT * FROM vw_forpago WHERE forpago_borrado=0 ORDER BY forpago_ide DESC";
		return Enlace::sql($sql,'',3,'');
	}
	
} ?> 