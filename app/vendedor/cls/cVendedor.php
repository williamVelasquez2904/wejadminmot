<?php class cVendedor extends mVendedor {
	
	public function buscar() {
		extract($_POST);
		$expd_vende = explode(' - ',$vende);
		$vende_ide = $expd_vende[0];
		$row = $this->poride($vende_ide);
		if(count($row)>0) {
			$rt = $row[0]->vende_ide;
		} else {
			$rt='no';
		}
		return $rt;
	}

	public function cinsert() {
		extract($_POST);
		$a = Funciones::vacio($tipo,'El tipo de vendedor es obligatorio');
		$b = Funciones::vacio($mov,'Debe indicar un número de telefonía móvil');
		$a1 = ($a==1) ? 1 : $msj[] = $a;
		$b1 = ($b==1) ? 1 : $msj[] = $b;
		if($a1==1 and $b1==1) {
			$rt = $this->insert();
		} else {
			$rt = null;
			foreach($msj as $m) {
				$rt = $rt.$m.'<br>';
			}
		}
		return $rt;
	}

	public function cupdate() {
		extract($_POST);
		$a = Funciones::vacio($tipo,'El tipo de vendedor es obligatorio');
		$b = Funciones::vacio($mov,'Debe indicar un número de telefonía móvil');
		$a1 = ($a==1) ? 1 : $msj[] = $a;
		$b1 = ($b==1) ? 1 : $msj[] = $b;
		if($a1==1 and $b1==1) {
			$rt = $this->update();
		} else {
			$rt = null;
			foreach($msj as $m) {
				$rt = $rt.$m.'<br>';
			}
		}
		return $rt;
	}


	public function edad($fechnac) {
		//fecha actual
		$dia=date('d');
		$mes=date('m');
		$ano=date('Y');

		//fecha de nacimiento
		$fcha=explode('-',$fechnac);
		$dianaz=$fcha[2];
		$mesnaz=$fcha[1];
		$anonaz=$fcha[0];

		//si el mes es el mismo pero el día inferior aun no ha cumplido años, le quitaremos un año al actual

		if (($mesnaz == $mes) && ($dianaz > $dia)) {
			$ano=($ano-1); 
		}

		//si el mes es superior al actual tampoco habrá cumplido años, por eso le quitamos un año al actual

		if ($mesnaz > $mes) {
			$ano=($ano-1);
		}

		//ya no habría mas condiciones, ahora simplemente restamos los años y mostramos el resultado como su edad

		$edad=($ano-$anonaz);
		return $edad;
	}

	public function picture($vende_ide) {
		if(file_exists('../../../img/fotos/'.$vende_ide.'.jpeg')) {
			$rt = 'img/fotos/'.$vende_ide.'.jpeg';
		} else {
			$rt = 'img/fotos/m.png';
		}
		return $rt;
	}

	public function cinsertRapido() {
		extract($_POST);
		$a = Funciones::vacio($tipo,'El tipo de vendedor es obligatorio');
		$a1 = ($a==1) ? 1 : $msj[] = $a;
			if($a1==1) {
			$rt = $this->insertRapido();
		} else {
			$rt = null;
			foreach($msj as $m) {
				$rt = $rt.$m.'<br>';
			}
		}
		return $rt;
	}

} ?>