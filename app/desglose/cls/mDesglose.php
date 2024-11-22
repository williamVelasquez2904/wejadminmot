<?php class mDesglose { 

	function __clone() {}
	function __construct() {}

	public function lista() {
		$sql = "SELECT * FROM vw_desglose WHERE desglose_status=0 and desglose_borrado=0 ORDER BY desglose_ide desc";
		return Enlace::sql($sql,'',3,'');
	}

	public function lista_clientes($ide) { // buscar todas los clientes  de un mismo desglose
		$sql = "SELECT * FROM vw_desglose_cliente WHERE desgcte_desg_ide=? and desgcte_borrado=0 ORDER BY desgcte_ide";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');

	}

	public function lista_notas($ide) { // buscar todas las notas   de un mismo desglose 
		$sql = "SELECT * FROM vw_desglose_nota WHERE desgnota_desglose_ide=? and desgnota_borrado=0 ORDER BY desgnota_ide";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function lista_notas_sin_totales($ide) { // buscar todas las notas   de un mismo desglose 
		$sql = "SELECT * FROM vw_desglose_nota_sin_totales WHERE desgnota_desglose_ide=? and desgnota_borrado=0 ORDER BY desgnota_ide";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function update(){ 

	}

	public function suma_notas_desglose($ide){ // totaliza los montos a credito de las notas asociadas a un desglose
		$sql ="	SELECT 
				vw_desglose_nota_dos.desgnota_desglose_ide     desglose_ide,
				SUM(vw_desglose_nota_dos.compra_monto_credito) total_monto_credito
				FROM vw_desglose_nota_dos
				WHERE
				vw_desglose_nota_dos.desgnota_desglose_ide = ?
				GROUP BY vw_desglose_nota_dos.desgnota_desglose_ide ";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');				
	} 
	 
	public function venta_desglose($ide){ 
		$sql = "SELECT * FROM vw_desgvta WHERE desgvta_ide=? and desgvta_borrado=0 ORDER BY desgvta_ide";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}
	
	public function lista_venta_desglose($ide) { // buscar todas las ventas  de un mismo desglose
		$sql = "SELECT * FROM vw_desgvta WHERE desgvta_desg_ide=? and desgvta_borrado=0 ORDER BY desgvta_ide";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function venta_pordesglose($ide,$porc){  // todas las ventas de un desglose por porcentaje de descuento
		/*$sql = "SELECT * FROM vw_desg_deta_vta WHERE desg_ide=? AND compra_porc_desc=? GROUP BY vw_desg_deta_vta.desgvta_ide";*/
		$sql = "SELECT * FROM vw_desg_deta_vta WHERE desg_ide=? AND compra_porc_desc=? order by desgvtadet_desgvta_ide ";
		$datos = array($ide,$porc);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function cantidad_venta_pordesglose($ide,$porc){  // cuenta las ventas de un desglose por porcentaje de descuento 
		$sql = "SELECT count(*) as total FROM vw_desg_deta_vta WHERE desg_ide=? AND compra_porc_desc=?  GROUP BY  vw_desg_deta_vta.compra_porc_desc ";
		$datos = array($ide,$porc);
		return Enlace::sql($sql,$datos,3,'');

	}
 
 	public function suma_detallevta_poride($ide) { // buscar detalle de la venta por ide de la venta
 		$sql = "SELECT SUM(vw_desg_deta_vta.monto_venta) AS monto_venta /*monto credito*/,
 					SUM(vw_desg_deta_vta.monto_contado) AS monto_contado,
 					SUM(vw_desg_deta_vta.mto_flete) AS monto_flete,
 				 vw_desg_deta_vta.desgvtadet_desgvta_ide
				FROM  vw_desg_deta_vta
				WHERE desgvtadet_desgvta_ide=? 
				GROUP BY  vw_desg_deta_vta.desgvta_ide ";
		 //$sql = "SELECT * FROM vw_desg_deta_vta WHERE desgvtadet_desgvta_ide=? and desgvtadet_borrado=0 ORDER BY desgvtade_ide";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}



	public function lista_detallevta($ide) { // buscar detalle de la venta 
		$sql = "SELECT * FROM vw_desg_deta_vta WHERE desgvtadet_desgvta_ide=? and desgvtadet_borrado=0 ORDER BY desgvtadet_ide";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function lista_detallevta_ordenadopornota($ide) { // igual que lista_detallevta, ordenado por nota
		$sql = "SELECT * FROM vw_desg_deta_vta WHERE desgvtadet_desgvta_ide=? and desgvtadet_borrado=0 ORDER BY nota";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function total_venta($ide) { // trae la sumatoria del monto segun el id de la venta
		$sql = "SELECT sum(monto_venta) as total_venta FROM vw_desg_deta_vta WHERE desgvtadet_desgvta_ide=? and desgvtadet_borrado=0 ORDER BY desgvtadet_ide";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}

	/*public function total_venta_endesglose($desglose_ide, $compra_ide) {*/
	public function total_venta_endesglose() {		
		extract($_POST);
		$sql = " SELECT  IFNULL(sum(monto_venta),0) as totalventanota FROM  vw_desg_deta_vta WHERE  desg_ide=? and compra_ide =? group by compra_ide";
		$datos = array($desglose_ide,$compra_ide);
		return Enlace::sql($sql,$datos,3,'');
	
	}

	public function calcula_venta_endesglose() { // trae la sumatoria del monto segun el id de la nota en un desglose especifico 
		extract($_POST);
		$monto=0;
		$row_total_venta_endesglose = $this->total_venta_endesglose();
		/*$row_total_venta_endesglose = $this->total_venta_endesglose($desglose_ide,$compra_ide);*/
		foreach($row_total_venta_endesglose as $r):
			$monto = $r->totalventanota;
		endforeach;	
		
		/*$monto=$row_total_venta_endesglose[0]->totalventanota;*/
		return $monto ;
	} 


	public function total_venta_nota($nota) { // trae la sumatoria de una nota especifica en venta
		extract($_POST);
/*		var_dump($nota);*/
		$sql = " SELECT sum(monto_venta) as total_venta FROM vw_desg_deta_vta WHERE nota=? and desgvtadet_borrado=0 ";
		$datos = array($nota);
		return Enlace::sql($sql,$datos,3,'');
	}


	public function insert() {
		extract($_POST);
		//$sql = "SELECT sf_compra_wh(?,?,?,?,?,?,?,?,?,?) AS res";
		$sql = "SELECT sf_desglose(?,?,?,?,?,?) AS res";
		$datos = array(
			0, // Identificador
			Funciones::may($descrip),
			"$fec",
			$mto,
			1, 	 //  operación
			$_SESSION['s_usua_ide'] #Usuario que realiza operación
		);
		/* */
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function insert_cliente() {
		extract($_POST);
		$sql = "SELECT sf_desglosecliente(?,?,?,?,?) AS res";
		$datos = array(
			0, // Identificador
			$ide,
			$clien,
			1, 	 //  operación
			$_SESSION['s_usua_ide'] #Usuario que realiza operación
		);
		/* */
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function insertnota() {
		extract($_POST);
		$sql = "SELECT sf_desglosenota(?,?,?,?) AS res";
		$datos = array($ide,$compra_ide,1,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function insertventa() { 
		extract($_POST);
		//var_dump($cond_venta);
		/*$sql = "SELECT sf_desgloseventa(?,?,?,?,?,?,?) AS res";*/
		$sql = "SELECT sf_desgloseventa(?,?,?,?,?,?,?,?) AS res";
		$sql = "SELECT sf_desgloseventa(?,?,?,?,?,?,?,?,?) AS res";
		$datos = array(
			$desg_ide,
			$clien,
			$vende_ide,
			$tipo,
			$porc_ide,
			$porc_asig,
			$cond_venta,
			1,
			$_SESSION['s_usua_ide']
		);
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function prueba() {
		extract($_POST);
		return $mto;
	}

	public function insertdetalleventa() {
		extract($_POST);
		//return $desgvta_ide;
		//return $desglose_ide;
		$sql = "SELECT sf_desglosedetalleventa(?,?,?,?,?,?,?,?,?,?) AS res";
		$datos = array($desgvta_ide,$desglose_ide,$compra_ide,$mto,$monto_contado,
			$mto_flete,
			$tasa_dcto,
			$cond,
			1,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');
	}

	public function poride($ide) {
		$sql = "SELECT * FROM vw_desglose WHERE desglose_ide=?";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}


	public function ultimo() {
		$sql = "SELECT max(desglose_ide) as ultimo FROM  wh_tbl_desglose ";
		/*$sql = "SELECT desglose_ide FROM wh_tbl_desglose order by desglose_ide DESC";*/
		return Enlace::sql($sql,'',3,'');
	}

    public function nota_desglose($compra_ide){ // trae los datos de una  nota que pertence al desglose

    	$sql = "SELECT * FROM vw_desglose_nota_dos  WHERE compra_ide=?";
		$datos = array($compra_ide);
		return Enlace::sql($sql,$datos,3,'');

    }

	public function monto_credito_nota(){
		extract($_POST);
		/*$compra_ide = 180;*/
		$condicion  = 3;
		$monto_credito =0;
		$row_compra_ide = $this->nota_desglose($compra_ide);
		if (count($row_compra_ide)==0){

		}else{

		/*var_dump("El ide de la compra es: ".$compra_ide);*/
			foreach ($row_compra_ide as $r):
				$condicion      = $r->compra_condicion;
				$monto_credito  = $r->compra_monto_credito;
				if ($condicion==1){

				}
				if ($condicion==0){
					
				}
			endforeach;
		}	

		return $monto_credito;
	}

	public function monto_total_venta(){
		extract($_POST);
		$condicion  = 3;
		$monto_total_venta =0;
		$row_notas = $this->nota_desglose($compra_ide);
		if (count($row_notas)==0){
			$monto_total_venta =0;
		}else{

		foreach ($row_notas as $r):
			$condicion      = $r->compra_condicion;
			$monto_total_venta  = $r->total_nota;
			if ($condicion==1){

			}
			if ($condicion==0){
				
			}
		endforeach;
		}

		return $monto_total_venta;
	}



	public function pordesglose_ide($ide) {   // buscar todas las notas de un mismo desglose
		$sql = "SELECT * FROM vw_desglose_nota  WHERE desgnota_ide=?";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function pordesglose_nota_ide($ide) {   // buscar todas las notas en desglose_nota por ide del desglose
		$sql = "SELECT * FROM vw_desglose_nota  WHERE desgnota_desglose_ide=?";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}

/*	public function sumanotas($desglose_ide) {   // resumen de los montos de venta de todas las notas de un desglose contra el monto de cada nota
		$sql = "SELECT * FROM vw_sumanotapordesglose  WHERE desg_ide=?";
		$datos = array($desglose_ide);
		return Enlace::sql($sql,$datos,3,'');
	}
*/
	public function sumanotas($desglose_ide) {   // resumen de los montos de venta de todas las notas de un desglose contra el monto de cada nota
		/*sum(suma_venta) as total_notas_desglose*/
		$sql = "SELECT sum(suma_venta) as total_notas_desglose FROM vw_sumanotapordesglose  WHERE desg_ide=?";
		$datos = array($desglose_ide);
		return Enlace::sql($sql,$datos,3,'');
	}


	public function delete_nota() {
		$sql = "SELECT sf_desglosenota(?,?,?,?) AS res";
		extract($_POST); $datos = array($ide,0,3,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,1,'res');
	}

	public function delete_detalleventa() {
		$sql = "SELECT sf_desglosedetalleventa(?,?,?,?,?) AS res";
		extract($_POST); $datos = array($ide,0,0,3,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,1,'res');
	}

} ?>