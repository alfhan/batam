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
    function saveClick(){
        $('#myForm').ajaxSubmit({
            url:'<?php echo $urlSave;?>',
            beforeSend:function(r){
              berforeSendLoading.modal('show');
            },
            success:function(r){
              berforeSendLoading.modal('hide');
              successDialog.modal('show');
              window.open("<?php echo base_url($link);?>","_self");
            },
            error:function(r){
              berforeSendLoading.modal('hide');
              errorDialog.modal('show');
            },
        }).data('jqxhr').done(function(r){
            
        });
    }
	function editClick(id,nama,username,group_id,telp,hp,email,foto) {
		$("#id").val(id);
		$("#nama").val(nama);
    $("#nama").focus();
		$("#username").val(username);
		$("#username").attr("disabled","true");
		$("#telp").val(telp);
		$("#hp").val(hp);
		$("#email").val(email);
		$("#group_id").val(group_id);
		$("#old_file").val(foto);
	}
	function addClick(){
		$("#id").val('');
    $("#nama").val('');
		$("#username").focus();
		$("#username").val('');
		$("#username").removeAttr("disabled");
		$("#telp").val('');
		$("#hp").val('');
		$("#email").val('');
		$("#group_id").val(1);
		$("#old_file").val('');
	}
	function deleteClick(id,foto){
		bootbox.confirm("Apakah anda yakin ingin menghapus?", function(result) {
			if (result == true) {
                $.ajax({
                	data:{id:id,foto:foto},
                	type:'POST',
                	url:'<?php echo $urlDelete;?>',
                	success:function(r){
		              berforeSendLoading.modal('hide');
		              successDialog.modal('show');
		              window.open("<?php echo base_url($link);?>","_self");
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