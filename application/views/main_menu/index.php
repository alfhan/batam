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
                    <div class="col-md-12">
                        <h3 class="box-title"><?=$title;?></h3>
                    </div>
                </div>
                <div class="box-body">
                  <div class="col-md-12">
                    <a class="btn btn-sm btn-primary pull-right" href="<?=site_url('main_menu/form')?>">
                      <i class="fa fa-plus"></i> Add
                    </a>
                  </div>
                  <table class="table table-bordered" id="tbl">
                    <thead>
                      <tr>
                          <th width="25">No</th>
                          <th>Nama</th>
                          <th>URL</th>
                          <th>Tipe</th>
                          <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php 
                          $no = 1;
                          foreach ($data as $row) { 
                      ?>
                      <tr>
                          <td><?php echo $no++;?></td>
                          <td><?=$row['nama']?></td>
                          <td><?=$row['url']?></td>
                          <td><?=$row['tipe']?></td>
                          <td>
                              <a target="_blank" href="<?=site_url('main_menu/form/'.$row['id'])?>" class="btn btn-xs btn-info">Edit</a>
                              <button type="button" class="btn btn-xs btn-danger" onclick="deleteClick('<?php echo $row['id'];?>')">
                                  Delete
                              </button>
                          </td>
                      </tr>
                      <?php } ?>
                    </tbody>
                  </table>
                </div>
            </div>
        </div>
	</div>
</section>