<?php require '../../../cfg/base.php'; 
$rowdet = $mrequisicion->listapordetalle($ide);
if(count($rowdet)>0): ?>

	<div class="table-responsive">
		<table class="table2 table-hover table-bordered" width="100%">
			<thead>
				<tr>
					<th>Id 09/11/2024</th>
					<th>Proveedor</th>
					<th>Orden</th>
					<th>Monto</th>
					<th>Fecha Orden</th>
					<th>Fecha Reg. Req.</th>
					<th>Estatus Det.</th>
					<th>Opciones</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($rowdet as $d): 
					if ($d->reqdet_status==0) { $mensaesta="Abierto"; }
					elseif ($d->reqdet_status==1) { $mensaesta="Cerrado"; }
					elseif ($d->reqdet_status==2) { $mensaesta="Orden Cerrada"; }
					?>
					<tr>
						<td align="center">  <?php echo $d->reqdet_ide ?></td>
						<td align="center"><?php echo $d->prove_tipo.'-'.$d->prove_cedrif.' '.$d->prove_razonsocial; ?></td>
						<td align="center"><?php echo $d->reqdet_ord_ide ?></td>	
						<td align="center"><?php echo number_format($d->reqdet_monto,2,",",".") ?></td>	
						<td align="center"><?php echo $d->orden_fecha ?></td>
						<td align="center"><?php echo $d->reqdet_fecha_reg ?></td>
						<td align="center"><?php echo $mensaesta ?></td>
						<td align="center">
							<div class="btn-group">
								<?php if ($d->reqdet_status==0) { ?>
									<button class="btn btn-danger btn-xs" title="Eliminar detalle" onclick="EliDetalle(<?php echo $d->reqdet_ide ?>)">
										<i class="fa fa-trash"></i>
									</button>
									<button class="btn btn-info btn-xs" title="Cerrar detalle" onclick="CerrarAbrirDetalle(<?php echo $d->reqdet_ide ?>,1)">
										<i class="fa fa-unlock"></i> <i class="fa fa-arrow-right"></i> <i class="fa fa-lock"></i>
									</button>
								<?php } elseif($d->reqdet_status==1) { ?>
									<button class="btn btn-info btn-xs" title="Reabrir detalle" onclick="CerrarAbrirDetalle(<?php echo $d->reqdet_ide ?>,0)">
										<i class="fa fa-lock"></i> <i class="fa fa-arrow-right"></i> <i class="fa fa-unlock"></i>
									</button>
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

<script>
	$(function(){
		$('.table2').dataTable();
	});

	function EliDetalle(idedet){
		if (confirm("¿Desea realmente eliminar el Detalle: "+idedet+"?")==true){
			var datosform ='idedet='+idedet;
			$.post('prc-mrequisicion-deletedetalle',datosform,function(data4){
				if(data4==1) {
					load('vst-requisicion-lista','clien_ide=<?php echo $clien_ide ?>','.lista');
					load('vst-requisicion-select.prove','clien_ide=<?php echo $clien_ide ?>&ide=<?php echo $ide; ?>','.selpro');
					load('vst-requisicion-input.monto','ide=<?php echo $ide; ?>&monreq=<?php echo $monreq; ?>','.inpmon');
					load('vst-requisicion-listadetalles','ide=<?php echo $ide; ?>&monreq=<?php echo $monreq; ?>&clien_ide=<?php echo $clien_ide ?>','.listadetalles');
					alert("Detalle eliminado exitosamente.");
				} else {
					alert('Error en la eliminación: '+data4);
				}
			})
		}
	};

	function CerrarAbrirDetalle(idedet,accion){
		var mensa;
		if (accion==0) { 
			mensa1="Reabrir"; 
			mensa2="Reabierto"; 
		} else { 
			mensa1="Cerrar"; 
			mensa2="Cerrado"; 
		}
		 
		if (confirm("¿Desea realmente "+mensa1+" el Detalle: "+idedet+"?")==true){
			var datosform ='idedet='+idedet+'&accion='+accion;
			$.post('prc-mrequisicion-cerrarabrirdetalle',datosform,function(data4){
				if(data4==1) {
					load('vst-requisicion-lista','clien_ide=<?php echo $clien_ide ?>','.lista');
					load('vst-requisicion-listadetalles','ide=<?php echo $ide; ?>&monreq=<?php echo $monreq; ?>&clien_ide=<?php echo $clien_ide ?>','.listadetalles');
					alert("Detalle "+mensa2+" exitosamente.");
				} else {
					alert('Error en la actualización del detalle: '+data4);
				}
			})
		}
	};

</script>