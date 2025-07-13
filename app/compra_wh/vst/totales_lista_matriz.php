<div class="alert alert-info">
<table>
	<tr>
		<td><?php echo "Total Comisión: ".number_format($suma_comision,2,",","."); ?></td>
	</tr>	
	<tr>
		<td><?php echo "Total Comisión AutoAsia: ".number_format($suma_comision_ex,2,",","."); ?></td>	
	</tr>
</table>
<br>
<table>
	<tr><td><?php echo "Total Notas Contado: ".number_format($acum_monto_contado,2,",","."); ?></td></tr>
	<tr><td><?php echo "Cantidad Notas Contado: ".number_format($cant_contado,0,",","."); ?></td></tr>
</table>
<br>
<table>
	<tr><td><?php echo "Total Notas Crédito: ".number_format($acum_monto_credito,2,",","."); ?></td></tr>
	<tr><td><?php echo "Cantidad Notas Crédito: ".number_format($cant_credito,0,",","."); ?></td></tr>
</table>
</div>