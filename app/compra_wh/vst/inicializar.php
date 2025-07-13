<?php  
    // Si no hay valores seteados para f_ini y f_fin, asigna los valores por defecto
    if (empty($f_ini)) $f_ini = '2025-01-01';
    if (empty($f_fin)) $f_fin = '2025-12-31';

    $row_cant = $mcompra_wh->cantidad_cred_cont($prov_ide, $f_ini, $f_fin);
    $cant_contado = isset($row_cant[0]->contado) ? $row_cant[0]->contado : 0;
    $cant_credito = isset($row_cant[0]->credito) ? $row_cant[0]->credito : 0;
    $acum_monto_contado   =0.0;
    $acum_monto_credito   =0.0;
    $suma_comision=0.0;
    $suma_comision_ex=0.0;
?>