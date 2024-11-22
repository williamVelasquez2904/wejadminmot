<?php require '../../../cfg/base.php'; 
echo $fn->modalWidth('50%');

$row = $mdesglose->lista_clientes($ide);

if(count($row)>0): ?>
	<div class="table-responsive">
		<table class="table_clientes_desglose table-hover table-bordered" width="100%">
			<thead>
				<tr>
<!-- 					<th width="5%">Id</th>
					<th width="5%">Id desglose</th>
					<th width="40%">Descripción desglose</th>
					<th width="40%">Cliente</th>
					<th width="10%">Opciones</th> -->
 					<th >Id</th>
					<th >Id desglose</th>
					<th>Descripción desglose</th>
					<th>Cliente</th>
					<th>Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): 	?>
					<tr>
						<td align="center" width="5%"><?php echo $r->desgcte_ide ?></td>
						<td align="center" width="15%"><?php echo $r->desgcte_desg_ide ?></td>
						<td align="center" width="30%"><?php echo $r->descrip ?></td>
						<td align="center" width="40%"><?php echo $r->cliente ?></td>
						<td width="10%">
							<div class="btn-group">
								<button class="btn btn-danger btn-xs" title="Borrar" onclick="modal('vst-moneda-delete','ide=<?php echo $r->moneda_ide ?>')">
									<i class="fa fa-trash"></i>
								</button>
								<button class="btn btn-info btn-xs" title="vernotas.php - Ver Notas de Entrega para este cliente" onclick="modal('vst-desglose-vernotas','ide=<?php echo $r->desglose_ide ?>&clien_ide=<?php echo $r->clien_ide ?>')">
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
		$('.table_clientes_desglose').dataTable();
	})
</script>