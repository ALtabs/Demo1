<?php ob_start();
session_start();
include("admin/inc/config.php");
include("admin/inc/functions.php");
include("admin/inc/CSRF_Protect.php");
include('pagination.php');
$csrf = new CSRF_Protect(); 

require 'assets/mail/PHPMailer.php';
require 'assets/mail/Exception.php';
$mail = new PHPMailer\PHPMailer\PHPMailer();

    if (empty($_SERVER['HTTPS'])) {
        header('Location: https://azureh.com');
        exit;
    }

$error_message = '';
$success_message = '';
$error_message1 = '';
$success_message1 = '';
$message = '';

  //initialize cart if not set or is unset
  if(!isset($_SESSION['cart_p_id'])){
    $_SESSION['cart_p_id']=array();

  }

  if(!empty($_SESSION['customer']))
  {

    $id = $_SESSION['customer']['id'];
  }


 $statement = $pdo->prepare("SELECT * FROM tbl_settings");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row)
{
	//$promo=$row['ads_promo'];
	$theme=$row['color'];
   $footer=$row['footer_about'];
   $copyright=$row['footer_copyright'];
   $address=$row['contact_address'];
   $email=$row['contact_email'];
   $contact=$row['contact_phone'];
   $map_iframe=$row['contact_map_iframe'];
   $logo=$row['logo'];
   $logo1=$row['favicon'];

}
 

  
?>

<!--Global site tag (gtag.js) - Google Analytics-->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-D9JKHKLGT3"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-D9JKHKLGT3');
</script>



<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="author" content="azureh,jewelry,healthband">
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="keywords" content="jewelry-cebu,emall-earrings,cebu-rings,-philippines-health,bangles-mall,healthcare healthband,premium jewelry,necklace,bracelets,500,gifts,wedding,love,promises,passion,azureh,healthband">
 <meta name="description" content="Premium Jewelry for her,Premium Jewelry for him,health for sport,azureh, healthband, coupons, and everything else on jewelry, e-commerce,jewelry,earrings,rings,health,bangles,healthcare,premium jewelry,necklace,bracelets,500,gifts,wedding,love,promises,passion,azureh,healthband,Every story has a beginning, and behind every dream is a dreamer, with the founder's passion and eagerness in the field of fashion business combined with wellness and health Azureh was born. 
We aim to create a strong presence in the existing market to be part of every Filipino. 
We have built our reputations on four pillars of strength: Style, Quality, Innovation and Price">
<meta name="canonical" content="">
<link rel="canonical" href="https://www.azureh.com/" />
<link rel="home" href="https://azureh.com/" />
<link rel="author" href="https://azureh.com/" />


    <title>Azureh</title>
    <!-- Favicon -->

    <link rel="icon" type="image/png" href="assets/uploads/<?php echo $logo1; ?>">

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/adminlte.min.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700">

    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->

        <script>
			/*
				VIEWPORT BUG FIX
				iOS viewport scaling bug fix, by @mathias, @cheeaun and @jdalton
			*/
			(function(doc){var addEvent='addEventListener',type='gesturestart',qsa='querySelectorAll',scales=[1,1],meta=qsa in doc?doc[qsa]('meta[name=viewport]'):[];function fix(){meta.content='width=device-width,minimum-scale='+scales[0]+',maximum-scale='+scales[1];doc.removeEventListener(type,fix,true);}if((meta=meta[meta.length-1])&&addEvent in doc){fix();scales=[.25,1.6];doc[addEvent](type,fix,true);}}(document));
		</script>
  </head>

  <style type="text/css">
  
  .loader {
      z-index:10;
      height:100px;
      width:100px;
      border: 5px solid #f3f3f3;
      border-radius: 50%;
      border-top: 5px solid #4fbfa8;;
      -webkit-animation: spin 1s linear infinite; /* Safari */
      animation: spin 1s linear infinite;
}

/* Safari */
@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}

.pro_photo{

}
.pro_photo:hover{
transform: scale(1.1);

}
.responsive {
  width: 100%;
  height: 250;
  padding-bottom: 10px;
  padding: 5px;
  transition: .5s ease;
  backface-visibility: hidden;
}

.pro_photo:hover .responsive{
  opacity: 0.3;
}

.pro_photo:hover .middle {
  opacity: 1;
}


.proName{
  font-size: 15px;
   text-transform: capitalize;
}
body{
  background-color: #D0CED1 ;
}

.middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 30%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}




  </style>
  <body style="background-color: white;">
      
    <header class="header mb-6">
      <!--
      *** TOPBAR ***
      _________________________________________________________
      -->
<style type="text/css">
  .logo1{
    margin: 0 auto;
    width: 100%;
    text-align: center;
    float: center;
  }
   .cart11{
    text-align: right;
  }

  .btn-lightgreen
  {
    border-color:#4fbfa8;
    background-color:#4fbfa8;
    color:white;
  }

  .fixed
  {
    margin:10px;
    width:130px;
  }

  .nav-font
  {
    color:white;
    font-weight: bold;
    font-size:15px;
  }
</style>

      
<nav class="navbar navbar-expand-md navbar-light bg-light">
  <a class="navbar-brand" href="index.php"><img src="assets/uploads/<?php echo $logo; ?>" alt="azurehlogo"><span class="sr-only">azureh</span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
          <span class="navbar-toggler-icon"></span>
        </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
    </ul>
    <form class="form-inline my-2 my-lg-0" style="float:right">
      <ul class="navbar-nav mr-auto" >
        <?php
          if(isset($_SESSION['customer'])) {
            ?>
        <li class="navbar-item">
            <a href="index.php" class="nav-font btn fixed" style="color:black;margin:10px;">
              View Product
            </a>
        </li>
        <li class="navbar-item">
            <a href="dashboard.php" class="nav-font btn fixed" style="color:black;margin:10px;">
              Home
            </a>
        </li>
        <li class="navbar-item">
            <a href="basket.php" class="nav-font btn fixed" style="color:black;margin:10px;">
              <i class="fa fa-shopping-cart"></i><?php echo count($_SESSION['cart_p_id']); ?>
            </a>
        </li>
        <li class="navbar-item">
            <a href="signout.php" class="nav-font btn fixed" style="color:black;margin:10px;">
              Logout
            </a>
        </li>
      <?php } else { ?>
        <li class="navbar-item">
            <a href="validate.php" class="nav-font btn" style="color:black;margin:10px;">Account</a>
        </li>
        <li class="navbar-item">
            <a href="basket.php" class="nav-font btn" style="color:black;margin:10px;">
              <i class="fa fa-shopping-cart"></i><?php echo count($_SESSION['cart_p_id']); ?>
            </a>
        </li>
      <?php }?>
      </ul>
    </form>
  </div>
</nav>
    <br>
    </header>
    