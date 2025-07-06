<!-- Agrega un id al div principal para poder ocultarlo -->
<div id="default-content">
    <a href="app/compra_wh/vst/admin.php" title="Registrar Nota" style="display:inline-block; margin-left: 40px;" target="main"
       onclick="document.getElementById('default-content').style.display='none';load('vst-compra_wh-admin','origen_opcion='+1,'.registrar_compra'); return false;">
        <img src="img/notas.png" alt="Registrar" width="52" height="52" style="vertical-align:middle;" />
        <span style="font-size:18px; vertical-align:middle; margin-left:12px; color: #ff6600;">Registrar nota</span>
    </a>
    <a href="#" title="Reporte de Matriz por Proveedor" style="display:inline-block; margin-left: 60px;"
       onclick="document.getElementById('default-content').style.display='none'; load('vst-compra_wh-lista_matriz','','.lista_matriz'); return false;">
        <img src="img/reporte1.png" alt="Matriz por Proveedor" width="52" height="52" style="vertical-align:middle;" />
        <span style="font-size:18px; vertical-align:middle; margin-left:12px; color: #ff6600;">Matriz por Proveedor</span>
    </a>
</div>

<!-- Icono en la parte inferior izquierda -->
<a href="#" id="icono-cobranza" title="Cobranza" style="
    position: fixed;
    left: 40px;
    top: 65%;
    transform: translateY(-50%);
    z-index: 1000;
    display: inline-block;
"
   onclick="document.getElementById('default-content').style.display='none'; document.getElementById('icono-cobranza').style.display='none'; load('vst-reportes-admin_cobranza','origen_opcion='+1,'.cobranza'); return false;">
    <img src="img/icono-cobranza.png" alt="Cobranza" width="60" height="60" style="vertical-align:middle;" />
</a>

<script>
    // Oculta el icono-cobranza al hacer clic en cualquiera de las opciones principales
    document.querySelectorAll('#default-content a').forEach(function(el) {
        el.addEventListener('click', function() {
            document.getElementById('icono-cobranza').style.display = 'none';
        });
    });
</script>