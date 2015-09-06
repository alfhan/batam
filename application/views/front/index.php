<?php $this->load->view('front/header');?>

<body class="skin-blue layout-boxed sidebar-collapse">
	<div class="wrapper">
		<header class="main-header">
			<center>
				<img src="<?=base_url('asset/images/top-banner.png')?>" class="img-responsive" />
			</center>
		</header>
		<div class="content-wrapper">
			<section class="content-header" style="padding:0;">
				<img src="<?=base_url('asset/images/slide-show-sample.png')?>" class="img-responsive" />
				<?php
		    	$menuIcon = $this->auth->menuIcon();
		    	$footer = $this->auth->footerInfo();
		    ?>
		    <div class="col-md-12 col-sm-12" style="background:#1C590C;padding-top:25px">
		    	<div class="col-md-1 col-sm-1">
		    	</div>
					<?php 
						foreach ($menuIcon as $r) { 
							if($r['id'] == 6)
								break;
					?>
						<div class="col-md-2 col-sm-2">
							<div class="panel" style="background:none;">
								<div class="panel-body" style="padding:0">
									<img src="<?=base_url($r['image'])?>" class="img-responsive">
								</div>
								<div class="panel-footer" style="padding:0;color:#fff;background:none;border:none;text-align:center">
									<?=$r['nama']?>
								</div>
							</div>
						</div>
					<?php } ?>
					<div class="col-md-1 col-sm-1"></div>
				</div>
				<div class="col-md-12 col-sm-12" style="background:#1C590C;padding-top:10px;padding-bottom:25px">
		    	<div class="col-md-2 col-sm-2">
		    	</div>
					<?php 
						foreach ($menuIcon as $r) { 
							if($r['id'] >= 6){
					?>
						<div class="col-md-2 col-sm-2">
							<div class="panel" style="background:none;">
								<div class="panel-body" style="padding:0">
									<img src="<?=base_url($r['image'])?>" class="img-responsive">
								</div>
								<div class="panel-footer" style="padding:0;color:#fff;background:none;border:none;text-align:center">
									<?=$r['nama']?>
								</div>
							</div>
						</div>
					<?php } } ?>
					<div class="col-md-2 col-sm-2"></div>
				</div>
				<div class="col-md-12 col-sm-12" style="background:#4E4E4E">
	      <?php 
	      	foreach ($footer as $r) { 
	      		if($r['parent_id']==0){
	      ?>
	      	<div class="col-md-3 col-sm-3">
	      		<div class="panel" style="background:none">
		      		<div class="panel-heading">
		      			<h3 class="panel-title" style="color:#B7A328;font-size:20px;font-family:Arial"><?=$r['nama']?></h3>
		      		</div>
		      		<div class="panel-body" style="font-size:16px;">
		      			<?php 
		      				foreach ($footer as $row) { 
		      					if($row['parent_id'] == $r['id']){
		      			?>
		      			<?php if($row['tipe'] == 'Internal Link'){ ?>
		      				<a style="color:#fff" href="<?=site_url($row['url'])?>"><?=$row['nama']?></a><br />
		      			<?php }else{ ?>
		      				<a style="color:#fff" href="<?=$row['url']?>" target="_blank"><?=$row['nama']?></a><br />
		      			<?php } ?>
		      			<?php } } ?>
		      		</div>
		      	</div>
	      	</div>
	      <?php }} ?>
	      </div>
			</section>
			
		</div>
		<footer class="main-footer" style="padding:0;">
			adasd
    </footer>
	</div>
		
<?php $this->load->view('front/footer');?>
</body>
</html>