<?php require '../../../cfg/base.php';  // 02-09-25
echo $fn->modalWidth('80%');
$row_encab_cruce= $mcruce->poride($ide); 
$monto_porcruzar=0;
foreach ($row_encab_cruce as $r) {
    $cruce_encab_status= $r->cruce_encab_status;
    $monto_cruce       = $r->cruce_encab_monto;
    $monto_porcruzar   = $r->montoporcruzar;
}
$datos_cruce= $mcruce->poride($ide); 
$notas      = $mcruce->lista_detalle($ide);  //  ide de encabezado   ?>
<script>
    // Pasa los datos PHP a JavaScript como un array de objetos
    var notas = <?php echo json_encode($notas, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES); ?>;
    var datos_cruce = <?php echo json_encode($datos_cruce, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES); ?>;
    // Si datos_cruce es array, toma el primer elemento
    if(Array.isArray(datos_cruce)) datos_cruce = datos_cruce[0] || {}; 
    //if(Array.isArray(notas))  notas = notas[0] || {};
    console.log("notas:", notas);
    console.log("datos_cruce:", datos_cruce);
</script>
	<!-- <?php //echo $fn->modalHeader("[insert_detalle.php]. 13-Nov-24 -  Detalles del cruce : ".$r[0]->cruce_encab_ide." - ".$r[0]->pago_titular) ?>   -->
	<!-- <?php //echo $fn->modalHeader("[insert_detalle.php]. 01-085 -  Detalles del cruce : ") ?> -->  
	<?php echo $fn->modalHeader("Detalles del cruce : ".$ide) ?>
	<div class="modal-body">

		<div class="msj"></div>
		<form action="" class="op_insert_det_cruce">	
			<fieldset><legend> DATOS DE LA NOTA ASOCIADA AL CRUCE  
				<div class="btn-group">
					<button type="button" class="btn btn-success btn-xs" title="Ver imágen del cruce" onclick="modal('vst-cruce-ver_img_cruce','encab_ide=<?php echo $ide ?> ?>')">
					<i class="fa fa-edit"></i>
					</button>
				</div>
			</legend>

				<div class="form-group col-sm-12 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Seleccione la Nota</label>
					<div class="col-sm-12 col-xs-12">
							<select class="form-control chosen" title="nota" name="nota_ide" id="nota_ide">
							<!-- <option value="">Seleccione</option> -->
							<option value=""></option>
							<!-- 27-07-2025
								<?php //foreach($mcompra_wh->lista_matriz_con_deuda() as $c): ?>
							-->
							<?php foreach($mcompra_wh->lista_matriz() as $c): ?>
								<option value="<?php echo $c->compra_ide ?>">
									<?php 
										echo $c->compra_num.' - '.funciones::cadena_limpia($c->nombre1).' - ' . ' - Monto contado: '.$c->compra_monto.' - Deuda: '. $c->deuda ; 
									?>
								</option>
							<?php endforeach; ?>
						</select>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="form-group col-sm-2 col-xs-12">
						<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto Cruce:</label>
						<div class="col-sm-12 col-xs-12">
							<input type="text" class="form-control" name="mto" id="mto"  >
						</div>
				</div>

                <div class="form-group col-sm-2 col-xs-12">
                        <label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto por cruzar:</label>
                        <div class="col-sm-12 col-xs-12">
                            <input type="text" class="form-control" name="mtoxcruzar" id="mtoxcruzar"  value="<?php echo $monto_porcruzar ?>">
                        </div>
                </div>
				
				<div class="clearfix"></div>
				<input type="hidden" class="form-control" name="encab_ide" id="encab_ide" value="<?php echo $ide; ?>">


				<!-- <div class="clearfix"></div> -->
				<button class="btn btn-primary btn-sm pull-right col-sm-2 col-xs-12" id="insertButton">
					<span class="i fa fa-plus fa-2x"></span> 
					<font size="4"> Insertar</font>
				</button>

				<button type="button" class="btn btn-primary btn-sm pull-left col-sm-2 col-xs-12" id="btnExcel" style="margin-bottom:10px;">
					<span class="fa fa-file-excel-o"></span>
					<font size="4"> Generar Excel</font>
				</button>
				<!-- Agrega el botón PDF junto al de Excel -->
				<button type="button" class="btn btn-primary btn-sm pull-left col-sm-2 col-xs-12" id="btnPDF" style="margin-bottom:10px; margin-left:10px;">
                    <span class="fa fa-file-pdf-o"></span>
                    <font size="4"> Generar PDF</font>
                </button>
                <button type="button" class="btn btn-info btn-sm pull-left col-sm-2 col-xs-12" id="btnPreviewPDF" style="margin-bottom:10px; margin-left:10px;">
                    <span class="fa fa-eye"></span>
                    <font size="4"> Preview PDF</font>
                </button> 
            </fieldset>
		</form>
		<div class="lista_detalle"></div>		
	</div>			

	<?php echo $fn->modalFooter(2); ?>
