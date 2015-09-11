<section class="content-header">
	<h1><?=$title?></h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-th"></i> Article Management</a></li>
        <li><a href="<?php echo base_url($link);?>"><i class="fa fa-angle-double-right"></i> <?=$title?></a></li>
    </ol>
</section>
<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">Form Artikel</h3>
				</div>
				<div class="box-body">
					<form class="cmxform form-horizontal tasi-form" role="form" id="myForm">
		                <input type="hidden" name="id" id="id" value="<?=@$data['id']?>" />
		                <input type="hidden" name="old_file" id="old_file" value="<?=@$data['foto']?>" />
		                <div class="form-group">
		                    <label for="judul" class="col-sm-3 control-label">Judul</label>
		                    <div class="col-sm-3">
		                        <input name="judul" value="<?=@$data['judul']?>" id="judul" class="form-control input-sm" required />
		                    </div>
		                    <label for="kategori_artikel_id" class="col-sm-2 control-label">Kategori</label>
		                    <div class="col-md-3">
		                    	<select name="kategori_artikel_id" id="kategori_artikel_id" class="form-control input-sm">
		                    	<?php
		                    		$mainMenuSelect = $this->auth->main_menu_select();
		                    		// print_r($mainMenuSelect);
		                    		foreach ($mainMenuSelect as $r) {
		                    			if($r['parent_id']==0){
		                    				// echo "<optgroup label='$r[nama]'>";
		                    				@$select = $r['id'] == $data['kategori_artikel_id'] ? "selected='selected'":"";
		                    				echo "<option $select value='$r[id]'><label>$r[nama]</label></option>";
		                    				foreach ($mainMenuSelect as $row) {
		                    					if($row['parent_id'] == $r['id']){
		                    						@$select = $row['id'] == $data['kategori_artikel_id'] ? "selected='selected'":"";
		                    						// echo "<optgroup label='$row[nama]'>";
		                    						echo "<option $select value='$row[id]'><label>-- $row[nama]</label></option>";
		                    						foreach ($mainMenuSelect as $rows) {
		                    							if($rows['parent_id'] == $row['id']){
		                    								@$select = $rows['id'] == $data['kategori_artikel_id'] ? "selected='selected'":"";
		                    								echo "<option $select value='$rows[id]'>--- $rows[nama]</option>";
		                    							}
		                    						}
		                    						// echo "</optgroup>";
		                    					}
		                    				}
		                    				// echo "</optgroup>";
		                    			}
		                    		}
		                    	?>
		                    	</select>
		                    </div>
		                </div>
		                <div class="form-group">
		                    <label for="foto" class="col-sm-3 control-label">Foto</label>
		                    <div class="col-sm-3">
		                        <input type="file" name="foto" id="foto" class="form-control input-sm" />
		                    	<?php
		                    	if(isset($data['foto']) and !empty($data['foto'])){
		                    		echo "<a href='#' onclick='removeImage()' class='btn btn-xs btn-danger'><i class='fa fa-minus'></i> Delete Foto</a>";
		                    	}
		                    	?>
		                    </div>
		                </div>
		                <div class="form-group">
		                    <label for="isi" class="col-sm-3 control-label">Deskripsi</label>
		                    <div class="col-sm-9">
		                        <textarea class="textarea" name="isi" id="isi" rows="10" style="width:100%"><?=@$data['isi']?></textarea>
		                    </div>
		                </div>
		            </form>
				</div>
				<div class="box-footer">
					<a href="javascript:void(0)" class="btn btn-sm btn-info"><i class="fa fa-angle-double-left"></i> Kembali</a>
					<a href="javascript:void(0)" class="btn btn-sm btn-primary save-click pull-right"><i class="fa fa-save"></i> Simpan</a>
				</div>
			</div>
		</div>
	</div>
</section>