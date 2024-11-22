<?php class Funciones { // 31/10/2024

	function __clone() {}
	function __construct() {}

	function modalWidth($ancho) {
		$modal = "<style>" 
			."@media screen and (min-width: 768px) {"
			.".modal-dialog {"
			."width: ".$ancho.";"
			."}"
			."}"
			."</style>";
		return $modal;
	}

	function modalHeader($titulo) {
		$html = '<div class="modal-header">
			<button class="bootbox-close-button close" type="button" data-dismiss="modal">×</button>
			<h4 class="modal-title modal-">'.$titulo.'</h4>
			</div>';
		return $html;
	}

	function modalFooter($tipo) {
		if($tipo==1) {
			$html = '<div class="modal-footer">
				<button class="btn btn-default" type="button" data-bb-handler="cancel" data-dismiss="modal">Cerrar</button>
				<button class="btn btn-primary" type="submit">Aceptar</button>
				</div>';
		} else {
			$html = '<div class="modal-footer">
				<button class="btn btn-default" type="button" data-dismiss="modal" data-bb-handler="cancel">Cerrar</button>
				</div>';
		}
		return $html;
	}

	function select($val1,$val2) {
		return (!strcmp($val1,$val2)) ? 'selected' : null;
	}

	function check($val1,$val2) {
		return (!strcmp($val1,$val2)) ? 'checked' : null;
	}

	static function vacio($campo,$des) {
		return (empty($campo)) ? $des : 1;
	}
	static function may($var) {
		return strtoupper($var);
	}

	static function vstr($foo) {
		return (isset($_POST[$foo])) ? $_POST['foo'] : null;
	}

	static function vint($foo) {
		return (isset($_POST[$foo])) ? $_POST[$foo] : 0;
	}
	static function vsession($foo) {
		return (isset($_SESSION[$foo])) ? $_SESSION[$foo] : null;
	}
	
	static function descrip_estatus($tabla,$i) {
		$descrip_estatus="";
		switch ($tabla) {	
			case "pago":
					switch ($i) {
			    	case 0:
			 	        $descrip_estatus="0-En proceso"; //Pago Registrado exitosamente
			        	break;
			    	case 1:
			        	$descrip_estatus="1-Cruzado M"; //Cruzado en Matriz
			        	break;
			    	case 2:
			        	$descrip_estatus="2-Cruzado M-C"; //Cruzado en Matriz y en Cobranza
			        	break;
					}
					break;
			case "compra":
					switch ($i) {
			    	case 0:
			 	        $descrip_estatus="0-Activa (Normal)"; //
			        	break;
			    	case 3:
			        	$descrip_estatus="3-en Desglose en Proceso"; //
			        	break;
			    	case 5:
			        	$descrip_estatus="5-sustituida"; //
			        	break;
			    	case 6:
			        	$descrip_estatus="6-Sustituye"; //
			        	break;

					}
					break;

	
			case "desglose":
					switch ($i) {
			    	case 0:
			 	        $descrip_estatus="En proceso";
			        	break;
			    	case 1:
			        	$descrip_estatus="Procesada";
			        	break;
			    	case 2:
			        	$descrip_estatus="";
			        	break;
					}
					break;
			case "tbl_recibo_nota":
					switch ($i) {
			    	case 0:
			 	        $descrip_estatus="En proceso";
			        	break;
			    	case 1:
			        	$descrip_estatus="Aplicado";
			        	break;
			    	case 2:
			        	$descrip_estatus="";
			        	break;
					}
					break;					
			case "desgvta":
					switch ($i) {
			    	case 0:
			    		$descrip_estatus="En proceso";
			 	       
			        	break;
			    	case 1:
			        	$descrip_estatus="En venta";
			        	break;
			    	case 2:
			        	echo "i es igual a 2";
			        	break;
					}
					break;

		} // fin para  tabla	
		return($descrip_estatus);
	}

	static function getTipoFactura($op){
		$valor="";

			switch ($op) {	
				case 1:
					//$valor="AUTO ASIA";
					$valor="";
					$_SESSION['color_tipo']=""; //azul
					break;
				case 2:
					$valor="CHYZU";
					$_SESSION['color_tipo']="#0066FF"; //azul
					break;
				case 3:
					$valor="ACEITE";
					$_SESSION['color_tipo']="#e65100"; //narnaja
					break;
				case 4:
					$valor="PACE FOX";
					$_SESSION['color_tipo']="#f4d03f";  // amarillo
					break;
				case 5:
					$valor="CASCOS"; // Naranja
					$_SESSION['color_tipo']="#CC6600";
					break;
				case 6:
					$valor="YUANXING";
					$_SESSION['color_tipo']="#c0392b"; //rojo
					break;
				case 7:
					$valor="MOTO LED - ILUMINACION";
					$_SESSION['color_tipo']="#2e7d32"; //rojo
					break;					
				default:
					$valor="";
					$_SESSION['color_tipo']=""; //azul
					break;				
			} // fin 
		return $valor;

	}
	static function getComision($op,$tipo_venta){   //$op, indica si es compra o venta

		$valor_comision=0;
		if ( $op =="compra" ){
			switch ($tipo_venta) {	
				case 1:
					$valor_comision=6;   //auto asia
					//$_SESSION['color_tipo']="";
					break;
				case 2:
					//$_SESSION['color_tipo']="#85c1e9";
					//$_SESSION['color_tipo']="rgba(255,0,0,0.5)";
					$valor_comision=6;   //chyzu
					break;
				case 3:  // aceite
					//$_SESSION['color_tipo']="#d35400";
					$valor_comision=6;  
					break;
				case 4:
					$valor_comision=6;
					break;
				case 5:
					$valor_comision=6;
					break;
				case 6:
					$valor_comision=6;
					break;
				default:
					$valor_comision=6;
					break;				
			} // fin 
		}

		return $valor_comision;
	}

	static function descrip_condicion($condicion) {
		//var_dump("Valor de condicion dentro de la funcion: ".$condicion );
		$descrip_condicion="";
		switch ($condicion) {	
			case 1:
				$descrip_condicion="CREDITO";
				break;
			case 0:
				$descrip_condicion="CONTADO";
				break;
			default:
				$descrip_condicion="SIN CODIGO";
				break;				

		} // fin 
		return($descrip_condicion);
	}

	static function descrip_origen($origen) {
		$descripcion="";
		switch ($origen) {	
			case 1:
				$descripcion="Directo";
				break;
			case 2:
				$descripcion="Desglose";
				break;
			case 3:
				$descripcion="Taller";
				break;				
			default:
				$descripcion="";
				break;				

		} // fin 
		return($descripcion);
	}

	static function getPorcentaje($porc) {
		$descrip_porc="";
		switch ($porc) {	
			case 1:
				$descrip_porc="CREDITO";
				break;
			case 2:
				$descrip_porc="CONTADO";
				break;
			case 3:
				$descrip_porc="CREDITO";
				break;
			case 4:
				$descrip_porc="CONTADO";
				break;
			case 5:
				$descrip_porc="10";
				break;
			case 6:
				$descrip_porc="15";
				break;
			case 7:
				$descrip_porc="20";
				break;
			case 8:
				$descrip_porc="25";
				break;
			case 9:
				$descrip_porc="33";
				break;
			case 10:
				$descrip_porc="0";
				break;
			case 11:
				$descrip_porc="5";
				break;
			default:
				$descrip_porc="SIN CODIGO";
				break;				
		} // fin 
		return($descrip_porc);
	}
	
	static function getColorTipo($tipo){

	} 

	static function getEstiloCondicion($condicion){
		$estilo = "";
			switch ($condicion) {
	  				case 0:
	  					$color_letra = ""; 
	  					$color_fondo = "#D9EDF7"; 
						$condicion_text="Contado";
	    				break;
	  				case 1:
	  				    /*$estilo      = "color:#000000; font-size:12px; background-color: #fb5e17;";*/
	  				    /*$estilo      = "color:#000000; font-size:12px; background-color: #FF0000;";  // rojo*/
	  				    $estilo      = "color:#000000; font-size: 12px; background-color: #fb5e17;";
	  					$color_letra = "#1b00ff"; 
	  					//$color_fondo = "#FFFFFF"; 
	  					$color_fondo = "#fb5e17"; 
	    				$condicion_text="Crédito";
	  				default:						    
	    				break;
	  					$estilo ="Error.Admin.".$condicion;
			}
			return $estilo;

	} 
} ?>