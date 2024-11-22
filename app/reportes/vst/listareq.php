<?php require '../../../cfg/base.php'; 
extract($_POST);
$row = $mrequisicion->lista();
?>
<?php if(count($row)>0):?>
	<div class="table-responsive">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th>Id.</th>
					<th>Cliente</th>
					<th>Vendedor</th>
					<th>Monto Req.</th>
					<th>Monto Ord.</th>
					<th>Monto Ent.</th>
					<th>Fecha Requisición</th>
					<th>Estatus</th>
					<th>Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r):
					if ($r->req_monto==$r->monto_ordenado) { 
						$color="#D9EDF7"; 
						$mensaesta = "Completada, ";
					} elseif ($r->monto_ordenado>0 && $r->req_monto<>$r->monto_ordenado) { 
						$color="#FFFF80"; 
						$mensaesta = "Por completar, ";
					} else { 
						$color=""; 
						$mensaesta = "Iniciada, ";
					}
					if ($r->req_status==0) { $mensaesta = $mensaesta.'<font color="green"><b> Abierta </b></font>'; }
					else { $mensaesta = $mensaesta.'<font color="red"><b> Cerrada </b></font>'; }
				?>
					<tr bgcolor="<?php echo $color; ?>">
						<td align="left">  <?php echo $r->req_ide ?></td>
						<td align="center"><?php echo $r->clien_nombre1 ?></td>
						<td align="center"><?php echo $r->vende_razonsocial ?></td>
						<td align="center"><?php echo number_format($r->req_monto,2,",",".") ?></td>	
						<td align="center"><?php echo number_format($r->monto_ordenado,2,",",".") ?></td>	
						<td align="center"><?php echo number_format(0,2,",",".") ?></td>
						<td align="center"><?php echo $r->req_fecha ?></td>
						<td align="center"><?php echo $mensaesta ?></td>
						<td align="center">
							<div class="btn-group">
								<button class="btn btn-info btn-xs" title="Ver Detalles" onclick="modal('vst-reportes-verdetallesreq','ide=<?php echo $r->req_ide ?>')">
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
		$('.table').dataTable();
	})
</script>