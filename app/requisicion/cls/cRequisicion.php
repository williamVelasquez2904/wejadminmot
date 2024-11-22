<?php class cRequisicion extends mRequisicion {
	
	public function setValue() {
		extract($_POST);
		if(isset($req_ide) and !empty($req_ide)):
			$rt = $req_ide;
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