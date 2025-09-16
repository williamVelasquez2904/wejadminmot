<?php
require '../../../cfg/base.php';

$ide = $_POST['ide'];
if(isset($_FILES['pdf_file']) && $_FILES['pdf_file']['error'] == 0) {
    $fileName = uniqid('cruce_') . '.pdf';
    $uploadDir = '../../../img/cruces/';
    if(!is_dir($uploadDir)) mkdir($uploadDir, 0777, true);
    $filePath = $uploadDir . $fileName;
    if(move_uploaded_file($_FILES['pdf_file']['tmp_name'], $filePath)) {
        $mcruce->upd_est_encab(1);
        echo json_encode(['success' => true]);
    } else {
        echo json_encode(['success' => false, 'message' => 'No se pudo mover el archivo.']);
    }
} else {
    echo json_encode(['success' => false, 'message' => 'No se recibió el archivo PDF.']);
}
?>