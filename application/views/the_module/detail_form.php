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
					<form method="post" action="<?=site_url('the_module/manual_save')?>" class="tasi-form form-horizontal">
						<input type="hidden" value="<?=$module_id?>" name="module_id" />
						<input type="hidden" value="<?=@$data['id']?>" name="id" />
						<div class="form-group">
							<label class="control-label col-md-2">Judul</label>
							<div class="col-md-3">
								<input class="form-control input-sm" name="judul" required value="<?=@$data['judul']?>" />
							</div>
							<label class="control-label col-md-2">Show Title</label>
							<div class="col-md-2">
								<select class="form-control input-sm" name="show_title">
									<option value="1" <?=@$data['show_title']==1?"selected='selected'":""?>>Yes</option>
									<option value="0" <?=@$data['show_title']==0?"selected='selected'":""?>>No</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-2">Isi</label>
							<div class="col-md-10">
								<textarea class="form-control input-sm textarea" name="isi" rows="5" required><?=@$data['isi']?></textarea>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12">
								<a href="<?=site_url('the_module/detail/'.$module_id)?>" class="btn btn-sm btn-warning"> Back</a>
								<button class="btn btn-sm btn-primary pull-right" type="submit"> Save</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>