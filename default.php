<a href="app/compra_wh/vst/admin.php" title="Registrar Nota" style="display:inline-block; margin-left: 40px;" target="main">
    <img src="img/notas.png" alt="Registrar" width="52" height="52" style="vertical-align:middle;" />
    <span style="font-size:18px; vertical-align:middle; margin-left:12px; color: #ff6600;">Registrar nota</span>
</a>
<br>
<a href="#" title="Reporte de Matriz por Proveedor" style="display:inline-block; margin-left: 40px; margin-top: 30px;" onclick="modal('vst-pago-insert','')">
    <img src="img/reporte1.png" alt="Reporte de Matriz por Proveedor" width="52" height="52" style="vertical-align:middle;" />
    <span style="font-size:18px; vertical-align:middle; margin-left:12px; color: #ff6600;">Reporte Matriz</span>
</a>
<?php 
$title="PRUEBA REGISTRAR NOTA"; 
$icon1="img/notas.png";
$descr ="Registrar Nota"; 
$color = "#ff6600;"

 ?>
 <ul class="nav nav-list">
                <li>
                    <a href="#" title="<?php echo $title; ?>">
                        <i class="icon-<?php echo $icon1; ?> <?php //echo $animacion ?>" style="color:<?php echo $color; ?>"></i>
                        <span class="menu-text">
                            <?php echo $descr; ?> <i class="icon-<?php //echo $icon2; ?>" style="color:<?php echo $color; ?>"></i>
                        </span>
                    </a>
                </li>
</ul><!-- /.nav-list -->