<style>
    input.form-control.monto-cruzado-cero {
        background-color: #dff0d8 !important;
        background-image: none !important;
    }
</style>
<script>
	load('vst-cruce-lista_detalle','ide='+<?php echo $ide; ?>,'.lista_detalle');

    function checkMontoPorCruzar() {
    	//alert('entro a check');
        var montoInput = $('#mtoxcruzar');
        var montoPorCruzar = parseFloat(montoInput.val());

        if (montoPorCruzar <= 0) {
        	//alert('entro paso 1');
            $('#insertButton').prop('disabled', true);
            montoInput.addClass('monto-cruzado-cero');
            // Limpiar errores de validación del campo 'mto' ya que no es necesario
            var mtoField = $('#mto');
            var formGroup = mtoField.closest('.form-group');
            formGroup.removeClass('has-error');
            formGroup.find('.help-block').remove();
        } else {
        	//alert('entro paso 2');
            $('#insertButton').prop('disabled', false);
            montoInput.removeClass('monto-cruzado-cero');
        }
    }

	// Se llama a la función directamente para asegurar que se ejecute al cargar el modal.
	checkMontoPorCruzar();
</script>

<script>
	load('vst-cruce-lista_detalle','ide='+<?php echo $ide; ?>,'.lista_detalle');
</script>

<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'dd-mm-yyyy',endDate:'-1d'}); // formato dia mes año 
	})
