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
			<div class="box box-success">
				<div class="box-header">
					<h3 class="box-title"><?=$title?></h3>
				</div>
				<div class="box-body">
					<div class="col-md-12">
						<!-- <a href="<?=site_url('the_module/form')?>" class="btn btn-sm btn-primary pull-right">Add Module</a> -->
					</div>
					<div class="table-responsive">
						<table class="table table-condensed">
							<thead>
								<tr>
									<th width="25">No</th>
									<th>Nama Modul</th>
									<th>Posisi</th>
									<th>Aksi</th>
								</tr>
							</thead>
							<tbody>
							<?php
								$i=1;
								foreach ($data as $r) { 
							?>
							<tr>
								<td><?=$i++?></td>
								<td><?=$r['nama']?></td>
								<td><?=$r['posisi']?></td>
								<td>
									<a href="<?=site_url('the_module/detail/'.$r['id'])?>" class="btn btn-xs btn-info">Detail</a>
								</td>
							</tr>
							<?php } ?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>