<?php require '../../../cfg/base.php'; 
$ruta_img="";
$row = $mcompra_wh->poride($ide);

foreach($row as $r): 
    $ruta_img="img/notas/".$r->compra_img;
endforeach; 
?>	
<?php 
echo $fn->modalWidth("98%");
echo $fn->modalHeader('[ver_img_nota.php] 15-MAY-25. Ver NOTA: '.$r->compra_img) ?>
<style>
.img-zoom-container {
    overflow: auto;
    max-height: 80vh;
    max-width: 100%;
    border: 1px solid #ddd;
    position: relative;
    cursor: grab;
    background: #fafafa;
}
.img-zoom {
    transition: transform 0.3s ease;
    max-width: 100%;
    max-height: 70vh;
    display: block;
    margin: 0 auto;
    cursor: zoom-in;
}
.img-zoom.zoomed {
    transform: scale(2);
    cursor: move;
    /* Para evitar que la imagen salga del contenedor */
    max-width: none;
    max-height: none;
}
</style>
<div class="modal-body">
    <div class="msj"></div>
    <div class="form-group">
        <label for="" class="control-label col-sm-3 bolder"><?php echo $r->nombre1; ?></label>
        <div class="col-sm-9 img-zoom-container">
            <img src="<?php echo $ruta_img; ?>" class="img-zoom">
        </div>
    </div>
</div>
<?php echo $fn->modalFooter(1) ?>