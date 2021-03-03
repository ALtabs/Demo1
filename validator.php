<!DOCTYPE html>
<?php ob_start();
session_start();
include("admin/inc/config.php");
include("admin/inc/functions.php");
include("admin/inc/CSRF_Protect.php");
$csrf = new CSRF_Protect(); 

require 'assets/mail/PHPMailer.php';
require 'assets/mail/Exception.php';
$mail = new PHPMailer\PHPMailer\PHPMailer();

$error_message = '';
$success_message = '';
$error_message1 = '';
$success_message1 = '';


if(isset($_POST['form1'])) {
        
    if(empty($_POST['cust_email']) || empty($_POST['cust_password'])) {
        $error_message = "Email and Password should not be empty".'<br>';
    } else {
        
        $cust_email = strip_tags($_POST['cust_email']);
        $cust_password = strip_tags($_POST['cust_password']);

        $statement = $pdo->prepare("SELECT * FROM tbl_user WHERE email=?");
        $statement->execute(array($cust_email));
        $total = $statement->rowCount();
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
        foreach($result as $row) {
            $cust_status = $row['status'];
            $row_password = $row['password'];
            $row_role = $row['role'];
        }

        if($total==0) {
            $error_message .= "no value is Invalid".'<br>';
        } else {

            if( $row_password != md5($cust_password) ) {
                $error_message .= "Password is Invalid".'<br>';
            } else {
                if($cust_status == 0) {
                    $error_message .= "Please verify your account".'<br>';
                } else 
                {
                  if($row_role == "DATADMIN")
                  {
                    $_SESSION['user'] = $row;
                    header("location:".BASE_URL."admin/index.php");
                  }
                  else
                  {
                    $_SESSION['customer'] = $row;
                    header("location: ".BASE_URL."dashboard.php");
                  }
                }
            }
            
        }
    }
}
  
?>

<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Azureh</title>
    <!-- Favicon -->

    <link rel="icon" type="image/png" href="images/logo1.png">

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700">
    <!-- owl carousel-->
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
  
   
    
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

        <script>
      /*
        VIEWPORT BUG FIX
        iOS viewport scaling bug fix, by @mathias, @cheeaun and @jdalton
      */
      (function(doc){var addEvent='addEventListener',type='gesturestart',qsa='querySelectorAll',scales=[1,1],meta=qsa in doc?doc[qsa]('meta[name=viewport]'):[];function fix(){meta.content='width=device-width,minimum-scale='+scales[0]+',maximum-scale='+scales[1];doc.removeEventListener(type,fix,true);}if((meta=meta[meta.length-1])&&addEvent in doc){fix();scales=[.25,1.6];doc[addEvent](type,fix,true);}}(document));
    </script>
  </head>

  <style type="text/css">
    
    @media only screen and (min-width: 600px) {
  /* For tablets: */
  .col-s-1 {width: 8.33%;}
  .col-s-2 {width: 16.66%;}
  .col-s-3 {width: 25%;}
  .col-s-4 {width: 33.33%;}
  .col-s-5 {width: 41.66%;}
  .col-s-6 {width: 50%;}
  .col-s-7 {width: 58.33%;}
  .col-s-8 {width: 66.66%;}
  .col-s-9 {width: 75%;}
  .col-s-10 {width: 83.33%;}
  .col-s-11 {width: 91.66%;}
  .col-s-12 {width: 100%;}
}
@media only screen and (min-width: 768px) {
  /* For desktop: */
  .col-1 {width: 8.33%;}
  .col-2 {width: 16.66%;}
  .col-3 {width: 25%;}
  .col-4 {width: 33.33%;}
  .col-5 {width: 41.66%;}
  .col-6 {width: 50%;}
  .col-7 {width: 58.33%;}
  .col-8 {width: 66.66%;}
  .col-9 {width: 75%;}
  .col-10 {width: 83.33%;}
  .col-11 {width: 91.66%;}
  .col-12 {width: 100%;}
}

.pro_photo{

  background-color: #F5F7F6;
}
.pro_photo:hover{
transform: scale(1.1);
}
.responsive {
  width: 100%;
  height: 250;
  padding-bottom: 10px;
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 5px;
  transition: .5s ease;
  backface-visibility: hidden;
}

