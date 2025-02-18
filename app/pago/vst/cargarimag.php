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

<!-- 		<div class="bootbox modal fade in" role="dialog" id="modal"  tabindex="-1" aria-hidden="false">
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
				<h1 class="pull-left" style="padding-left:12px">
					<span class="blue"><?php //echo "WEJADMINMOT" ?></span>
					<span class="blue"><?php //echo "MODULO UTILITARIO" ?></span>
					<div class="space-12"></div>
					<span class="white"><?php //echo $r["Nbcia"] ?></span>
					<span class="white"></span>
				</h1>
				<img src="img/logo_cliente.jpg" align="" class="pull-right" height="125 px">	
				<div class="clearfix"></div>
				<div class="space-4"></div>
			</div>
		</div>
 -->
		<div class="" align="center"><br><br><br><h2>

<?php

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
			$destino = '../../../img/pagos' ; // Carpeta donde se guardara
			if( $tamano1>0){

				if( $tamano1 < $tamaño_max){ // Comprobamos el tamaño  
					$sep1=explode('image/',$_FILES["file1"]["type"]); // Separamos image/ 
					$tipo1=$sep1[1]; // Obtenemos el tipo de imagen que es 
					if($tipo1 == "jpg" || $tipo1 == "jpeg" || $tipo1 == "png"){ 

						//move_uploaded_file ( $_FILES [ 'file1' ][ 'tmp_name' ], $destino . '/'.$namefile1.'.jpg');

						//move_uploaded_file ( $_FILES [ 'file1' ][ 'tmp_name' ], $destino . '/'.$namefile1.'.'.$tipo1);
						move_uploaded_file ( $_FILES [ 'file1' ][ 'tmp_name' ], $destino . '/'.$namefile1);

						$res=1; 
						echo '<br><font color="#006400">[cargarimag.php]. 17-02-2025. La imágen fue cargada con éxito.</font><br>';
						$mpago->insert();
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