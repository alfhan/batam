<script type="text/javascript">
	var berforeSendLoading = bootbox.dialog({
          title: "Loading",
          message: "<div class='progress sm progress-striped active'>"+
                        "<div class='progress-bar progress-bar-success' role='progressbar' aria-valuenow='100'"+
                            "aria-valuemin='0' aria-valuemax='100' style='width: 100%'>"+
                            "<span class='sr-only'>Loading</span>"+
                        "</div>"+
                    "</div>",
          closeButton: false,
          show: false,
        });
    var successDialog = bootbox.dialog({
          title: "Success",
          message: "<div class='alert alert-success alert-dismissable'>"+
                        "<i class='fa fa-check'></i>"+
                        "<b>Alert!</b> Success Saved"+
                    "</div>",
          closeButton: true,
          show: false,
        });
    var errorDialog = bootbox.dialog({
          title: "ERROR. . .",
          message: "<div class='alert alert-danger alert-dismissable'>"+
                        "<i class='fa fa-ban'></i>"+
                        "<b>Alert!</b> Error, terjadi kesalahan pada server. hubungi admin aplikasi"+
                    "</div>",
          closeButton: true,
          show: false,
        });
 	function deleteClick(id){
		bootbox.confirm("Apakah anda yakin ingin menghapus?", function(result) {
			if (result == true) {
                $.ajax({
                	data:{id:id},
                	type:'POST',
                	url:"<?=site_url('the_module/hapus_detail')?>",
                	success:function(r){
		              berforeSendLoading.modal('hide');
		              successDialog.modal('show');
		              window.open("<?=site_url('the_module/detail/'.$id);?>","_self");
		            },
		            error:function(r){
		              berforeSendLoading.modal('hide');
		              errorDialog.modal('show');
		            },
                	beforeSend:function(r){
                	  berforeSendLoading.modal('show');
                	}
                });
            }
		});
	}
</script>