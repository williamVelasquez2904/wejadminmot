<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
            overflow: auto; /* Añadir desplazamiento */
            position: relative;
            max-width: 50%; /* Limitar el ancho a la mitad derecha */
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
            max-width: 45%; /* Limitar el ancho a la mitad izquierda */
        }
    </style>
</head>
<body>
    <div id="controls">
        <h2>Selecciona una imagen para previsualizar y acercar</h2>
        <input type="file" id="file1" accept="image/*">
        <br><br>
        <button id="zoomButton" style="display: none;">Zoom</button>
        <button id="resetButton" style="display: none;">Restablecer</button>
    </div>
    <div id="imagePreviewContainer">
        <img id="imagePreview" src="#" alt="Previsualización de Imagen">
    </div>

    <script>
        const file1 = document.getElementById('file1');
        const imagePreview = document.getElementById('imagePreview');
        const zoomButton = document.getElementById('zoomButton');
        const resetButton = document.getElementById('resetButton');
        const imagePreviewContainer = document.getElementById('imagePreviewContainer');
        let zoomed = false;

        file1.addEventListener('change', function(event) {
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
</body>
</html>