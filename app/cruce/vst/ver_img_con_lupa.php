<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Imagen con lupa</title>
    <style>
        .img-container {
            position: relative;
        }
        .magnifier {
            position: absolute;
            border: 3px solid #fff;
            border-radius: 50%;
            cursor: none;
            width: 100px;
            height: 100px;
            /* Para agregar sombra a la lupa */
            box-shadow: 0 0 8px rgba(0,0,0,0.8);
        }
    </style>
</head>
<body>
    <div class="img-container">
        <img id="myimage" src="tu-imagen.png" alt="Imagen">
        <div id="magnifier" class="magnifier"></div>
    </div>

    <script>
        const img = document.getElementById("myimage");
        const magnifier = document.getElementById("magnifier");
        
        img.addEventListener("mousemove", function(event) {
            magnify(event);
        });

        function magnify(e) {
            const rect = img.getBoundingClientRect();
            const x = e.clientX - rect.left;
            const y = e.clientY - rect.top;
            magnifier.style.left = `${x - magnifier.offsetWidth / 2}px`;
            magnifier.style.top = `${y - magnifier.offsetHeight / 2}px`;
            magnifier.style.backgroundImage = `url(${img.src})`;
            magnifier.style.backgroundRepeat = "no-repeat";
            magnifier.style.backgroundSize = `${img.width * 2}px ${img.height * 2}px`;
            magnifier.style.backgroundPosition = `-${x * 2 - magnifier.offsetWidth / 2}px -${y * 2 - magnifier.offsetHeight / 2}px`;
        }
    </script>
</body>
</html>
