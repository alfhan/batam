<?php $profile = $this->auth->profil();?>
<?php
	$prof = $this->auth->profil();
	$footer = $this->auth->footerInfo();
?>
<header id="header"><!--header-->
	<div class="header_top"><!--header_top-->
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="contactinfo">
						<ul class="nav nav-pills">
							<li><a href="#"><i class="fa fa-phone"></i> <?=$profile->telp?></a></li>
							<li><a href="#"><i class="fa fa-envelope"></i> <?=$profile->email?></a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="social-icons pull-right">
						<ul class="nav navbar-nav">
							<li><a href="<?=$profile->fb?>" target="_blank"><i class="fa fa-facebook"></i></a></li>
							<li><a href="<?=$profile->twitter?>" target="_blank"><i class="fa fa-twitter"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div><!--/header_top-->
	
	<div class="header-middle"><!--header-middle-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="logo pull-left">
						<a href="#"><img src="<?=base_url('images/company/'.$profile->foto);?>"></a>
					</div>
				</div>
				<div class="col-sm-8">
					<div class="shop-menu pull-right">
						<ul class="nav navbar-nav">
							<li><a href="<?=site_url('home/my_account')?>"><i class="fa fa-user"></i> Account</a></li>
							<li><a href="<?=site_url('home/my_cart')?>"><i class="fa fa-shopping-cart"></i> Cart</a></li>
							<?php
								if($this->session->userdata('tipe') == sha1(md5(MEMBER))){
							?>
								<li><a href="<?=site_url('home/logout')?>"><i class="fa fa-unlock"></i> Logout</a></li>
							<?php }else{ ?>
								<li><a href="<?=site_url('blog/login')?>"><i class="fa fa-lock"></i> Login</a></li>
							<?php } ?>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div><!--/header-middle-->

	<div class="header-bottom"><!--header-bottom-->
		<div class="container">
			<div class="row">
				<div class="col-sm-9">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<div class="mainmenu pull-left">
						<ul class="nav navbar-nav collapse navbar-collapse">
							<li><a href="<?=site_url()?>" class="active">Home</a></li>
							<li class="dropdown"><a href="#">Shop<i class="fa fa-angle-down"></i></a>
                                <ul role="menu" class="sub-menu">
                                    <li><a href="<?=site_url('product');?>">Products</a></li>
									<li><a href="<?=site_url('home/my_cart');?>">Cart</a></li> 
                                </ul>
                            </li> 
							<li class="dropdown"><a href="#">Reseller<i class="fa fa-angle-down"></i></a>
                                <ul role="menu" class="sub-menu">
									<li><a href="<?=site_url('home/daftar_reseller');?>">Daftar Reseller</a></li> 
									<li><a href="<?=site_url('blog/detail/6')?>"><?=footerInfo($footer,6)?></a></li>
                                </ul>
                            </li> 
                            <li class="dropdown"><a href="#">Company Profile<i class="fa fa-angle-down"></i></a>
                                <ul role="menu" class="sub-menu">
                                    <li><a href="<?=site_url('blog/detail/7')?>"><?=footerInfo($footer,7)?></a></li>
									<li><a href="<?=site_url('blog/detail/4')?>"><?=footerInfo($footer,4)?></a></li>
									<li><a href="<?=site_url('blog/contact_us')?>"><?=footerInfo($footer,3)?></a></li>
									<li><a href="<?=site_url('blog/detail/2')?>"><?=footerInfo($footer,2)?></a></li>
                                </ul>
                            </li>
                            <li><a href="<?=site_url('blog');?>">Blog</a></li> 
						</ul>
					</div>
				</div>
				<!-- <div class="col-sm-3">
					<div class="search_box pull-right">
						<input type="text" placeholder="Search"/>
					</div>
				</div> -->
			</div>
		</div>
	</div><!--/header-bottom-->
</header><!--/header-->		