<?php 
	$this->load->view('front/header');
	$profil = $this->auth->profil();
?>
<body class="skin-black-light layout-boxed sidebar-collapse">
	<div class="wrapper" style="background:#fff">
		<header class="main-header">
			<center>
				<img src="<?=base_url('asset/images/top-banner.png')?>" class="img-responsive" />
			</center>
		</header>
		<div class="content-wrapper" style="background:#fff">
			<section class="content-header" style="padding:0;">
				<?php $this->load->view('front/main_menu');?>
				<div class="col-md-12 col-sm-12" style="padding:0;background:#fff">
					<div class="col-md-3 col-sm-3">
						<div class="box box-success">
							<div class="box-header">
								<h3 class="box-title">
								<?php
									foreach ($lv2 as $r) {
										if($r['id'] == $id){
											echo $r['nama'];
											break;
										}
									}
								?>
								</h3>
							</div>
							<div class="box-body">
								<?php 
									foreach ($lv3 as $r) { 
										@$act = $r['id'] == $idLv3 ? "btn-primary":"btn-default";
								?>
								  <a href="<?=site_url('content_main/index/'.$r['parent_id'].'/'.$r['id'])?>" class="btn <?=$act?> btn-block"><?=$r['nama']?></a>
								 <?php } ?> 
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6">
						<table class="table table-condensed" style="border:none;" id="tb">
							<thead>
								<tr>
									<th style="padding:0;border:none"></th>
								</tr>
							</thead>
							<tbody>
							<?php
								if(isset($data)){
									foreach ($data as $r) {
										if($r['foto']){
											$img = "<img src='".base_url('asset/images/blog/'.$r['foto'])."' class='img-responsive' />";
										}else{
											$img = '';
										}
										echo "<tr>
											<td>
											$img <br />
											<h3 class='panel-title'>".$r['judul']."&nbsp;&nbsp;&nbsp;<small>".dateToIndo($r['tanggal'])."</small></h3><br />
											".nl2br($r['isi'])."
											</td>
										</tr>";
									}
								}
							?>
							</tbody>
						</table>
						<?php if(isset($data) and count($data) > 1){ ?>
						<script type="text/javascript">
						$(document).ready(function(){
							$("#tb").DataTable({
								"bSort":false,
								"bFilter":false,
								"info":false,
								"bLengthChange":false
							});
						});
						</script>
						<?php } ?>
					</div>
					<div class="col-md-3 col-sm-3">
						<div class="box box-success">
							<div class="box-header">
								<h3 class="box-title"><?=$lv1['nama']?></h3>
							</div>
							<div class="box-body">
								<?php 
									foreach ($lv2 as $r) { 
										$act = $r['id'] == $id ? "btn-primary":"btn-default";
								?>
								  <a href="<?=site_url('content_main/index/'.$r['id'])?>" class="btn <?=$act?> btn-block"><?=$r['nama']?></a>
								 <?php } ?> 
							</div>
						</div>
					</div>
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