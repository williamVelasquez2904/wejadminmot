<?php 
if(isset($_GET['var']) and !empty($_GET['var'])) :
	$rows = $musuarios->contenido(base64_decode($_GET['var']),$s_tius_ide);
	if(count($rows)>0) {
		if(file_exists($rows[0]->sumo_url)) {
			$tit = '<i class="fa fa-'.$rows[0]->modu_icono.'"></i>'.$rows[0]->modu_descrip.' <i class="fa fa-angle-double-right"></i><small><i class="fa fa-'.$rows[0]->sumo_icono.'"></i> '.$rows[0]->sumo_descrip.'</small>';
			$pag = $rows[0]->sumo_url;
		} else {
			$tit = '<font color="red"><i class="fa fa-warning"></i> ¡ERROR 404!</font>';
			$pag = '404.php';
		}
	} else {
		$tit = '<font color="red"><i class="fa fa-warning"></i> ¡ERROR 505!</font>';
		$pag = '505.php';
	}
elseif(isset($_GET['gvar']) and !empty($_GET['gvar'])) :
	switch($_GET['gvar']) {
		case 1: 
			$tit = '<font color="#64930D"><i class="fa fa-user"></i> Cuenta de Usuario</font>';
			$pag = 'app/usuarios/vst/cuenta.php';
			break;
		case 2: 
			$tit = '<font color="#64930D"><i class="fa fa-exchange"></i> Cambiar de empresa</font>';
			$pag = 'app/usuarios/vst/cambiartienda.php';
			break;
	}
else :
	$tit = '<i class="fa fa-home"></i> Inicio';
	$pag = 'default.php';
endif;
?>
<div class="page-header"><h1><font color="#<?php echo $rowt[0]->empresa_bg_menu ?>"><?php echo $tit; ?></font></h1></div>
<div class="space-2"></div>
<div class="row">
	<div class="col-sm-12"><?php require $pag; ?></div>
</div>