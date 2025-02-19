<?php require '../../../cfg/base.php'; ?>
<?php 

$row = $mcruce->lista_encab_pornota($compra_ide) ;
/*$titulo_modal='Ceuce:'.$contrato_ide."   - Modalidad: ".'<b>'.$modalidad_text.'</b>';*/

$titulo_modal="18-02-2025. Cruce";

echo $fn->modalWidth('90%');
echo $fn->modalHeader($titulo_modal);
?>
<?php if(count($row)>0): ?>
	<div class="table-responsive">
		<table class="table11 table-hover table-bordered " width="100%">
			<thead>
				<tr>
					<th width="5%">Id Cruce</th>
					<th width="5%">Monto</th>
					<th width="5%">Fecha</th>
					<th width="5%">Tipo</th>
					<th width="5%">Ttular</th>
					<th width="10%">Referencia...</th>
					<th width="20%">Archivo</th>
					<th width="5%">Estatus</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): ?>
					<tr>
						<?php  
						$a= 0;
						//$a = $r->cruce_encab_tipo;?>
						<td align="center" width="5%"><?php echo $r->crudeta_encab_ide ?></td>
						<td align="right"  width="5%"><?php echo $r->crudeta_monto ?></td>
						<td align="center" width="5%"><?php echo $r->cruce_encab_fec ?></td>
						<td align="center" width="5%"><?php echo $r->cruce_encab_tipo ." - ". ($a == 0 ? 'Cruce' : 'DEVOLUCION') ?></td>
						<td><?php echo $r->pago_titular ?></td>
						<td align="left" width="10%"><?php echo $r->pago_ref ?></td>
						<td>
							<div class="btn-group">
								<button class="btn btn-success btn-xs" title="Ver imágen" onclick="modal('vst-cruce-ver_img_cruce',
								'encab_ide=<?php echo $r->cruce_encab_ide ?> ?>')">
									<i class="fa fa-edit"></i>
								</button>
							</div>
							<?php echo $r->cruce_encab_img ?>
						</td>
						<td align="center" width="5%"><?php echo $r->cruce_encab_status ?></td>
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
		$('.table11').dataTable();
	})
</script>
<?php echo $fn->modalFooter(2) ?>