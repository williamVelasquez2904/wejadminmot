<?php class cZona extends mZona {
	
	public function setValue() {
		extract($_POST);
		if(isset($zona_ide) and !empty($zona_ide)):
			$rt = $zona_ide;
		elseif(isset($des) and !empty($des)):
			$rt = $des;
		else:
			$rt = null;
		endif;
		return $rt;
	}

	public function disabled() {
		$disabled = (isset($_POST['disabled']) and $_POST['disabled']==1) ? 'disabled' : null;
		return $disabled;
	}
} ?>