<?php require '../../../cfg/base.php';
$rowc = $mcliente->poride($clien_ide);
$row = $mrequisicion->listaporclienteestatus($clien_ide,$_SESSION['s_usua_tienda'],1); 
if(count($row)>0):?>
	<table width="100%">
		<tr style="height:30px;">
			<th class="active text-right">RIF o Cédula:</th>
			<td><?php echo $rowc[0]->clien_tipcli.'-'.$rowc[0]->clien_numiden ?></td>
			<th class="active text-right">Razón Social o Nombre:</th>
			<td><?php echo $rowc[0]->clien_nombre1.' '.$rowc[0]->clien_nombre2.' '.$rowc[0]->clien_apelli1.' '.$rowc[0]->clien_apelli2 ?></td>
		</tr>
	</table>
	<div class="table-responsive">
		<table class="table3 table-hover table-bordered" width="100%">
			<thead>
				<tr>
					<th>Id.</th>
					<th>Vendedor</th>
					<th>Monto Requisición</th>
					<th>Monto Ordenes</th>
					<th>Monto Entregado</th>
					<th>Fecha Requisición</th>
					<th>Estatus</th>
					<th>Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r):
					if ($r->req_monto==$r->monto_ordenado) { 
						$color = "#D9EDF7"; 
						$mensaesta = "Completada, Cerrada";
					} elseif ($r->monto_ordenado>0 && $r->req_monto<>$r->monto_ordenado) { 
						$color = "#FFFF80"; 
						$mensaesta = "Por completar, Cerrada";
					}
				?>
					<tr bgcolor="<?php echo $color; ?>">
						<td align="left">  <?php echo $r->req_ide ?></td>
						<td align="center"><?php echo $r->vende_razonsocial ?></td>
						<td align="center"><?php echo number_format($r->req_monto,2,",",".") ?></td>	
						<td align="center"><?php echo number_format($r->monto_ordenado,2,",",".") ?></td>	
						<td align="center"><?php echo number_format(0,2,",",".") ?></td>
						<td align="center"><?php echo $r->req_fecha ?></td>
						<td align="center"><?php echo $mensaesta ?></td>
						<td align="center">
							<div class="btn-group">
								<button class="btn btn-info btn-xs" title="Ver Detalles" onclick="modal('vst-requisicion-verdetalleshistorial','ide=<?php echo $r->req_ide ?>&clien_ide=<?php echo $clien_ide ?>')">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</td>
					</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
	</div>

<?php else: ?>
	<div class="alert alert-info">No hay registros para mostrar.</div>
<?php endif; ?>	
<script>
	$(function(){
		$('.table3').dataTable();
	})
</script>