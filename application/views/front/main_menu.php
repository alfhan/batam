<?php 
	$mainMenu = $this->auth->mainMenu();
?>
<div class="col-md-12 col-sm-12" style="padding:0;background:#fff">
	<div class="col-md-1 col-sm-1">&nbsp;</div>
	<div class="col-md-10 col-sm-10">
		<br />
		<div class="btn-group btn-group-justified" role="group" aria-label="..." style="border-bottom:5px solid #ccc">
      <div class="btn btn-default btn-lg"><a href="<?=site_url()?>"><i class="glyphicon glyphicon-home"></i>&nbsp;&nbsp;Home</a></div>
      <?php
      	foreach ($mainMenu as $r) {
      		if($r['parent_id'] == 0){
      ?>
      <div class="btn-group" role="group">
        <button type="button" class="btn btn-default dropdown-toggle btn-lg" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		      <i class="<?=$r['icon']?>"></i>&nbsp;&nbsp;<?=$r['nama']?>
		      <span class="caret"></span>
		    </button>
		    <ul class="dropdown-menu">
		    <?php
      		foreach ($mainMenu as $row) {
      			if($row['parent_id'] == $r['id']){
      	?>
      	<?php
      	if($row['tipe'] == 'Internal Link'){
      	?>
		      <li style="background:#1C590C;"><a href="<?=site_url('content_main/index/'.$row['id'])?>" class="btn btn-md" style="text-align:left;color:#fff"><i class="glyphicon glyphicon-play btn-sm"></i><?=$row['nama']?></a></li>
				<?php }else{ ?>
					<li style="background:#1C590C;"><a href="<?=$row['url']?>" target="_blank" class="btn btn-md" style="text-align:left;color:#fff"><i class="glyphicon glyphicon-play btn-sm"></i><?=$row['nama']?></a></li>
				<?php } ?>
		    <?php } } ?>
		    </ul>
		   </div>
      <?php } } ?>
    </div>
    <br />
	</div>
	<div class="col-md-1 col-sm-1">&nbsp;</div>
</div>