<?php $this->load->view('front/header');?>

<body class="skin-black-light layout-boxed sidebar-collapse">
	<div class="wrapper" style="background:#fff">
		<header class="main-header">
			<center>
				<img src="<?=base_url('asset/images/top-banner.png')?>" class="img-responsive" />
			</center>
		</header>
		<div class="content-wrapper">
			<section class="content-header" style="padding:0;">
				<div class="col-md-12 col-sm-12" style="background:url('<?=base_url('asset/images/slide/3.jpg')?>') no-repeat;">
					<div class="col-md-12 col-sm-12">
						<div class="col-md-3 col-sm-3">
							&nbsp;
						</div>
						<div class="col-md-6 col-sm-6">
						<br />
							<input class="form-control input-lg" name="q" placeholder="Cari info batam disini" style="border:1px solid #ccceee;border-radius:5px ! important;box-shadow:-3px 2px 16px #1C590C">
						<br />
						</div>
					</div>
					<div class="col-md-1 col-sm-1">
						&nbsp;
					</div>
					<div class="col-md-10 col-sm-10">
						<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	            <ol class="carousel-indicators">
	              <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
	              <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
	              <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
	            </ol>
	            <div class="carousel-inner">
	              <div class="item active">
	                <img src="<?=base_url('asset/images/slide/1.jpg')?>" alt="First slide">
	                <div class="carousel-caption">
	                  First Slide
	                </div>
	              </div>
	              <div class="item">
	                <img src="<?=base_url('asset/images/slide/2.jpg')?>" alt="Second slide">
	                <div class="carousel-caption">
	                  Second Slide
	                </div>
	              </div>
	              <div class="item">
	                <img src="<?=base_url('asset/images/slide/3.jpg')?>" alt="Third slide">
	                <div class="carousel-caption">
	                  Third Slide
	                </div>
	              </div>
	            </div>
	            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
	              <span class="fa fa-angle-left"></span>
	            </a>
	            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
	              <span class="fa fa-angle-right"></span>
	            </a>
	          </div>
					</div>
					<div class="col-md-1 col-sm-1">
						&nbsp;
					</div>
					<div class="col-md-12 col-sm-12">
						<br />
						
					</div>
				</div>
				<?php
		    	$menuIcon = $this->auth->menuIcon();
		    	$footer = $this->auth->websiteSKPD();
		    	$profil = $this->auth->profil();
		    	$linkInstansi = $this->auth->linkInstansi();
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
						      <li style="background:#1C590C;"><a href="<?=site_url($row['url'])?>" class="btn btn-lg" style="text-align:left;color:#fff"><i class="glyphicon glyphicon-play btn-sm"></i><?=$row['nama']?></a></li>
								<?php }else{ ?>
									<li style="background:#1C590C;"><a href="<?=$row['url']?>" target="_blank" class="btn btn-lg" style="text-align:left;color:#fff"><i class="glyphicon glyphicon-play btn-sm"></i><?=$row['nama']?></a></li>
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
		    <div class="col-md-12 col-sm-12" style="padding:0;">
		    	<div class="panel" style="padding:0;">
		    		<div class="panel-heading" style="padding-top:25px">
		    			<h3 style="font-size:24px" class="panel-title"><center>LINK INSTANSI KOTA BATAM</center></h3>
		    		</div>
		    		<div class="panel-body">
		    			<div class="col-md-2 col-sm-2">&nbsp;</div>
		    			<?php 
		    				foreach ($linkInstansi as $r) { 
		    					if($r['id'] == 5)
		    							break;
		    			?>
		    			<div class="col-md-2 col-sm-2">
		    				<a href="<?=$r['url']?>" target="_blank"> <img src="<?=base_url($r['image'])?>" class="img-responsive" title="nama" /></a>
		    			</div>
		    			<?php } ?>
		    			<div class="col-md-2 col-sm-2">&nbsp;</div>
		    			<div class="col-md-12 col-sm-12">
		    				&nbsp;
		    				<br />
		    				<br />
		    			</div>
		    			<div class="col-md-2 col-sm-2">&nbsp;</div>
		    			<?php 
		    				foreach ($linkInstansi as $r) { 
		    					if($r['id'] >= 5){
		    			?>
		    			<div class="col-md-2 col-sm-2">
		    				<a href="<?=$r['url']?>" target="_blank"> <img src="<?=base_url($r['image'])?>" class="img-responsive" title="nama" /></a>
		    			</div>
		    			<?php } } ?>
		    			<div class="col-md-2 col-sm-2">&nbsp;</div>
		    		</div>
		    	</div>
		    </div>
		    <div class="col-md-12 col-sm-12" style="background:#1C590C;padding-top:25px">
		    	<div class="col-md-1 col-sm-1">
		    	&nbsp;
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
	      	<div class="col-md-2 col-sm-2" style="margin:0;padding:0">
	      		<div class="panel" style="background:none;padding:2px">
		      		<div class="panel-heading">
		      			<h3 class="panel-title" style="color:#B7A328;font-size:20px;font-family:Arial"><?=$r['nama']?></h3>
		      		</div>
		      		<div class="panel-body" style="font-size:14px;padding:0">
		      			<?php 
		      				foreach ($footer as $row) { 
		      					if($row['parent_id'] == $r['id']){
		      			?>
		      			<?php if($row['tipe'] == 'Internal Link'){ ?>
		      				<a style="color:#fff;" href="<?=site_url($row['url'])?>"><?=$row['nama']?></a><br />
		      			<?php }else{ ?>
		      				<a style="color:#fff;" href="<?=$row['url']?>" target="_blank"><?=$row['nama']?></a><br />
		      			<?php } ?>
		      			<?php } } ?>
		      		</div>
		      	</div>
	      	</div>
	      <?php }} ?>
	      </div>
			</section>
			
		</div>
		<footer class="main-footer" style="padding:0">
			<div class="col-md-12 col-sm-12" style="background:#eeeddd;padding:10px">
				<div class="col-md-1 col-sm-1">
					
				</div>
				<div class="col-md-10 col-sm-10">
					<span class="pull-right" style="font-size:24px;font-family:arial;border-left:2px solid black;padding-left:10px;color:#1C590C">
						PEMERINTAH<br />KOTA BATAM	
					</span>
					<span class="pull-right" style="text-align:right;padding-right:10px">
						<?=$profil->alamat?>
						<br />
						Telp : <?=$profil->telp?> | Fax : <?=$profil->fax?>
						<br />
						email : <?=$profil->email?>
					</span>
					<a href="<?=$profil->fb?>" class="btn btn-sm btn-primary">
						<i class="fa fa-facebook fa-2x"></i> &nbsp;&nbsp;&nbsp;<span style="font-size:16px;">Facebook </span>
					</a> 
					&nbsp;&nbsp;&nbsp;
					<a href="<?=$profil->twitter?>" class="btn btn-sm btn-primary">
						<i class="fa fa-twitter fa-2x"></i>&nbsp;&nbsp;&nbsp;<span style="font-size:16px;">Twitter</span>
					</a>
					<br />
					<label style="margin-top:5px">Copyright 2015 | Badan Komunikasi dan Informatika Kota Batam</label>
				</div>
				<div class="col-md-1 col-sm-1">
					
				</div>
			</div>
    </footer>
	</div>
		
<?php $this->load->view('front/footer');?>
</body>
</html>