<?php require '../../../cfg/base.php'; ?>
		<div class="form-group col-sm-3 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">select.notas.desglose.php Notas</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="nota" name="compra_ide" id="compra_ide" >
					<option value=""></option>
					<?php foreach($mcompra_wh->pordesglose($_SESSION['desglose_ide']) as $c): ?>
						<option value="<?php echo $c->compra_ide ?>">
							<?php 
							echo $c->compra_num.' - '. $c->compra_porc_desc.' - '. $c->compra_monto.' - '. $c->clien_nombre1; 
							?>
						</option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>		