<?php
require '../../../cfg/base.php'; 
?>
<?php
    $fecha_actual=date("d-m-Y");
    echo $fn->modalWidth('80%');
    echo $fn->modalHeader('REPORTAR PAGO') 
?>

<div class="modal-body">                
    <div class="msj"></div>
    <fieldset><legend>[insert.php] 12-02-2025 - Por favor ingrese los datos del Pago </legend>
    <div class="clearfix"></div>    
    <form action="cargarimg" method="post" enctype="multipart/form-data">

        <!-- Campos del formulario ... -->

        <div class="form-group col-sm-7">
            <label for="" class="label control-label col-sm-12 bolder">Imagen del Pago </label>
            <div class="col-sm-12">
                <input type="file" class="form-control" name="file1" id="imageInput">
            </div>  
        </div>
        <div class="clearfix"></div>

        <!-- Resto de los campos del formulario ... -->

        <div class="form-group col-sm-7">
            <label for="" class="label control-label col-sm-12 bolder">Nombre de archivo generado </label>
            <div class="col-sm-12">
                <input type="text" class="form-control" name="nomarc" id="nomarc">
            </div>  
        </div>                              
        <div class="clearfix"></div>

        <div class="form-group col-sm-7">           
            <div class="col-sm-12">
                <button class="btn btn-primary btn-sm pull-right"><span class="i fa fa-check"></span> Subir Imagen </button>
            </div>  
        </div>
        <div class="clearfix"></div>

    </form>

    <div id="imagePreviewContainer">
        <img id="imagePreview" src="#" alt="Previsualización de Imagen">
    </div>
    <button id="zoomButton" style="display: none;">Zoom</button>
    <button id="resetButton" style="display: none;">Restablecer</button>
</div>

<script>
    $(function(){
        $('.chosen').chosen();
        $('.fecha').datepicker({format:'dd-mm-yyyy',endDate:'-1d'}); // formato dia mes año 
    })

    function convertirAFormato(numero) {
        // Convertir el número a string
        let numeroStr = numero.toString();
        // Reemplazar la coma por "con"
        numeroStr = numeroStr.replace(",", "con");
        // Reemplazar el punto por "con"
        numeroStr = numeroStr.replace(".", "con");
        return numeroStr;
    }

    function nombre_archivo(){
        let nombre=document.getElementById('titular');
        document.getElementById('arch_img').value=nombre;
        return nombre;
    }

    function generarNombreArchivo() {
        var nombreArchivo = "";
        var forma_pago = "";
        var txt_titular = document.getElementById("titular").value;
        var txt_ref = document.getElementById("ref").value;
        var txt_fec = document.getElementById("fec").value;
        var txt_hora = document.getElementById("hora").value;

        let campoMonto = document.getElementById("mto").value;
        var txt_mto = convertirAFormato(campoMonto);

        var fp = document.getElementById("forpago").value;
        var txt_aplica = document.getElementById("aplica").value;

        if (fp == 1 ){
            forma_pago="EFECTIVO_DOLARES";
        } else if (fp == 2) {
            forma_pago="EFECTIVO_BS";
        } else if (fp == 3) {
            forma_pago="EFECTIVO_COP";
        } else if (fp == 4) {
            forma_pago="TRANSFERENCIA_DOLARES";
        } else if (fp == 5) {
            forma_pago="TRANSFERENCIA_BOLIVARES";
        } else if (fp == 6) {
            forma_pago="TRANSFERENCIA_COP";
        } else if (fp == 7) {
            forma_pago="ZELLE";
        }

        nombreArchivo = forma_pago + "_" + 
        txt_titular + "_" + 
        txt_ref + "_" + 
        txt_fec + "_" + 
        txt_hora + "_" + 
        txt_mto + "_" + 
        txt_aplica + 
        ".png";
        document.getElementById("nomarc").value = nombreArchivo;
        return nombreArchivo;
    }

    function calculaMontoenDolares(){
        tasa = document.getElementById('tasa').value;
        mto_bs = document.getElementById('mto_bs').value;
        mto = mto_bs / tasa;
        x = redondearDecimales(mto, 2); 
        document.getElementById('mto').value = x;
        return x;
    }

    function redondearDecimales(numero, decimales) {
        numeroRegexp = new RegExp('\\d\\.(\\d){' + decimales + ',}'); 
        if (numeroRegexp.test(numero)) {
            return Number(numero.toFixed(decimales));
        } else {
            return Number(numero.toFixed(decimales)) === 0 ? 0 : numero;
        }
    }

    $(function(){
        var formulario = '.op_img';
        $(formulario).validate({
            errorElement: 'div',
            errorClass: 'help-block',
            focusInvalid: true,
            rules: {
                fec: { required: true },
                forpago: { required: true },
                titular: { required: true },
                ref: { required: true }
            },
            messages: {
                des: { required: 'Obligatorio' },
                forpago: { required: 'Obligatorio' }
            },
            invalidHandler: function (event, validator) {   
                $('.alert-danger', $(formulario)).show();
            },
            highlight: function (e) {
                $(e).closest('.form-group').removeClass('has-info').addClass('has-error');
            },
            success: function (e) {
                $(e).closest('.form-group').removeClass('has-error').addClass('has-info');
                $(e).remove();
            },
            invalidHandler: function (form) {}
        });
    })

    const imageInput = document.getElementById('imageInput');
    const imagePreview = document.getElementById('imagePreview');
    const zoomButton = document.getElementById('zoomButton');
    const resetButton = document.getElementById('resetButton');
    const imagePreviewContainer = document.getElementById('imagePreviewContainer');
    let zoomed = false;

    imageInput.addEventListener('change', function(event) {
        const file = event.target.files[0];
        if (file) {
            const reader = new FileReader();
            reader.onload = function(e) {
                imagePreview.src = e.target.result;
                imagePreviewContainer.style.display = 'block';
                zoomButton.style.display = 'inline';
                resetButton.style.display = 'inline';
            };
            reader.readAsDataURL(file);
        } else {
            imagePreviewContainer.style.display = 'none';
            imagePreview.src = '#';
            zoomButton.style.display = 'none';
            resetButton.style.display = 'none';
        }
    });

    zoomButton.addEventListener('click', function() {
        zoomed = !zoomed;
        if (zoomed) {
            imagePreview.classList.add('zoomed');
            zoomButton.textContent = 'Alejar';
        } else {
            imagePreview.classList.remove('zoomed');
            zoomButton.textContent = 'Zoom';
        }
    });

    resetButton.addEventListener('click', function() {
        imagePreview.classList.remove('zoomed');
        zoomButton.textContent = 'Zoom';
        zoomed = false;
    });
</script>
<style>
    body {
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
        height: 100vh; /* Altura completa de la ventana */
        margin: 0;
        padding: 20px;
        box-sizing: border-box;
    }
    #imagePreviewContainer {
        display: none;
        text-align: center;
        overflow: auto;
        position: relative;
        width: 50%; /* Ancho de la mitad derecha */
        height: 80vh; /* Altura fija para el contenedor */
        border: 1px solid #ccc; /* Borde opcional para visualización */
    }
    #imagePreview {
        max-width: 100%;
        height: auto;
        transition: transform 0.25s ease; /* Añadir una transición suave */
    }
    .zoomed {
        transform: scale(2); /* Ajusta el factor de zoom según sea necesario */
    }
    #controls {
        width: 45%; /* Ancho de la mitad izquierda */
    }
</style>