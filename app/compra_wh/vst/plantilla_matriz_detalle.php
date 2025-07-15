<?php 
    $nombre="";
    $nombre = funciones::convertirUTF8($r->nombre1);
    $nombre_limpio = iconv('UTF-8', 'ASCII//TRANSLIT//IGNORE', $nombre);

    $texto_alternativo_cliente=$r->nombre1.' '.$texto_destino.' '.$r->compra_sustitucion.$tipo_text; 
?>
<td align="center"><?php echo implode('-', array_reverse(explode('-', $r->compra_fecha)));?></td>
<td align="center"><?php echo implode('-', array_reverse(explode('-', $r->compra_fecha_recep)));?></td>						
<td align="left" title="<?php echo htmlspecialchars($texto_alternativo_cliente); ?>">
    <?php 

        echo $nombre_limpio . '<b>' . $texto_destino . '</b> -  <b>' . $r->compra_sustitucion . '</b>'; 
    ?> 
    <font color="<?php echo $color_tipo; ?>"><b><?php echo $tipo_text; ?></b></font>
</td>
<td align="right"><?php echo $r->compra_num ?>
        <div class="btn-group">
            <button class="btn btn-success btn-xs" title="Ver pago" onclick="modal('vst-compra_wh-ver_img_nota','ide=<?php echo $r->compra_ide ?> ?>')">
            <i class="fa fa-image"></i>
            </button>
        </div>

</td>
<td align="center"><?php echo $r->compra_porc_desc ?></td>
<td align="right"><?php echo number_format($monto,2,",",".") ?></td>
<td align="right"><?php echo number_format($r->compra_devol,2,",",".") ?></td>

<td align="right"><?php echo number_format($comision,2,",",".") ?></td>
<td align="right" style="<?php echo $estilo_com_autoasia; ?>">
    <?php echo number_format($r->compra_comision_ex,2,",",".") ?>
</td> <!-- OJO aqui va comision excel -->
<td align="right"><?php echo number_format($r->abono,2,",",".") ?>							
    <div class="btn-group">
        <button class="btn btn-success btn-xs" title="Ver en cruce" onclick="modal('vst-cruce-lista_pornota',
            'compra_ide=<?php echo $r->compra_ide ?>')">
            <i class="fa fa-edit"></i>
        </button>
    </div>	
</td>
<td align="right">
    <font size ="3", color =<?php if ($saldo < 0 ) echo "#ff0000" ?>>
    <?php echo number_format($saldo,2,",",".") ?></td>

<!-- <td align="center"><?php //echo '<b>'.$estatus_text.'</b>' ?></td> -->
<td align="center">
    <div class="btn-group"> 
        <button class="btn btn-success btn-xs" title="Actualizar"
        onclick="modal('vst-compra_wh-update_matriz','ide=<?php echo $r->compra_ide ?>')">
            <i class="fa fa-edit"></i>
        </button>
    </div>
    <div class="btn-group">
        <button class="btn btn-success btn-xs" title="Actualizar Imagen"
        onclick="modal('vst-compra_wh-upd_img_nota','ide=<?php echo $r->compra_ide ?>')">
            <i class="fa fa-image"></i>
        </button>
    </div>
</td>