<?php 
require '../../../cfg/base.php'; 
extract($_POST);
echo $fn->modalWidth('70%');

$row = $mdesglose->lista_venta_pordesglose($desg_ide);
?>
<?php echo $fn->modalHeader('RESUMEN DESGLOSE POR VENTA') ?>
<div class="modal-body">
</div>
<?php echo $fn->modalFooter(1) ?>