<?php //require 'cfg/conexion.php'; 
$params = array();
$options = array( "Scrollable" => SQLSRV_CURSOR_KEYSET );
$sql = "SELECT * FROM [dbo].[tbl_dashboard_procesos] where dash_visible=1 order by dash_orden asc"; 
$row = sqlsrv_query($con,$sql); 
?>

<div class="center">
	<div class="clearfix"></div>
	<div class="space-2"></div>
	<div class="col-sm-2 col-xs-12">
		<?php if ($s_tius_ide==1 || $s_tius_ide==2 || $s_tius_ide==3) { ?>
			<div class="sidebar display" id="sidebar" align="left">
				<script type="text/javascript">
					try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
				</script>

				<div class="sidebar-collapse" id="sidebar-collapse">
					<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
				</div>
				<ul class="nav nav-list">
				<?php
					$color = "";
					$icon1 = "";
					$icon2 = "";
					$descr = "";
					$compl = "";
					$title = "";
					while( $d = sqlsrv_fetch_array( $row, SQLSRV_FETCH_ASSOC) ) { 
						$sqlest = "SELECT TOP(1) * FROM [dbo].[tbl_dashboard_status] where dast_dash_ide=".$d["dash_ide"]." order by dast_fecha desc"; 
						$rowest = sqlsrv_query($con,$sqlest, $params, $options);
						$row_count = sqlsrv_num_rows( $rowest );
						if ($row_count>0) {
							$e = sqlsrv_fetch_array( $rowest, SQLSRV_FETCH_ASSOC);
							$icon1 = $d["dash_icono"];
							$descr = $d["dash_descrip"];
							$title = $d["dash_mensa"];
							$animacion = "";
							if (date_format($e["dast_fecha"],'Y-m-d')==date('Y-m-d')) {
								//$color = "green";
								$color = "#8BA832";
								$icon2 = "check";
								$compl = "";
								//$animacion = "icon-animated-vertical";
							} else {
								$fecha = "Nunca";
								if ($e["dast_fecha"]) { $fecha=date_format($e["dast_fecha"],'d-m-Y'); }
								$color = "red";
								$icon2 = "ban-circle";
								$compl = '<div class="badge badge-danger">&nbsp;'.$fecha.'&nbsp;</div>';
								$animacion = "icon-animated-bell";
								$title = $title." | Ult. Act.: ".$fecha;
							}
						}
				?>
				<li>
					<a href="#" title="<?php echo $title; ?>">
						<i class="icon-<?php echo $icon1; ?> <?php echo $animacion ?>" style="color:<?php echo $color; ?>"></i>
						<span class="menu-text">
							<?php echo $descr; ?> <i class="icon-<?php echo $icon2; ?>" style="color:<?php echo $color; ?>"></i>
						</span>
					</a>
				</li>
				<?php } ?>
				<?php
					$disdd = round(disk_free_space("C:") / 1024 / 1024 / 1024);
					$totdd = round(disk_total_space("C:") / 1024 / 1024 / 1024);
					$usadd = $totdd-$disdd;
					$porusa = round((($usadd)*100)/$totdd,2);
					$title = "$porusa% del espacio del Disco Duro del Servidor esta en uso: $usadd GB de $totdd GB";
					$descr = "Uso D.D.: $porusa%";
					$color = "#8BA832";
					$animacion = "";
					if ($porusa>=50) { 
						$color = "orange"; 
						$animacion = "icon-animated-bell";
					}
					elseif ( $porusa>=75 ) { 
						$color = "red"; 
						$animacion = "icon-animated-bell";
					}
				?>
				<li>
					<a href="#" title="<?php echo $title; ?>">
						<i class="icon-hdd <?php echo $animacion ?>" style="color:<?php echo $color; ?>"></i>
						<span class="menu-text">
							<?php echo $descr; ?> <i class="icon-dashboard" style="color:<?php echo $color; ?>"></i>
						</span>
					</a>
				</li>
				</ul><!-- /.nav-list -->
				

				<script type="text/javascript">
					try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
				</script>
			</div>
		<?php } ?>
	</div>
	<div class="col-sm-8 col-xs-12">
		<div class="col-sm-12 col-xs-12">
			<a href="http://www.pcintegrum.com/simplexutil/" target="_black" title="Sitio Oficial SimplexUtil">
				<img src="img/LogoSU_1_FT.png" height="250 px">	
			</a>
		</div>
		<div class="col-sm-12 col-xs-12">
			<font class="center" size="6">
				<span class="blue"><?php echo "Es una herramienta del abanico de soluciones empresariales que ofrece </span><span class='orange'><b><a href='http://www.pcintegrum.com' target='_black' title='Sitio Oficial PC-INTEGRUM' class='orange'>PC-INTEGRUM</a> </b>" ?></span>
				<span class="white"></span>
			</font>	
		</div>
	</div>
	<div class="col-sm-2 col-xs-12"></div>
	<div class="clearfix"></div>
</div>