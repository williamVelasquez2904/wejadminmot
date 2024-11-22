<?php require '../../../cfg/base.php'; 
$rowspir = $mrequisicion->sumaporidereq($ide); 
$rowreq = $mrequisicion->poride($ide); 
if (count($rowspir)) { $monresult = $monreq-$rowspir[0]->SumMontoDet; }
else { $monresult = $monreq; }
?>
<input type="number" name="mtod" class="form-control" value="<?php echo ($rowreq[0]->req_monto-$rowreq[0]->monto_ordenado); ?>" min="0.01" max="<?php echo $monresult; ?>" step="0.01">
<input type="hidden" name="mtodr" value="<?php echo $monresult; ?>">