.responsive:hover {
  box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
  opacity: 0.3;
}
.proName{
  font-size: 15px;
   text-transform: uppercase;
}
body{
  background-color: #D0CED1 ;
}
  </style>
  <body>
    <!-- navbar-->
    <header class="header mb-5">
      <!--
      *** TOPBAR ***
      _________________________________________________________
      -->
      <div id="top">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 offer mb-3 mb-lg-0"><a href="#" class="btn  btn-sm"></a><a href="#" class="ml-1"></a></div>
            <div class="col-lg-6 text-center text-lg-right">
              <ul class="menu list-inline mb-0">

                  <?php
          if(isset($_SESSION['customer'])) {
            ?>
            <li><i class="fa fa-user"></i><?php echo $_SESSION['customer']['name']; ?></li>
            <li><a href="dashboard.php"><i class="fa fa-home"></i></a></li>
            <?php
          } else {
            ?>
            <li class="list-inline-item"><a href="validator.php" class="btn btn-primary navbar-btn">Login</a></li>
                <li class="list-inline-item"><a href="register.php" class="btn btn-primary navbar-btn">Sign Up</a></li>
            <?php 
          }
          ?>
               
                
              </ul>
            </div>
          </div>
        </div>

      </div>

        <nav class="navbar navbar-expand-lg">
        <div class="container"><a href="index.html" class="navbar-brand home"><img src="images/logo.png" alt="Obaju logo" class="d-none d-md-inline-block" style="width: 150px; height: 60px"></a>
          <div class="navbar-buttons">
            <a href="basket.html" class="btn btn-primary navbar-btn navbar-toggler"><i class="fa fa-shopping-cart"></i></a>
          </div>
           <div id="navigation" class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
              
            <!--Main Menu-->
           
            </ul>
            <div class="navbar-buttons d-flex justify-content-end">
              <!-- /.nav-collapse-->
              <div id="search-not-mobile" class="navbar-collapse collapse">
              <div id="basket-overview" class="navbar-collapse collapse d-none d-lg-block"><a href="basket.html" class="btn btn-primary navbar-btn"><i class="fa fa-shopping-cart"></i><span></span></a></div>
            </div>
          </div>
        </div>
      </nav>
     
    </header>
   <div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 align-center">
              <div class="box">
                <h1>Login</h1>
                <p class="lead"></p>

                <?php
                    if($error_message != '') {
                    echo "<div class='danger' style='padding: 10px;background:#f1f1f1;margin-bottom:20px; color:red'>".$error_message."</div>";
                        }
                      if($success_message != '') {
                      echo "<div class='success' style='padding: 10px;background:#f1f1f1;margin-bottom:20px;color:green'>".$success_message."</div>";
                                }
                                ?>
                <hr>
                <form action="" method="post">
                  <?php $csrf->echoInputField(); ?>    
                  <div class="form-group">
                    <label for="email">Email</label>
                     <input type="email" class="form-control" name="cust_email">
                  </div>
                  <div class="form-group">
                    <label for="password">Password</label>
                   <input type="password" class="form-control" name="cust_password">
                  </div>
                  <div class="text-center">
                    <button type="submit" class="btn btn-primary" name="form1"><i class="fa fa-sign-in"></i> Log in</button>

                  </div>
                  <br>
                </form>
                <p class="read-more text-center"><a href="post.html" class="btn btn-primary text-center">Create Account</a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--
    *** FOOTER ***
    _________________________________________________________
    -->
  <?php 

 $statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row)
{
   $footer=$row['footer_about'];
   $copyright=$row['footer_copyright'];
   $address=$row['contact_address'];
   $email=$row['contact_email'];
   $contact=$row['contact_phone'];
   $map_iframe=$row['contact_map_iframe'];
}
  ?>
     <div id="footer" style="background-color: white">
      <div class="container">
        <div class="row">
          <!-- /.col-lg-3-->
          <div class="col-lg-3 col-md-6">
            <h4 class="mb-3">About Us</h4>
           <h5><?php echo$footer; ?></h5>
           <!-- <ul class="list-unstyled">
              <li><a href="category.html">T-shirts</a></li>
              <li><a href="category.html">Shirts</a></li>
              <li><a href="category.html">Accessories</a></li>
            </ul>-->
            <hr>
            <h4><a href="#"> Contact Us</a></h4>
            <ul class="list-unstyled">
              <li><p><?php echo $contact; ?> <br> <?php echo $email?></p></li>
             
            </ul>
          </div>
          <!-- /.col-lg-3-->
          <div class="col-lg-3 col-md-6">
            <h4 class="mb-3">Where to find us</h4>
            <p><strong><?php echo $address?></strong><br></p><a href="contact.html">Go to contact page</a>
            <hr class="d-block d-md-none">
          </div>
          <!-- /.col-lg-3-->
          <div class="col-lg-6 col-md-6">
            <h4 class="mb-3">Get the news</h4>
            <p class="text-muted">Get the latest updates by joining our newsletter!</p>
            <form>
              <div class="input-group">
                <input type="text" class="form-control"><span class="input-group-append">
                  <button type="button" class="btn btn-outline-secondary">Subscribe!</button></span>
              </div>
              <!-- /input-group-->
            </form>
            <hr>
            <h4 class="mb-3">Stay in touch</h4>
            <p class="social">
            <?php  $statement = $pdo->prepare("SELECT * FROM tbl_social");
                   $statement->execute();
                   $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                    foreach ($result as $row) {?>
                    <?php if($row['social_url'] != ''): ?>
              <a href="<?php echo $row['social_url']; ?>" class="facebook external"><i class="<?php echo $row['social_icon']; ?>"></i></a>
                
              <?php endif; ?>
              <?php }
                   ?>
                 </p>
          </div>
          <!-- /.col-lg-3-->
        </div>
        <!-- /.row-->
      </div>
      <!-- /.container-->
    </div>
    <!-- /#footer-->
    <!-- *** FOOTER END ***-->
    
    
    <!--
    *** COPYRIGHT ***
    _________________________________________________________
    -->
    <div id="copyright">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 mb-2 mb-lg-0">
            <p class="text-center text-lg-left"><?php echo  $copyright; ?></p>
          </div>
        </div>
      </div>
    </div>
    <!-- *** COPYRIGHT END ***-->
    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
    <script src="js/front.js"></script>
  </body>
</html>