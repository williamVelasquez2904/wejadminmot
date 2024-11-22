<?php 
require '../../../cfg/base.php';

echo "Desglose:  ".$_SESSION['desglose_ide'];
extract($_POST); 
echo "Pagina de prueba   28-06";
var_dump($_POST);
var_dump($porc_ide);
//$row = $mdesglose->lista_venta($desg_ide);
 ?>