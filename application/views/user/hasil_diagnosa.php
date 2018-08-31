<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>SP THT - I Medical Specialist Center </title>

    <!-- Favicon -->
    <link rel="icon" href="<?php echo base_url(); ?>template/temp_user/img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/temp_user/style.css">

</head>

<body>
    <!-- ##### Preloader ##### -->
    <div id="preloader">
        <i class="circle-preloader"></i>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- Top Header Area -->
        <div class="top-header">
            <div class="container h-100">
                <div class="row h-100">
                    <div class="col-12 h-100">
                        <div class="header-content h-100 d-flex align-items-center justify-content-between">
                            <div class="academy-logo">
                                <a href="index.html"><img src="<?php echo base_url(); ?>template/temp_user/img/core-img/logo3.png" alt=""></a>
                            </div>
                           <!--  <div class="login-content">
                                <a href="#">Register Pasien / Pengunjung</a>
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
       
       <div class="academy-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="academyNav">

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="<?php echo site_url() ?>Dashboard/user">Home</a></li>
                                    <li><a href="<?php echo site_url() ?>Dashboard/diagnosa">Diagnosa</a>
                                    <li><a href="<?php echo site_url() ?>Dashboard/about">About Us</a></li>
                                    <li><a href="<?php echo site_url() ?>Dashboard/contact">Contact</a></li>
                                    <li><a href="<?php echo base_url()?>/dashboard/riwayat"><i class="btn btn-sm btn-default btn-flat pull-right"></i>Lihat Riwayat</a></li>
                                    <li><a href="<?php echo base_url() ?>/login_pasien/logout"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>

                                </ul>
                            </div>
                            <!-- Nav End -->
                        </div>

           <!-- Calling Info -->
                        <div class="calling-info">
                            <div class="call-center">
                                <a href="tel:+6282346934663"><i class="icon-telephone-2"></i> <span>(+62) 823 4693 4663</span></a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <br><br><br><br><br>

<!-- ##### metode hasil #####-->
<!-- <h6><strong>Nama Pasien : <?php echo $this->session->set_userdata('nama');?></strong></h6><br> -->
<div class="content" style="padding:10px 40px;">
  
    <h3>Hasil Analisis</h3>
    <div class="box box-warning">
        <div class="box-header with-border"><br><br>
            <h6 class="box-title">Gejala yang dipilih</h6>
        </div><!-- /.box-header -->
            <div class="box-body table-responsive">
            <table id="tbl-list" class="table table-bordered table-striped">
                <tr>
                    <th width="50px">No</th>
                    <th>Gejala</th>
                </tr>
                <tr>
                    <?php $i = 1; foreach($listGejala->result() as $value){?>
                        <tr>
                            <td width="30px"><?php echo $i++?></td>
                            <td><?php echo $value->kd_gejala." - ".$value->gejala?></td>
                        </tr>
                    <?php }?>
                </tr>
            </table>
        </div><!--box body-->
    </div><br><br><!--box-->
    <div class="box box-success">
        <div class="box-header with-border">
            <center><h6 class="box-title">Rumus : <br>
                                    MB Lama + (MB Baru * (1 – MB Lama)) <br>
                                    MD Lama + (MD Baru * (1 – MD Lama))<br>
                                    CF = MB – MD
            </h6></center>
            <h6 class="box-title">Hasil Diagnosa</h6>
        </div><!-- /.box-header -->
        <div class="box-body">
            <table id="tbl-list" class="table table-bordered table-striped">
                <tr>
                    <th width="50px">No</th>
                    <th>Penyakit</th>
                    <th>Tingkat Kepercayaan</th>
                </tr>
                <tr>
                    <?php $i = 1; foreach($listPenyakit as $value){?>
                        <tr>
                            <td width="30px"><?php echo $i++?></td>
                            <td><?php echo $value['kd_penyakit']." - ".$value['nm_penyakit']?></td>
                            <td><?php echo $value['kepercayaan']?> %</td>
                        </tr>
                    <?php }?>
                </tr>
            </table>
        </div><!--box body-->
    </div><br><br><!--box-->

    <div class="box box-success">
        <div class="box-header with-border">
            <h6 class="box-title">Kesimpulan</h6>
        </div><!-- /.box-header -->
        <div class="box-body">
            <?php if(sizeof($listPenyakit)>0) { ?>
                <p>
                    Berdasarkan gejalanya, pasien di prediksi mengidap penyakit <b><?php echo $listPenyakit[0]['nm_penyakit'];?></b> dengan tingkat kepercayaan <b><?php echo $listPenyakit[0]['kepercayaan'];?> %</b><br/>
                    Dengan pemberian obat <b><?php echo $listPenyakit[0]['nama_obat'];?></b> sebagai penanganan awal.
                </p>
            <?php }else{?>
                <p>
                    Penyakit tidak dapat diprediksi karena tingkat kepercayaan gejala terlalu rendah
                </p>
            <?php }?>
        </div><!--box body-->
        <div class="box-footer clearfix">
            <a class="btn btn-sm btn-primary btn-flat pull-right" href="<?php echo base_url()?>/dashboard/diagnosa">Deteksi Ulang</a>
            <button onclick="window.print()" class= btn-danger > Print / Cetak</button>
        </div>
    </div><!--box-->
</div>

<!-- template -->
<div class="bottom-footer-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area Start ##### -->

    <!-- ##### All Javascript Script ##### -->
   <!-- jQuery-2.2.4 js -->
    <script src="<?php echo base_url() ?>template/temp_user/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="<?php echo base_url() ?>template/temp_user/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="<?php echo base_url() ?>template/temp_user/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="<?php echo base_url() ?>template/temp_user/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="<?php echo base_url() ?>template/temp_user/js/active.js"></script>
</body>

</html>
