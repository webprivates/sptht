

<!--<label for="username">Masukkan Username</label>
<input type="text" name="username"><br><br>
<label for="password">Masukkan Password</label>
<input type="password" name="password"><br><br>
<button type="submit" name="submit">Login</button>-->





<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>I Medical Specialist Center !| </title>

    <!-- Bootstrap -->
    <link href="<?php echo base_url() ?>template/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<?php echo base_url() ?>template/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="<?php echo base_url() ?>template/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="<?php echo base_url() ?>template/vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="<?php echo base_url() ?>template/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <?php echo form_open('admin/login', array('class'=>'login')); ?>
              <h3>SISTEM PAKAR DIAGNOSA</h3> <h4><P> P E N Y A K I T  -  T H T </P></h4> 
              <p>_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_</p>
              <br>
              <br>
              <div>
                <label for="username" class="sr-only">Masukkan Username</label>
                <input type="text" id="username" name="username" class="form-control" placeholder="Username" required autofocus />
              </div>
              <div>
                <label for="password"class="sr-only">Masukkan Password></label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Password" required />
              </div>
              <div>
                <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit">Log in</button>
               
              </div>
            <?php echo form_close() ?>

            

                <div class="clearfix"></div>
                <br />

               
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>


