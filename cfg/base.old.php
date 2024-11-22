<?php 
# Configura la ruta de acceso de los archivos al sistema
$ruta_acceso_archivos = (file_exists('cfg/config.php')) ? '' : '../../../';
# Llama a las librer铆as principales
require $ruta_acceso_archivos.'cfg/config.php';
require $ruta_acceso_archivos.'cfg/conexion.php';
require $ruta_acceso_archivos.'cfg/funciones.php';
# Reune todos los archivos y carpetas dentro de app
$archivos = array(
		'usuarios'=>array('mUsuarios','cUsuarios'),
		'tipclien'=>array('mTipclien','cTipclien'),
		'tipousua'=>array('mTipousua','cTipousua'),
		'permisos'=>array('mPermisos','cPermisos'),
		'cliente'=>array('mCliente','cCliente'),
		'proveedor'=>array('mProveedor','cProveedor'),
		'vendedor'=>array('mVendedor','cVendedor'),
		'agenda'=>array('mAgenda','cAgenda'),
		'permfich'=>array('mPermfich','cPermfich'),
		'impuesto'=>array('mImpuesto','cImpuesto'),
		'zona'=>array('mZona','cZona'),
		'marca'=>array('mMarca','cMarca'),
		'modelo'=>array('mModelo','cModelo'),
		'banco'=>array('mBanco','cBanco'),
		'producto'=>array('mProducto','cProducto'),
		'unidmed'=>array('mUnidmed','cUnidmed'),
		'tienda'=>array('mTienda','cTienda'),
		'reportes'=>array('mReportes','cReportes'),
		'detaprod'=>array('mDetaprod','cDetaprod'),
		'requisicion'=>array('mRequisicion','cRequisicion'),
		'orden'=>array('mOrden','cOrden'),
		'compra'=>array('mCompra','cCompra'),
		'compracom'=>array('mCompracom','cCompracom'),
		'facturacion'=>array('mFacturacion','cFacturacion'),
		'facturacion10'=>array('mFacturacion10','cFacturacion10'),
		'notaentre'=>array('mNotaentre','cNotaentre'),
		'deposito'=>array('mDeposito','cDeposito'),
		'auditoria'=>array('mAuditoria','cAuditoria')
	);
# Instanciaci贸n de clases
$fn = new Funciones();
foreach($archivos as $ind=>$val) {
	foreach($val as $file) {
		require $ruta_acceso_archivos.'app/'.$ind.'/cls/'.$file.'.php';
		$ins = strtolower($file);
		$$ins = new $file();
	}
}
?>