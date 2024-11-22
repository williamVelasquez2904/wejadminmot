<?php require '../../../cfg/base.php'; 
$row = $mvendedor->poride($vende_ide);
$row_fich = $mpermfich->poride(5);
?>
<div class="col-sm-12 widget-container-span ui-sortable" id="ficha-<?php echo $row_fich[0]->fich_ide ?>-link">
	<div class="widget-box revival">
		<div class="widget-header widget-hea1der-small header-color-dark">
			<h6 class="bolder"><i class="fa fa-<?php echo $row_fich[0]->fich_icono; ?>"></i> <?php echo $row_fich[0]->fich_descrip; ?></h6>
			<div class="widget-toolbar">
				<a href="#" data-action="reload" onclick="load('<?php echo $row_fich[0]->fich_url ?>','fich_ide=<?php echo $row_fich[0]->fich_ide ?>&vende_ide=<?php echo $vende_ide ?>','#ficha-<?php echo $row_fich[0]->fich_ide ?>');">
					<i class="icon-refresh"></i>
				</a>
				<a href="#" data-action="collapse">
					<i class="icon-chevron-up"></i>
				</a>						
			</div>
		</div>
		<div class="widget-body">
			<div class="widget-main">
				<div class="col-sm-2">
					<span class="profile-picture">
						<img id="avatar" class="editable img-responsive editable-click editable-empty" alt="" src="<?php echo $cvendedor->picture($vende_ide).'?'.rand(1,1000) ?>">
					</span>
				</div>
				<div class="col-sm-10">
					<div class="table-responsive">
						<table class="table table-bordered">
							<tr>
								<th class="active text-right">Cédula o RIF:</th>
								<td><?php echo $row[0]->vende_tipo.'-'.$row[0]->vende_cedrif ?></td>
								<th class="active text-right">Razón Social:</th>
								<td><?php echo $row[0]->vende_razonsocial.', '.$row[0]->vende_alias ?></td>
							</tr>
							<tr>
								<th class="active text-right">Fecha de Registro:</th>
								<td><?php echo date('d-m-Y',strtotime($row[0]->vende_fecreg)); ?> (<?php echo $cvendedor->edad($row[0]->vende_fecreg); ?>)</td>
								<th class="active text-right">Teléfono:</th>
								<td><?php echo $row[0]->vende_telcon ?></td>
							</tr>
							<tr>
								<th class="active text-right">Dirección:</th>
								<td colspan="3"><?php echo $row[0]->vende_direcci ?></td>
							</tr>
							<tr>
								<th class="active text-right">Correo Electronico:</th>
								<td colspan="3"><?php echo $row[0]->vende_correo; ?></td>
							</tr>
							<tr>
								<th class="active text-right">Contribuyente Especial:</th>
								<td colspan="3"><?php if ($row[0]->vende_contriespec==0) echo 'NO'; else echo 'SI'; ?></td>
							</tr>
						</table>
					</div>
					<?php if (strlen($row[0]->vende_ubimap)>10) { ?>
					<div class="col-sm-12 center">
					    <iframe src="<?php echo $row[0]->vende_ubimap ?>" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    				</div>
    				<?php } ?>
					<div class="btn-group pull-right">
						<button type="button" class="btn btn-primary" onclick="load('vst-vendedor-update','vende_ide=<?php echo $row[0]->vende_ide ?>','.perfil')"><i class="fa fa-edit"></i> Editar Datos</button>
						<!--<button type="button" class="btn btn-purple" onclick="load('vst-vendedor-','vende_ide=<?php echo $row[0]->vende_ide ?>','.perfil')"><i class="fa fa-info"></i> Ver Detalles</button>-->
						<button type="button" class="btn btn-danger" onclick="modal('vst-vendedor-delete','vende_ide=<?php echo $row[0]->vende_ide ?>')"><i class="fa fa-trash"></i> Borrar</button>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="space-10"></div>
			</div>
		</div>
	</div>
</div>