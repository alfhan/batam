<?php 
	$theModule = $this->auth->the_module();
?>
<div class="col-md-12 col-sm-12" style="padding:0;">
	<div class="col-md-1 col-sm-1">&nbsp;</div>
    <div class="col-md-10 col-sm-10" style="padding:0;">
    <?php
    	foreach ($theModule['parent'] as $r) {
    ?>
    	<div class="col-md-4 col-sm-4">
    		<div class="panel panel-default" style="padding:0">
    			<div class="panel-heading">
    				<h3 class="panel-title"><?=$r['nama']?></h3>
    			</div>
    			<div class="panel-body" style="padding:0px;padding-left:5px;">
    				<!-- <dl>
	    				<?php
	    					foreach ($theModule['child'] as $row) {
	    						if($row['module_id'] == $r['id']){
							?>
							<?php if($row['show_title'] == 1){ ?>
							<dt><img src="<?=base_url('asset/images/media-center-logo.png')?>" style="float:left" class="img-circle" /><?=$row['judul']?></dt>
							<?php } ?>
							<dd><?=nl2br($row['isi'])?></dd>
							<?php } } ?>
						</dl> -->
                    <?php
                        foreach ($theModule['child'] as $row) {
                            if($row['module_id'] == $r['id']){
                    ?>
                    <div class="table-responsive">
                        <table cellspacing="0" cellpadding="0" width="100%">
                            <tr>
                                <td >
                                    <b style="font-size:14px">
                                        <a href="<?=$row['url']?>" target="_blank">
                                            <?=$row['judul']?>
                                        </a>
                                    </b>
                                </td>
                            </tr>
                            <tr style="border-bottom:1px dotted #ccc;">
                                    
                                <td valign="top" style="font-size:12px">
                                    <span style="color:#ed4337"><?=dateIndoShort($row['tanggal'])?></span> : 
                                    <?=nl2br($row['isi'])?>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <?php } } ?>
    			</div>
    		</div>
    	</div>
    <?php } ?>
	</div>
	<div class="col-md-1 col-sm-1">&nbsp;</div>
</div>