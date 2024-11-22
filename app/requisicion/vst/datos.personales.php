<?php require '../../../cfg/base.php'; 
$row = $mcliente->poride($clien_ide);
$rowv = $mvendedor->poride($row[0]->clien_vendedor);
$rowz = $mzona->poride($row[0]->clien_zona);
$row_fich = $mpermfich->poride(1);
?>
<div class="">
	<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Datos del Cliente</label>
</div>
<div class="col-sm-12 col-xs-12">
	<div class="table1-responsive">
		<table class="table1 table-bordered" width="100%">
			<tr style="height:30px;">
				<th class="active text-right">RIF o Cédula:</th>
				<td><?php echo $row[0]->clien_tipcli.'-'.$row[0]->clien_numiden ?></td>
				<th class="active text-right">Razón Social o Nombre:</th>
				<td><?php echo $row[0]->clien_nombre1.' '.$row[0]->clien_nombre2.' '.$row[0]->clien_apelli1.' '.$row[0]->clien_apelli2 ?></td>
			</tr>
			<tr style="height:30px;">
				<th class="active text-right">Fecha de Nacimiento:</th>
				<td><?php echo date('d-m-Y',strtotime($row[0]->clien_fecnaci)); ?> (<?php echo $ccliente->edad($row[0]->clien_fecnaci); ?>)</td>
				<th class="active text-right">Teléfono Móvil:</th>
				<td><?php echo $row[0]->clien_telmovi ?></td>
			</tr>
			<tr style="height:30px;">
				<th class="active text-right">Dirección de Habitación:</th>
				<td colspan="3"><?php echo $row[0]->clien_direcci ?></td>
			</tr>
			<tr style="height:30px;">
				<th class="active text-right">Correo Electronico:</th>
				<td ><?php echo $row[0]->clien_correo; ?></td>
				<th class="active text-right">Contribuyente Especial:</th>
				<td ><?php if ($row[0]->clien_contriespec==0) echo 'NO'; else echo 'SI'; ?></td>
			</tr>
			<tr style="height:30px;">
				<th class="active text-right">Vendedor:</th>
				<td><?php echo $rowv[0]->vende_razonsocial ?></td>
				<th class="active text-right">Zona:</th>
				<td><?php echo $rowz[0]->zona_descrip ?></td>
			</tr>
		</table>
	</div>
	<?php if (strlen($row[0]->clien_ubimap)>10) { ?>
	<div class="col-sm-12 center">
	    <iframe src="<?php echo $row[0]->clien_ubimap ?>" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
	</div>
	<?php } ?>
</div>
<div class="clearfix"></div>
<div class="space-10"></div>