</script>
<script> 
	$(function(){
		var formulario = '.op_insert_det_cruce';
		$(formulario).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				mto: {
					required: function(element) {
                        return parseFloat($('#mtoxcruzar').val()) > 0;
                    },
                    number: true
				}
			},

			messages: {
				mto: {
					required: 'Obligatorio',
				}
			},

			invalidHandler: function (event, validator) { //display error alert on form submit   
				$('.alert-danger', $(formulario)).show();
			},

			highlight: function (e) {
				$(e).closest('.form-group').removeClass('has-info').addClass('has-error');
			},

			success: function (e) {
				$(e).closest('.form-group').removeClass('has-error').addClass('has-info');
				$(e).remove();
			},

			submitHandler: function (form) {
                var v_ide = document.getElementById('encab_ide').value;
                $.post('prc-mcruce-insert_detalle', $(formulario).serialize(), function(data) {
                    if (!isNaN(data)) {
                        load('vst-cruce-lista_detalle', 'ide=' + v_ide, '.lista_detalle');
                        // Actualizar el campo Monto por cruzar
            /*            $.get('prc-mcruce-monto_porcruzar', 'ide=' + v_ide, function(resp) {
                            $('#mtoxcruzar').val(resp);
                        });*/
                        $.post('prc-mcruce-monto_porcruzar', $(formulario).serialize(), function(data) {
                        	//alert('Asignando valor a mto por cruzar....');
                            $('#mtoxcruzar').val(data);
                            checkMontoPorCruzar();
                            /*
                            var montoInput = $('#mtoxcruzar');
					        var montoPorCruzar = parseFloat(montoInput.val());

					        if (montoPorCruzar <= 0) {
					        	alert('entro paso 1.1');
					            $('#insertButton').prop('disabled', true);
					            montoInput.addClass('monto-cruzado-cero');
					            // Limpiar errores de validación del campo 'mto' ya que no es necesario
					            var mtoField = $('#mto');
					            var formGroup = mtoField.closest('.form-group');
					            formGroup.removeClass('has-error');
					            formGroup.find('.help-block').remove();
					        } else {
					        	alert('entro paso 2.2');
					            $('#insertButton').prop('disabled', false);
					            montoInput.removeClass('monto-cruzado-cero');
					        }  */
                        });
                        
                        // Se actualiza la variable 'notas' con los datos más recientes del detalle del cruce.
                        // Se usa el endpoint '_json' que devuelve datos en formato JSON, no HTML.
                        $.post('prc-mcruce-lista_detalle_json', 'ide=' + v_ide, function(freshNotas) {
                            notas = freshNotas; // Se asigna el array de objetos JSON a la variable global.
                        }, 'json').fail(function() {
                            console.error("Error al actualizar la variable 'notas' después de insertar.");
                        });

                        if (confirm('Registro agregado correctamente.\n¿Desea agregar otro registro?') == true) {
                            $(formulario).each(function() { this.reset() })
                        } else {
                            cerrarmodal();
                        }
                        
                    } else {
                        alerta('.msj', 'danger', data)
                    }
                })
},
			invalidHandler: function (form) {
			}
		});
	})
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>
<script>
document.getElementById('btnExcel').onclick = function() {
    var forma_pago    = datos_cruce.forpago_descrip || '';
    var monto_pago    = datos_cruce.pago_monto     || '';
    var fecha_pago    = datos_cruce.pago_fecha     || '';
    var titular_pago  = datos_cruce.pago_titular   || '';
    var referencia_pago = datos_cruce.pago_ref     || '';
    var titulo = forma_pago + " " + monto_pago + " " + fecha_pago + " " + titular_pago + " " + referencia_pago;

    var encabezados = [
        "Nombre del Cliente",
        "Factura",
        "Monto Factura",
        "Abono a la Nota",
        "Monto Pendiente",
        "Estado de la Nota"
    ];

    var ws_data = [
        ["DATOS DEL PAGO"],
        [titulo],
        [],
        encabezados
    ];

    notas.forEach(function(nota) {
        var nombreCliente = String(nota.clien_tipcli) + "-" + String(nota.clien_numiden) + " | " + String(nota.clien_nombre1).substring(0, 30);
        var factura = String(nota.compra_num);
        var montoFactura = (nota.compra_condicion == 0) ? nota.compra_monto : nota.compra_monto_credito;
        var abono = String(nota.crudeta_monto);
        var pendiente = "0";
        var estado = "Pendiente";
        ws_data.push([nombreCliente, factura, montoFactura, abono, pendiente, estado]);
    });

    var wb = XLSX.utils.book_new();
    var ws = XLSX.utils.aoa_to_sheet(ws_data);

    // Aplica fondo amarillo a la fila de encabezados (fila 4, índice 3)
    for (var i = 0; i < encabezados.length; i++) {
        var cell = ws[XLSX.utils.encode_cell({r: 3, c: i})];
        if (!cell.s) cell.s = {};
        cell.s.fill = { fgColor: { rgb: "FFFF00" } };
        cell.s.font = { bold: true };
    }

    // Ajusta el ancho de las columnas para que coincidan visualmente con el PDF
    ws['!cols'] = [
        { wch: 30 }, // Nombre del Cliente (15 a 70)
        { wch: 10 }, // Factura (71 a 90)
        { wch: 12 }, // Monto (91 a 109)
        { wch: 12 }, // Abono (110 a 130)
        { wch: 12 }, // Pendiente (131 a 150)
        { wch: 15 }  // Estado de la Nota (151 a 171)
    ];

    wb.SheetNames.push("Cruce");
    wb.Sheets["Cruce"] = ws;

    XLSX.writeFile(wb, "cruce_pre_aprobado.xlsx");
};
</script>
<!-- Incluye la librería jsPDF desde CDN -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
<script>
document.getElementById('btnPDF').onclick = function() {
    // Usa los datos reales de datos_cruce
    var forma_pago    = datos_cruce.forpago_descrip || '';
    var monto_pago    = datos_cruce.pago_monto     || '';
    var fecha_pago    = datos_cruce.pago_fecha     || '';
    var titular_pago  = datos_cruce.pago_titular   || '';
    var referencia_pago = datos_cruce.pago_ref     || '';
    var titulo = forma_pago + " | " + monto_pago + " | " + fecha_pago + " | " + titular_pago + " | " + referencia_pago;

    // Encabezados de la tabla
    var encabezados = [
        "Nombre del Cliente",
        "Factura",
        "Monto ",
        "Abono ",
        "Pendiente",
        "Estado de la Nota"
    ];

    // Inicializa jsPDF
    const { jsPDF } = window.jspdf;
    var doc = new jsPDF();


    var startY = 40;
    const text = "CRUCE - PAGOS - NOTAS";
    const textWidth = doc.getTextWidth(text);
    const centerX = 15 + (180 - textWidth) / 2;
    doc.text(text, centerX, startY + 7);
    
    // Título principal
    doc.setFontSize(14);
    doc.text("DATOS DEL PAGO", 15, 20);

    // Título con datos del pago
    doc.setFontSize(12);
    doc.text(titulo, 15, 30);

    // Línea en blanco
    //var startY = 40;

    // Encabezados de la tabla con fondo amarillo
    doc.setFillColor(255, 255, 0); // amarillo
    doc.rect(15, startY, 180, 10, 'F');

    doc.setFontSize(8); // Letra más pequeña para el encabezado

    // Definir posiciones de columnas para los datos
var anchoCliente = 35;
var anchoRestante = 180 - anchoCliente;
var anchoCol = anchoRestante / 5; // 29

// Posiciones X de cada columna
var colPositions = [
    15, // Nombre del Cliente
    15 + anchoCliente, // Factura
    15 + anchoCliente + anchoCol, // Monto Factura
    15 + anchoCliente + anchoCol * 2, // Abono a la Nota
    15 + anchoCliente + anchoCol * 3, // Monto Pendiente
    15 + anchoCliente + anchoCol * 4  // Estado de la Nota
];

    // Imprime encabezados
    for (var i = 0; i < encabezados.length; i++) {
        doc.text(encabezados[i], colPositions[i] + 2, startY + 7.5); // +2 para separar del borde
    }

    // Imprime filas de datos
    var filaY = startY + 15;
    notas.forEach(function(nota) {
        var nombreCliente = String(nota.clien_tipcli) + "-" + String(nota.clien_numiden) + " | " + String(nota.clien_nombre1).substring(0, 48);
        var factura = String(nota.compra_num);
        var montoFactura = (nota.compra_condicion == 0) ? nota.compra_monto : nota.compra_monto_credito;
        var abono = String(nota.crudeta_monto);
        var pendiente = "0";
        var estado = "Pendiente";

        doc.text(nombreCliente, colPositions[0] + 2, filaY);
        doc.text(factura, colPositions[1] + 2, filaY);
        doc.text(String(montoFactura), colPositions[2] + anchoCol - 2, filaY, { align: "right" });
        doc.text(abono, colPositions[3] + anchoCol - 2, filaY, { align: "right" });
        doc.text(pendiente, colPositions[4] + anchoCol - 2, filaY, { align: "right" });
        doc.text(estado, colPositions[5] + 2, filaY);

        filaY += 8;
});

    // Guarda el PDF
    doc.save("cruce_pre_aprobado.pdf");
};
</script>
<script>
document.getElementById('btnPreviewPDF').onclick = function() {

	var v_ide = <?php echo $ide; ?>;
	$.post('prc-mcruce-lista_detalle_json', 'ide=' + v_ide, function(response) {
		var freshNotas;
		try {
			freshNotas = JSON.parse(response);
		} catch (e) {
			alerta('.msj', 'danger', 'Error al procesar la respuesta del servidor. No es un JSON válido. Revise la consola del navegador para más detalles.');
			console.error("La respuesta del servidor no es JSON. Probablemente es un error de PHP. Respuesta recibida:");
			console.error(response);
			return; // Detener la ejecución
		}
		notas = freshNotas; // Actualizamos la variable global de notas

		var forma_pago = datos_cruce.forpago_descrip || '';
		var monto_pago = datos_cruce.pago_monto || '';
		var fecha_pago = datos_cruce.pago_fecha || '';
		var titular_pago = datos_cruce.pago_titular || '';
		var referencia_pago = datos_cruce.pago_ref || '';
		var titulo = forma_pago + " | " + monto_pago + " | " + fecha_pago + " | " + titular_pago + " | " + referencia_pago;

		var encabezados = [
			"Nombre del Cliente",
			"Factura",
			"Monto ",
			"Abono ",
			"Pendiente",
			"Estado de la Nota"
		];

		const { jsPDF } = window.jspdf;
		var doc = new jsPDF();

		doc.setFontSize(14);
		doc.text("DATOS DEL PAGO", 15, 20);
		doc.setFontSize(12);
		doc.text(titulo, 15, 30);

		var startY = 40;
		doc.setFillColor(255, 255, 0);
		doc.rect(15, startY, 180, 10, 'F');
		doc.setFontSize(8);

		// Definir posiciones de columnas según el rango solicitado
		var colPositions = [
			15, // Nombre del Cliente (15 a 70)
			91, // Factura (71 a 90)
			110, // Monto (91 a 109)
			130, // Abono (110 a 130)
			151, // Pendiente (131 a 150)
			171 // Estado de la Nota (151 a 171)
		];

		// Imprime encabezados
		for (var i = 0; i < encabezados.length; i++) {
			doc.text(encabezados[i], colPositions[i], startY + 7.5);
		}

		// Imprime filas de datos
		var filaY = startY + 15;
		notas.forEach(function(nota) {
			var nombreCliente = String(nota.clien_tipcli) + "-" + String(nota.clien_numiden) + " | " + String(nota.clien_nombre1).substring(0, 30);
			var factura = String(nota.compra_num);
			var montoFactura = (nota.compra_condicion == 0) ? nota.compra_monto : nota.compra_monto_credito;
			var abono = String(nota.crudeta_monto);
			var pendiente = "0";
			var estado = "Pendiente";

			doc.text(nombreCliente, colPositions[0], filaY);
			doc.text(factura, colPositions[1], filaY);
			doc.text(String(montoFactura), colPositions[2] + 7, filaY, { align: "right" }); // ancho aprox 18
			doc.text(abono, colPositions[3] + 10, filaY, { align: "right" }); // ancho aprox 20
			doc.text(pendiente, colPositions[4] + 14, filaY, { align: "right" }); // ancho aprox 19
			doc.text(estado, colPositions[5] + 5, filaY);

			filaY += 8;
		});

		// Preview en nueva ventana
		window.open(doc.output('bloburl'), '_blank');
	}).fail(function(jqXHR, textStatus, errorThrown) {
		alerta('.msj', 'danger', 'Error en la solicitud AJAX: ' + textStatus + ' - ' + errorThrown);
	});
};
</script>