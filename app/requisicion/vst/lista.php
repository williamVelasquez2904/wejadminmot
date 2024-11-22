<?php require '../../../cfg/base.php'; 
extract($_POST);
if (!isset($_POST['clien_ide']))
{ 
	//echo "<br>Paso 1 <br>";
	$row = $mrequisicion->lista();
}

if (isset($_POST['clien_ide'])){
	//echo "<br>Paso 2 <br>";
	$row = $mrequisicion->listaporclienteestatus($clien_ide,$_SESSION['s_usua_tienda'],0);
}
//$row = $mrequisicion->listaporclienteestatus($clien_ide,$_SESSION['s_usua_tienda'],0);
?>
<?php if(count($row)>0):?>
	<div class="table-responsive">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th>Id.</th>
					<th>Vendedor</th>
					<th>Monto Requisición</th>
					<th>Monto Ordenes</th>
					<th>Monto Pendiente</th>
					<th>Fecha Requisición</th>
					<th>Estatus</th>
					<th>Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r):
					if ($r->req_monto==$r->monto_ordenado) { 
						$color = "#D9EDF7"; 
						$mensaesta = "Completada";
					} elseif ($r->monto_ordenado>0 && $r->req_monto<>$r->monto_ordenado) { 
						$color = "#FFFF80"; 
						$mensaesta = "Por completar";
					} else { 
						$color = ""; 
						$mensaesta = "Iniciada";
					}
				?>
					<tr bgcolor="<?php echo $color; ?>">
						<td align="left">  <?php echo $r->req_ide ?></td>
						<td align="center"><?php echo $r->vende_razonsocial ?></td>
						<td align="center"><?php echo number_format($r->req_monto,2,",",".") ?></td>	
						<td align="center"><?php echo number_format($r->monto_ordenado,2,",",".") ?></td>	
						<td align="center"><?php echo number_format(($r->req_monto-$r->monto_ordenado),2,",",".") ?></td>
						<td align="center"><?php echo $r->req_fecha ?></td>
						<td align="center"><?php echo $mensaesta ?></td>
						<td align="center">
							<div class="btn-group"> 
								<button class="btn btn-success btn-xs" title="Actualizar" onclick="modal('vst-requisicion-update','ide=<?php echo $r->req_ide ?>')">
									<i class="fa fa-edit"></i>
								</button>
								<?php if ($r->monto_ordenado==0) { ?>
									<button class="btn btn-danger btn-xs" title="Borrar" onclick="modal('vst-requisicion-delete','ide=<?php echo $r->req_ide ?>')">
										<i class="fa fa-trash"></i>
									</button>
								<?php } ?>
								<button class="btn btn-info btn-xs" title="Ver Detalles" onclick="modal('vst-requisicion-verdetalles','ide=<?php echo $r->req_ide ?>')">
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
<button class="btn btn-info btn-sm" title="Ver Listado de Requisiciones con Estatus Cerrado" onclick="modal('vst-requisicion-verhistorial','clien_ide=<?php echo $clien_ide ?>')">
	<i class="fa fa-search"></i>
	Ver requisiciones cerradas
</button>
<script>
	$(function(){
		$('.table').dataTable();
	})
</script>