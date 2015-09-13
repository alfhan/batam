<section class="content-header">
    <h1>
        <?php echo $title;?>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-th"></i> Content & Module</a></li>
        <li><a href="<?php echo base_url($link);?>"><i class="fa fa-angle-double-right"></i> <?php echo $title;?></a></li>
    </ol>
</section>
<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-success">
				<div class="panel-heading">
					<h3 class="panel-title"><?=$title?></h3>
				</div>
				<div class="panel-body">
					<form method="post" action="<?=site_url('link_instansi/simpan')?>" class="tasi-form form-horizontal">
						<input type="hidden" value="<?=@$data['id']?>" name="id" />
						<div class="form-group">
							<label class="control-label col-md-2">Nama</label>
							<div class="col-md-3">
								<input class="form-control input-sm" name="nama" required value="<?=@$data['nama']?>" />
							</div>
							<label class="control-label col-md-2">URL</label>
							<div class="col-md-5">
								<input class="form-control input-sm" name="url" tipe="url" value="<?=@$data['url']?>">
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12">
								<a href="<?=site_url('link_instansi')?>" class="btn btn-sm btn-warning"> Back</a>
								<button class="btn btn-sm btn-primary pull-right" type="submit"> Save</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>