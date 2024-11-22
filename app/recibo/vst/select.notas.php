<?php require '../../../cfg/base.php'; ?>
		<div class="form-group col-sm-3 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">select.notas.php Notas</label>
			<div class="col-sm-12 col-xs-12">
					<select class="form-control chosen" title="nota" name="venta_ide" id="venta_ide">
					<option value="">Seleccione</option>
					<?php foreach($mventa->porcliente($clien_ide) as $c): ?>
						<option value="<?php echo $c->venta_ide ?>">
							<?php 
							echo $c->venta_num.' - '. $c->venta_monto.' - '. $c->venta_monto_credito; 
							?>
							
						</option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>