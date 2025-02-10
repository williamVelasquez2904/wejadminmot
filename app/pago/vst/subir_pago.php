<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Subir Archivo PNG</title>
</head>
<body>
    <form action="app/pago/vst/upload.php" method="post" enctype="multipart/form-data">
        Selecciona un archivo PNG:
        <input type="file" name="fileToUpload" accept=".png">
        <input type="submit" value="Subir Archivo" name="submit">
    </form>
</body>
</html>