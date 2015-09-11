<!DOCTYPE html>
<html>
<?php
    $prof = $this->auth->profil();
?>
    <head>
        <meta charset="UTF-8">
        <title>.:: <?=$prof->nama?> ::.</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <link href="<?php echo base_url('asset/admin/css/bootstrap.min.css');?>" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url('asset/admin/css/font-awesome.min.css');?>" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="<?php echo base_url('asset/admin/css/ionicons.min.css');?>" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="<?php echo base_url('asset/admin/css/AdminLTE.css');?>" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url('asset/admin/css/datatables/dataTables.bootstrap.css');?>" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url('asset/admin/js/plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css');?>" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url('asset/admin/js/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css');?>" rel="stylesheet" type="text/css" />
        <link rel="icon" href="<?=base_url('asset/images/'.$prof->foto)?>" type="image/png" sizes="16x16">
        <?php echo isset($css) ? $css : "";?>
    </head>
    <body class="skin-blue">
        <!-- header logo: style can be found in header.less -->
        <?php $this->load->view('header');?>
        <div class="wrapper row-offcanvas row-offcanvas-left">
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="left-side sidebar-offcanvas">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <?php $this->load->view('menu');?>
                </section>
            </aside>

            <aside class="right-side">
                <?php echo isset($content) ? $content:"";?>
            </aside>
        </div>
        <!-- ./wrapper -->
        <!--MainJquery-->
        <script src="<?php echo base_url('asset/admin/js/jquery.min.js');?>"></script>
        <script src="<?php echo base_url('asset/admin/js/bootstrap.min.js');?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/admin/js/bootbox.min.js');?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/admin/js/jquery.form.min.js');?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/front/plugins/datatables/jquery.dataTables.min.js');?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/front/plugins/datatables/dataTables.bootstrap.min.js');?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/front/plugins/datepicker/bootstrap-datepicker.js');?>" type="text/javascript"></script>
        <script src="<?=base_url('asset/admin/js/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js')?>" type="text/javascript"></script>
        <!-- asset/admin App -->
        <script src="<?php echo base_url('asset/admin/js/AdminLTE/app.js');?>" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                $(".textarea").wysihtml5();
              });
        </script>
        <?php echo isset($js) ? $js : "";?>
    </body>
</html>