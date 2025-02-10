
<?php require '../../../cfg/base.php'; ?>

<?php //  $cusuarios->redirectLogin(); ?>
<?php // $rowt=$mtienda->poride($_SESSION['s_usua_tienda']); ?>
<?php
/*
	$sql = "SELECT * FROM vwCompania WHERE  CoCia=1";
	$row = sqlsrv_query($con,$sql);
	$r = sqlsrv_fetch_array( $row, SQLSRV_FETCH_ASSOC);
	*/
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>SimplexUtil</title>
		<meta name="description" content="overview &amp; stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<?php require '../../../css/ace.php'; ?>
		<?php require '../../../js/ace.php'; ?>	
	</head>

	<body>
		<div class="bootbox modal fade in" role="dialog" id="modal"  tabindex="-1" aria-hidden="false">
			<div class="modal-dialog">
				<div class="modal-content"></div>
			</div>
		</div>	
		<div id="navbar" class="navbar navbar-default">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>
			
			<div class="col-sm-12" style="background:#004">
				<div class="clearfix"></div>
				<div class="space-4"></div>
				<img src="img/logo.png" align="" class="pull-left" height="125 px">	
				<h1 class="pull-left" style="padding-left:30px">
					<span class="blue"><?php echo "SIMPLEXUTIL" ?></span>
					<span class="blue"><?php echo "MODULO UTILITARIO" ?></span>
					<div class="space-12"></div>
					<span class="white"><?php echo $r["Nbcia"] ?></span>
					<span class="white"></span>
				</h1>
				<img src="img/logo_cliente.jpg" align="" class="pull-right" height="125 px">	
				<div class="clearfix"></div>
				<div class="space-4"></div>
			</div>
		</div>
		<div class="" align="center"><br><br><br><h2>

<?php 
			$namefile1 = $_POST["nomarc"]; 
			if ($namefile1=="logo_cliente") { $archi="LOGO"; }
			elseif ($namefile1=="logo_cliente_para_pdf") { $archi="LOGO para Libro de Compras"; }
			elseif ($namefile1=="firma_sello_para_pdf") { $archi="Firma y Sello para Comprobante de Retención"; }
			$tamaño_max="1024000"; // Tamaño maximo permitido en este caso 1 mega
			$tamano1 = $_FILES['file1']['size']; // Leemos el tamaño del fichero 
			$destino = '../../../img/pagos' ; // Carpeta donde se guardara
			if( $tamano1 < $tamaño_max){ // Comprobamos el tamaño  
				$sep1=explode('image/',$_FILES["file1"]["type"]); // Separamos image/ 
				$tipo1=$sep1[1]; // Optenemos el tipo de imagen que es 
				if($tipo1 == "jpg" || $tipo1 == "jpeg"){ // Si el tipo de imagen a subir es el mismo de los permitidos, seguimos. Puedes agregar mas tipos de imagen 
					move_uploaded_file ( $_FILES [ 'file1' ][ 'tmp_name' ], $destino . '/'.$namefile1.'.jpg');  // Subimos el archivo 
					$res=1; 
					echo '<font color="#006400">La imagen '.$archi.' fue cargada con éxito.</font>';
				} 
				else {
					echo '<font color="#DF0101">No se pudo cargar '.$archi.' porque NO esta en formato JPG.</font>'; 
					$res=2;// Si no es el tipo permitido lo decimos 
				}
			} else {
				echo '<font color="#DF0101">'.$archi.' supera el peso permitido.</font>'; 
				$res=3;// Si supera el tamaño de permitido lo decimos 
			}

?>
		</h2></div>
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
