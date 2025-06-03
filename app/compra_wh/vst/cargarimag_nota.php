<?php require '../../../cfg/base.php'; ?> 
<?php //  $cusuarios->redirectLogin(); ?>
<?php // $rowt=$mtienda->poride($_SESSION['s_usua_tienda']); ?>
<?php
	$res=0;
?> 
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>Cargar Imágen </title>
		<meta name="description" content="overview &amp; stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<?php require '../../../css/ace.php'; ?>
		<?php require '../../../js/ace.php'; ?>	
	</head>

	<body>
	<div class="" align="center"><br><br><br><h2>

<?php
			//var_dump($_POST)
			$cant = strlen($_POST["nomarc"]);
			echo "<br> Tamaño: ".$cant;

			if (strlen($_POST["nomarc"])==0)
				echo "<br> Nombre de archivo vacio <br>";

			$namefile1 = $_POST["nomarc"]; 
			var_dump($_POST["nomarc"]);
			if ($namefile1=="logo_cliente") { $archi="LOGO"; }
			elseif ($namefile1=="logo_cliente_para_pdf") { $archi="LOGO para Libro de Compras"; }
			elseif ($namefile1=="firma_sello_para_pdf") { $archi="Firma y Sello para Comprobante de Retención"; }
			$tamaño_max="1024000"; // Tamaño maximo permitido en este caso 1 mega
			$tamano1 = $_FILES['file1']['size']; // Leemos el tamaño del fichero 
			echo "<br> Tamaño del archivo: <br>";
			echo $tamano1;
			echo "<br> <br>";
			$destino = '../../../img/notas' ; // Carpeta donde se guardara
			if( $tamano1>0){

				if( $tamano1 < $tamaño_max){ // Comprobamos el tamaño  
					$sep1=explode('image/',$_FILES["file1"]["type"]); // Separamos image/ 
					$tipo1=$sep1[1]; // Obtenemos el tipo de imagen que es 
					if($tipo1 == "jpg" || $tipo1 == "jpeg" || $tipo1 == "png"){ 
						move_uploaded_file ( $_FILES [ 'file1' ][ 'tmp_name' ], $destino . '/'.$namefile1);
						$res=1; 
						echo '<br><font color="#006400">[cargarimag_nota.php]. 12-05-2025. La imágen fue cargada con éxito.</font><br>';
						echo "<br>Ide de la nota: ".$ide."<br>";
						$mcompra_wh->update_img();
					} 
					else {
						echo '<font color="#DF0101">No se pudo cargar porque NO esta en formato correcto.</font>'; 
						$res=2;// Si no es el tipo permitido lo decimos 
					}
				} else {
					echo '<font color="#DF0101">supera el peso permitido.</font>'; 
					$res=3;// Si supera el tamaño de permitido lo decimos 
				}
			} // fin de si tamaño es mayo a cero	

?>
		</h2>
	</div>
	<?php if ($res==1) { ?>
			<a href="inicio">
				<div class="form-actions clearfix">
					<button class="btn btn-success btn-sm pull-right"><span class="i fa fa-check"></span> Finalizar</button>
				</div>
			</a>
	<?php } else { ?>
			<a href="javascript:history.go(-1);">
				<div class="form-actions clearfix">
					<button class="btn btn-warning btn-sm pull-right"><span class="i fa fa-arrow-left"></span> Volver para Corregir</button>
				</div>
			</a>
	<?php } ?>
	</body>
</html>