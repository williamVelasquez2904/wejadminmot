<?php class mRecibo {

	function __clone() {}
	function __construct() {}

	
	public function poride($ide) {
		$sql = "SELECT * FROM vw_recencab WHERE recencab_ide=?";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}


	public function venta_poride($ide) {
		$sql = "SELECT * FROM vw_venta  WHERE venta_ide=?";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function recencab_lista() {  // listado de encabezado de recibo
		$sql = "SELECT * FROM vw_recencab WHERE  recencab_borrado=0 ORDER BY recencab_ide";
		return Enlace::sql($sql,'',3,'');
	}
 
 	public function recibo_nota_venta($venta_ide) { /// todos los recibos de pago de una venta
		extract($_POST);
		$datos = array($venta_ide); 
		$sql = "SELECT * FROM vw_recibo_nota WHERE  recnota_venta_ide = ?  and recnota_borrado=0 ORDER BY recnota_ide";
		return Enlace::sql($sql,$datos,3,'');

 	}
	public function recibo_nota_lista($encab_ide) {  // listado de notas de un recibo
		extract($_POST);
		$datos = array($encab_ide); 
		$sql = "SELECT * FROM vw_recibo_nota WHERE  recnota_encab_ide = ?  and recnota_borrado=0 ORDER BY recnota_ide";
		return Enlace::sql($sql,$datos,3,'');
	}	

	public function recibo_pago_lista($encab_ide) {  // listado de pagos  de un recibo
		extract($_POST);
		$datos = array($encab_ide);
		$sql = "SELECT * FROM vw_recibo_pago WHERE  recpago_encab_ide = ? and recpago_borrado=0 ORDER BY recpago_ide";
		return Enlace::sql($sql,$datos,3,'');
	}	

	public function recibo_pago_monto($encab_ide) {  // sumatoria de los montos 
		extract($_POST);
		$datos = array($encab_ide);
		$sql = "SELECT sum(monto) as total_pago FROM vw_recibo_pago WHERE  recpago_encab_ide = ? and recpago_borrado=0 ORDER BY recpago_ide";
		return Enlace::sql($sql,$datos,3,'');
	}	


	public function detalle_poride($ide) {
		$sql = "SELECT * FROM vw_recdetalle WHERE recdeta_ide=?";
		$datos = array($ide);
		return Enlace::sql($sql,$datos,3,'');
	}

	public function insert() {  // insert a encabezado de recibo
		extract($_POST);
		$sql = "SELECT sf_recibo(?,?,?,?,?,?,?,?) AS res";
		$datos = array(
			0, // Identificador
			$num,
			"$fec",
			$mto,
			$clien_ide,
			$vende_ide,
			1, 	 //  operación
			$_SESSION['s_usua_ide'] #Usuario que realiza operación
		);
		/* */
		return Enlace::sql($sql,$datos,4,'res');
	} 

	public function insert_nota(){
		extract($_POST);
		$sql = "SELECT sf_recibonota(?,?,?,?,?,?) AS res";
		$datos = array(
			0, // Identificador
			0,
			$encab_ide,
			$venta_ide,
			1, 	 //  operación
			$_SESSION['s_usua_ide'] #Usuario que realiza operación
		);
		return Enlace::sql($sql,$datos,4,'res');
	} 

	public function insert_pago(){

		extract($_POST);
		var_dump("Pago fecha: ".$pago_fecha);
		$sql = "SELECT sf_recibopago(?,?,?,?,?,?,?,?) AS res";

		$datos = array(
			$encab_ide, // Identificador
			$pago_forma,
			$pago_monto,
			$pago_fecha,
			$pago_titular, 
			$pago_ref,
			1, 	 //  operación
			$_SESSION['s_usua_ide'] #Usuario que realiza operación
		);
		return Enlace::sql($sql,$datos,4,'res');
	} 	

	public function monto_recibo_nota($venta_ide){
			extract($_POST);
			$datos = array($venta_ide);
		    $sql ="SELECT sum(vw_recibo_nota.monto_aplicado) as monto_aplicado , vw_recibo_nota.recnota_venta_ide FROM vw_recibo_nota 
		    		WHERE vw_recibo_nota.recnota_venta_ide = ? GROUP BY vw_recibo_nota.recnota_venta_ide ";
			/*$datos = array($ide);*/
			return Enlace::sql($sql,$datos,3,'');
	}


	public function recalcular_saldo_nota($venta_ide){
			$saldo          = 0;
			$monto_aplicado = 0;
			$monto_total    = 0;

			extract($_POST);
			$datos = array($venta_ide);

			$row_monto_recibo = $this->monto_recibo_nota($venta_ide);
			
			$monto_aplicado  = $row_monto_recibo[0]->monto_aplicado;

/*			var_dump("<pre>Monto recibos:  ");
			var_dump($row_monto_recibo);
			var_dump("</pre>");*/
	

			$row_venta=$this->venta_poride($venta_ide);

/*			var_dump("<pre>Datos venta:  ");
			var_dump($row_venta);
			var_dump("</pre>");
*/
			$monto_total = $row_venta[0]->venta_monto+$row_venta[0]->venta_flete;
/*			var_dump("<pre>Monto_total:  ");
			var_dump($monto_total);
			var_dump("</pre>");
*/
			$saldo   = $monto_total - $monto_aplicado;
/*			var_dump("<pre>SALDO RESTANTE:  ");
			var_dump($saldo);
			var_dump("</pre>");*/

	        $sql = "SELECT sf_venta_wh(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) AS res"; 
		$datos = array($venta_ide,0,0,0,"",0,0,0,0,0,0,0,$saldo,$_SESSION['s_usua_tienda'] ,8,$_SESSION['s_usua_ide']);
		return Enlace::sql($sql,$datos,4,'res');

	}

	public function distribuir_pago(){
		$flag=false;
		/*$monto_notas=0;*/
		$monto_pagos=0;
		$monto = 0;
		extract($_POST);
		$row_monto_nota=$this->recibo_pago_monto($encab_ide);

		//var_dump($row_monto_nota);
		/*$monto_nota = $row_monto_nota->total_pago;*/
		//$monto_notas=$row_monto_nota["total_pago"];

        foreach($row_monto_nota as $r):
        	$monto_pagos =	$r->total_pago;   // sumamos los montos de todos los pagos asociados a un recibo
		endforeach; 
		var_dump($monto_pagos);

		$row_nota_del_recibo=$this->recibo_nota_lista($encab_ide);

		// Se recalcula saldo a las notas asociadas al recibo
		foreach($row_nota_del_recibo as $s):
			$this->recalcular_saldo_nota($s->recnota_venta_ide);
		endforeach; 

		// se vuelven a buscar las notas asociadas al recibo 
		$row_nota_del_recibo=$this->recibo_nota_lista($encab_ide);
/*			var_dump("<pre>Notas: 21/08/2024 ");
			var_dump($row_nota_del_recibo);
			var_dump("</pre>");*/
		$sum=0;
		$saldo_dispobible=$monto_pagos;
		$monto_asignado=0;
		$ide=0;
		foreach($row_nota_del_recibo as $n):
			if ($n->recnota_status == 0 ){
				$flag=true;

				$ide=$n->recnota_ide;
				$monto_asignado=0;
	        	$monto   = $n->venta_saldo;
	        	$sum=$sum +$monto;
	        	if ($saldo_dispobible >= $monto){
	        		$monto_asignado= $monto;
	        	}	
	        	if ($saldo_dispobible < $monto){
	        		$monto_asignado= $saldo_dispobible;	
	        	}
	        	$saldo_dispobible = $saldo_dispobible - $monto;
	        	if ($monto_asignado > 0 ){
					$sql = "SELECT 	(?,?,?,?,?,?) AS res";
					$datos = array($ide,$monto_asignado,0,0,5,$_SESSION['s_usua_ide']);
					Enlace::sql($sql,$datos,4,'res');				
				}
			}
		endforeach; 
		$row_nota_del_recibo=$this->recibo_nota_lista($encab_ide);
		foreach($row_nota_del_recibo as $s):
			$this->recalcular_saldo_nota($s->recnota_venta_ide);
		endforeach; 
		/*var_dump($flag)		;*/
		return $flag;
	}


} ?>