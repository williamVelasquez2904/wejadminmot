<?php require '../../../cfg/base.php'; ?>
		<div class="form-group col-sm-3 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">select.notas.php Notas</label>
			<div class="col-sm-12 col-xs-12">
				<!--<select id="cbxLenguajes" onchange="seleccionarLenguaje();">-->
				<!--<select class="form-control chosen" title="nota" name="compra_ide" id="compra_ide" onchange="CalculaMontoNota();">-->
					<select class="form-control chosen" title="nota" name="compra_ide" id="compra_ide">
					<option value="">Seleccione</option>
					<?php foreach($mcompra_wh->porcliente($clien_ide) as $c): ?>
						<option value="<?php echo $c->compra_ide ?>">
							<?php 
							  /*echo $c->compra_num.' - '. $c->compra_fecha.' - '. $c->compra_monto.' - '. $c->nombre1; */
							echo $c->compra_num.' - '. $c->compra_fecha.' - '. $c->compra_monto; 
							?>
							
						</option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>