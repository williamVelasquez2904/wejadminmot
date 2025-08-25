<?php require '../../../cfg/base.php'; ?> 
<?php 
$row = $mcruce->lista_encab() ;
?>
<?php if(count($row)>0): ?>
	<div class="table-responsive">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th>Id- 19Feb2025 </th>
					<th>Monto</th>
					<th>Fecha</th>
					<th>Tipo</th>
					<th>Ttular</th>
					<th>Referencia</th>
					<th>Archivo</th>
					<th>Estatus</th>
					<th>Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($row as $r): 
					$disup="disabled"; //Deshabilitar update
					$disde="disabled"; //Deshabilitar delete
					$disce="disabled"; //Deshabilitar cerrar
					$disre="disabled"; //Deshabilitar reopen
					if ($r->cruce_encab_status=="0") { 
						$estatus="ABIERTO"; 
						$disup="";
						$disde="";
						$disce="";
					} elseif ($r->cruce_encab_status=="1") { 
						$estatus="CERRADO"; 
						$disre="";
					} elseif ($r->cruce_encab_status=="2") { 
						$estatus="TERMINADO"; 
					} else { 
						$estatus="NO DEFINIDO"; 
					}
					?>
					<tr>
						<?php  
						$a= 0;
						$a = $r->cruce_encab_tipo;?>
						<td align="center"><?php echo $r->cruce_encab_ide ?></td>
						<td><?php echo $r->cruce_encab_monto ?></td>
						<td><?php echo $r->pago_fecha ?></td>
<!-- 						 											($a > $b ? 'más grande' : 'más pequeño'); -->
						<td><?php echo $r->cruce_encab_tipo ." - ". ($a == 0 ? 'Cruce' : 'DEVOLUCION') ?></td>
						<td><?php echo $r->pago_titular ?></td>
						<td><?php echo $r->pago_ref ?></td>
						<td>
							<div class="btn-group">
								<button class="btn btn-success btn-xs" title="Ver imágen" onclick="modal('vst-cruce-ver_img_cruce',
								'encab_ide=<?php echo $r->cruce_encab_ide ?> ?>')">
									<i class="fa fa-edit"></i>
								</button>
							</div>
							<?php echo $r->cruce_encab_img ?>
						</td>
						<td><?php echo $r->cruce_encab_status."-".$estatus ?></td>
						<td>
							<div class="btn-group">
								<button class="btn btn-success btn-xs" title="Actualizar" onclick="modal('vst-pago-update','ide=<?php echo $r->banco_ide ?>')">
									<i class="fa fa-edit"></i>
								</button>
								<button class="btn btn-success btn-xs" title="Detalle del cruce" onclick="modal('vst-cruce-insert_detalle','ide=<?php echo $r->cruce_encab_ide ?>')">
									<i class="fa fa-edit"></i>
								</button>								
								<button class="btn btn-danger btn-xs" title="Borrar" onclick="modal('vst-pago-delete','ide=<?php echo $r->banco_ide ?>')">
									<i class="fa fa-trash"></i>
								</button>
								<?php if ($r->cruce_encab_status=="0" || $r->cruce_encab_status=="1") { ?>
									<button class="btn btn-white btn-xs" disabled></button>
									<?php if ($r->cruce_encab_status=="0") { ?>
										<button class="btn btn-warning btn-xs" title="Cerrar" onclick="reabrircerrar(<?php echo $r->cruce_encab_ide ?>,1)" <?php echo $disce ?>>
										<i class="fa fa-lock"></i>
										</button>
									<?php } ?>
									<?php if ($r->cruce_encab_status=="1") { ?>
										<button class="btn btn-purple btn-xs" title="Reabrir" onclick="reabrircerrar(<?php echo $r->cruce_encab_ide ?>,0)" <?php echo $disre ?>>
											<i class="fa fa-unlock"></i>
										</button>
									<?php } ?>
								<?php } ?>

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

<!-- <script>
	$(function(){
		$('.table').dataTable();
	})
</script> -->

<script>
	$(function(){
		$('.table').dataTable();
	});


	function reabrircerrar(ide,sta){
		if (sta==0) { var menacc="REABRIR"; }
		else { var menacc="CERRAR"; }
		if (confirm("¿Desea realmente "+menacc+" el cruce con ID: "+ide+"?")==true){
			$.post('prc-mcruce-reabrircerrar','ide='+ide+'&sta='+sta,function(data){
				if(data==1) {
					load('vst-cruce-lista','','.lista');
				} else {
					alert(data);
				}
			})
		}
	};
</script>