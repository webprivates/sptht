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
                            <div class="login-content">
                               <!--  <a href="#">Register Pasien / Pengunjung</a> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Navbar Area -->
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

                            <div class="classynav">
                                <ul>
                                    <li><a href="<?php echo site_url() ?>Dashboard/user">Home</a></li>
                                    <li><a href="<?php echo site_url() ?>/login_pasien">Diagnosa</a></li>
                                    <li><a href="<?php echo site_url() ?>Dashboard/about">About Us</a></li>
                                    <li><a href="<?php echo site_url() ?>Dashboard/contact">Contact</a></li>
                                    <li><a href="<?php echo base_url() ?>/login_pasien/logout"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                                </ul>
                            </div>   
                        </div>

                        <div class="calling-info">
                            <div class="call-center">
                                <a href="tel:+6282346934663"><i class="icon-telephone-2"></i> <span>(+62) 823 4693 4663</span></a>
                            </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>

    <!-- ##### Breadcumb Area Start ##### -->
    <!-- <div class="breadcumb-area bg-img" style="background-image: url(<?php echo base_url(); ?>template/temp_user/img/bg-img/breadcumb.jpg);">
        <div class="bradcumbContent">
            <h2>Registrasi</h2>
        </div>
    </div> -->
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### About Us Area Start ##### -->
   <div>

      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
            <section class="about-us-area mt-50 section-padding-100">
        <div class="container">
          <div class="row" style="text-align:center;">
            <div class="col-md-6 col-md-offset-2">
          <section class="login_content">
            <?php echo form_open('login_pasien/login', array('class'=>'login')); ?>
              <h3>SISTEM PAKAR DIAGNOSA</h3> <h4><P> P E N Y A K I T  -  T H T </P></h4> 
              <p>_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_</p>
              <br>
              <br>
              <div>
                <label for="username" class="sr-only">Masukkan Username</label>
                <input type="text" id="username" name="username" class="form-control" placeholder="Username" required autofocus />
              </div><br>
              <div>
                <label for="password"class="sr-only">Masukkan Password></label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Password" required />
              </div><br>
              <div>
                <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit">Log in</button>
              </div>
              <br><br>
              <a href="" style="text-align:left  font-size: 14px ; color: #0984e3">Lupa Kata sandi ?</a><br><br>
              <span style="font-size: 14px;">Belum Memiliki Akun ?</span><a href="<?php echo site_url() ?>/registrasi" style="font-size: 14px; color: #0984e3"> Registrasi/Daftar Sekarang !</a>

            <?php echo form_close() ?>

                <div class="clearfix"></div>
                <br />

               
              </div>
            </form>
          </section>
        </section>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- ##### About Us Area End ##### -->

    <!-- ##### Team Area Start ##### -->
    
    <!-- ##### Features Area Start ##### -->

<!-- ##### Footer Area Start ##### -->
   
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
    <script src="<?php echo base_url() ?>template/temp_user/js/jquery/jquery-3.3.1.min.js"></script>
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