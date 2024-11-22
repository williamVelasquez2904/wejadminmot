<div class="alert alert-info">
	<i class="fa fa-exclamation-triangle fa-2x pull-left red"></i> Por favor rellene el siguiente formulario para distribuir la Compra.
</div>
<form action="" class="op1">

	<fieldset><legend>Datos de la Compra</legend>	
		<div class="form-group col-sm-7 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Orden</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="ide de Orden" name="orden_ide" id="orden_ide" >
					<option value=""></option>
					<?php foreach($morden->lista() as $p): ?>
						<option value="<?php echo $p->orden_ide ?>">
						<?php echo $p->orden_ide.' - '. 
								   $p->prove_razonsocial .' - '. 
								   ' - Control: '.$p->orden_control.
								   ' - Cliente: '.$p->clien_nombre1.
								   ' - Monto Ordenado : '.$p->monto_ordenado.
								   ' - Fecha: '. $p->orden_fecha;
						?>
						</option>
					<?php endforeach; ?>
				</select>
			</div>

		</div>
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">No. Control</label>
			<div class="col-sm-12 col-xs-12">
				<input type="text" name="control" class="form-control" value="">
			</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha Orden:</label>
			<div class="col-sm-12 col-xs-12">
				<div class="input-group">
					<input type="text" name="fec" id="fec" class="form-control fecha">
					<span class="input-group-addon">
						<i class="icon-calendar bigger-110"></i>
					</span>
				</div>
			</div>
		</div>
		
		<div class="form-group col-sm-1 col-xs-12">
			<button class="btn btn-primary btn-sm pull-right"><span class="i fa fa-check fa-3x"></span>  </button>
		</div>

		<div class="clearfix"></div>	
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha Envio al transporte:</label>
			<div class="col-sm-12 col-xs-12">
				<div class="input-group">
					<input type="text" name="fec_envio" id="fec_envio" class="form-control fecha">
					<span class="input-group-addon">
						<i class="icon-calendar bigger-110"></i>
					</span>
				</div>
			</div>
		</div>			
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Porcentaje</label>
			<div class="col-sm-12 col-xs-12">
				<input type="number" name="porc" id="porc" class="form-control" value="0.00" max="100.00">
			</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto Contado</label>
			<div class="col-sm-12 col-xs-12">
				<input type="number" name="mto_con" id="mto_con" class="form-control" value="0.00" min="0.01">
			</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto Crédito</label>
			<div class="col-sm-12 col-xs-12">
				<input type="number" name="mto_cre" id="mto_cre" class="form-control" value="0.00" min="0.01">
			</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Tasa</label>
			<div class="col-sm-12 col-xs-12">
				<input type="number" name="tasa" id="tasa" class="form-control" value="0.00" min="0.01">
			</div>
		</div>

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 bolder">Condición Especial:</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" name="cond" id="cond">
					<option value=0>Contado</option>
					<option value=1>Crédito</option>
				</select>
			</div>
		</div>


	</fieldset>
</form>