<?php require '../../../cfg/base.php'; 
extract($_POST);
$row = $mrecibo->recencab_lista();
$mensaesta="";
$nombrecliente="";
$vendedor="";
$monto_contado=0;
$monto_credito=0;

?>
<?php if(count($row)>0):?>
	<div class="table-responsive">
		<!-- <table class="table_lista_venta table-hover table-bordered"> -->
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th>Id</th>
					<th>Num</th>
					<th>Fecha</th>
					<th>Cliente</th>
					<th>Vendedor</th>
					<th>Monto Recibo</th>
					<th>Estatus</th>
					<th>Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r):?>
					<tr>
						
						<td align="left">  <?php echo $r->recencab_ide ?></td>
						<td align="center"><?php echo $r->recencab_num ?></td>
						<td align="center"><?php echo $r->recencab_fec ?></td>
						<td align="center"><?php echo $r->cliente ?></td>	
						<td align="center"><?php echo $r->vendedor ?></td>	
						<td align="center"><?php echo number_format($r->recencab_monto,2,",",".") ?></td>
						<td align="center"><?php echo $mensaesta ?></td>
						<td align="center">
							<div class="btn-group">
								<button class="btn btn-success btn-xs" title="Actualizar" onclick="modal('vst-orden-update','ide=<?php echo $r->orden_ide ?>')">
									<i class="fa fa-edit"></i>
								</button>
								<button class="btn btn-danger btn-xs" title="Borrar" onclick="modal('vst-orden-delete','ide=<?php echo $r->orden_ide ?>')">
									<i class="fa fa-trash"></i>
								</button>
								<button class="btn btn-info btn-xs" title="verdetalles.php Ver Detalles" onclick="modal('vst-recibo-verdetalles','ide=<?php echo $r->recencab_ide ?>&clien_ide=<?php echo $r->recencab_clien_ide ?>')">
									<i class="fa fa-search"></i>
								</button>
								<button class="btn btn-success btn-xs" title="Registrar pago" onclick="modal('vst-recibo-pago','ide=<?php echo $r->recencab_ide ?>')">
									<i class="fa fa-edit"></i>
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