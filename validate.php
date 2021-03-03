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

if(isset($_POST['form1'])) {
        
    if(empty($_POST['loginemail']) || empty($_POST['loginpassword'])) {
        $error_message = "Email and Password should not be empty".'<br>';
    } else {
        
        $cust_email = strip_tags($_POST['loginemail']);
        $cust_password = strip_tags($_POST['loginpassword']);

        $statement = $pdo->prepare("SELECT * FROM tbl_user WHERE email=?");
        $statement->execute(array($cust_email));
        $total = $statement->rowCount();
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
        foreach($result as $row) {
            $cust_status = $row['user_status'];
            $row_password = $row['password'];
            $row_role = $row['role'];
        }

        if($total==0) {
            $error_message .= "Username or password does not match.".'<br>';
        } 
        else if ($row['user_status'] == 0)
        {
          $error_message .= "This account has been blocked by the administrator.".'<br>';
        }
        else {

            if( $row_password != md5($cust_password) ) {
                $error_message .= "Password is Invalid".'<br>';
            } else {
                if($cust_status == 0) {
                    $error_message .= "Please verify your account".'<br>';
                } else 
                {
                  if($row_role != "guest")
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

<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Azureh Login</title>
  <link href="https://fonts.googleapis.com/css?family=Rajdhani:300,400,500,600,700" rel="stylesheet">
  <link rel="icon" type="image/png" href="assets/uploads/<?php echo $logo1; ?>">
  <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>

      <link rel="stylesheet" href="css/style.css">

      <?php 
          $section12='Above_Welcome_Section';

      $statement=$pdo->prepare("SELECT * FROM tbl_advertisement WHERE adv_location=? ");
            $statement->execute(array($section12));
            $result=$statement->fetchAll();
            foreach ($result as $key) {
              $logo12=$key['adv_photo'];
            }

       ?>

<style type="text/css">
  
.brand {
  padding: 40px;
  border-radius: 4px 0 0 4px;
  background: url("assets/uploads/<?php echo $logo12;?>");
  background-size: cover;
  background-position: left center;
  color: #fff;
  min-height: 480px;
  position: relative;
  transition: all 0.6s cubic-bezier(1, -0.375, 0.285, 0.995);
  z-index: 9999;
}
.brand.active {
  width: 100%;
}
.brand::before {
  content: "";
  display: block;
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  left: 0;
  z-index: -1;
}
.brand a.logo {
  text-decoration: none;
  line-height: 1em;
  border-radius: 4px;
}
.brand a.logo img {
  width: 60px;
}
.brand .heading {
  position: absolute;
  bottom: 30px;
  text-align: left;
  width: 80%;
  transition: all 0.6s;
}
.brand .heading.active {
  top: 120px;
  left: 100px;
  text-align: center;
  transform: translate(0);
}
.brand .heading h2 {
  font-size: 28px;
  font-weight: 600;
  text-transform: uppercase;
  margin-bottom: 0.5em;
  font-family: "Rajdhani", sans-serif;
}
.brand .heading p {
  font-size: 16px;
  font-weight: 400;
  color: #cfd4dd;
  white-space: 4px;
  font-family: "Nimbus-sans", sans-serif;
}
.brand .success-msg {
  width: 100%;
  text-align: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  margin-top: 60px;
}
.brand .success-msg p {
  font-size: 25px;
  font-weight: 400;
  font-family: "Rajdhani", sans-serif;
}
.brand .success-msg a {
  font-family: "Rajdhani", sans-serif;
  font-weight: 600;
  font-size: 16px;
  text-transform: uppercase;
  padding: 8px 30px;
  background: #00a2e5;
  text-decoration: none;
  color: #fff;
  border-radius: 4px;
}
.brand .success-msg p, .brand .success-msg a {
  transition: all 0.9s;
  transform: translateY(20px);
  opacity: 0;
}
.brand .success-msg p.active, .brand .success-msg a.active {
  transform: translateY(0);
  opacity: 1;
}

</style>  
</head>

<body>
    <header class="header mb-6">
      <!--
      *** TOPBAR ***
      _________________________________________________________
      -->
      <div id="top">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-6 offer mb-1 mb-lg-0"><a href="#" class="btn  btn-sm"></a><a href="#" class="ml-1"></a></div>
            <div class="col-lg-6 text-center text-lg-right">
              <ul class="menu list-inline mb-0 cart11">

                  <?php
          if(isset($_SESSION['customer'])) {
            ?>
             <li class="list-inline-item" ><a href="index.php" style="background-color:#4fbfa8"class="btn btn-primary navbar-btn"><i class="fa fa-shopping-bag"></i> View Product</a></li>
            <li class="list-inline-item"><a href="dashboard.php" class="btn btn-primary navbar-btn"><i class="fa fa-home"></i></a></li>
            <li class="list-inline-item"><a href="signout.php" class="btn btn-primary navbar-btn"><i class="fa fa-sign-out"></i></a></li>
            <?php
          } else {
            ?>

             <li class="list-inline-item" ><a href="index.php" style="background-color:#4fbfa8"class="btn btn-primary navbar-btn"><i class="fa fa-shopping-bag"></i> View Product</a></li>
            
            <?php 
          }
          ?>
               
                
              </ul>
            </div>
          </div>
        </div>
      
      </div>
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
</style>
        <nav class="navbar navbar-expand-lg">
         

            
           
        </div>
      </nav>
    <br>
    </header>

  <div class="container">
   <section id="formHolder">
      <div class="row">
         <div class="col-sm-6 brand">
            <div class="success-msg">
               <p>Great! You have successfully created your Profile</p>
               <a href="http://upturnit.com/product.php" class="profile">Click for My Portfolio</a>
            </div>
         </div>
         <!-- Form Box -->
         <div class="col-sm-6 form">
            <div class="signup form-peice switched">
               <form class="signup-form" action="" method="post">
                  <div class="form-heading">
                   <h2>Create Account</h2>
                  </div>
                  <div class="form-group">
                      <div class="row">
                          <div class="col-sm-6">
                              <label for="name">First Name</label>
                              <input type="text" name="fname" id="Txt_Firstname" class="name">
                              <span class="error"></span>
                          </div>
                          <div class="col-sm-6">
                              <label for="name">Last Name</label>
                              <input type="text" name="lname" id="Txt_Lastname" class="name">
                              <span class="error"></span>
                          </div>
                      </div>
                     
                     <span class="error"></span>
                  </div>

                  <div class="form-group">
                     <label for="email">Email Address</label>
                     <input type="email" name="emailAdress" id="Txt_Email" class="email">
                     <span class="error"></span>
                  </div>

            <div class="form-group">
                     <label for="phone">Phone Number</label>
                     <input type="text" name="phone" id="Txt_Phone" class="phone" onkeypress="return isNumberKey(event)">
                     <span class="error"></span>
                  </div>

                  <div class="form-group">
                     <label for="password">Password</label>
                     <input type="password" name="password" id="Txt_Pass" class="pass">
                     <span class="error"></span>
                  </div>

                  <div class="form-group">
                     <label for="passwordCon">Confirm Password</label>
                     <input type="password" name="passwordCon" id="Txt_ConfirmPass" class="passConfirm">
                     <span class="error"></span>
                  </div>

                  <div class="CTA">
                     <input type="submit" style="background-color:#4fbfa8" value="Signup Now" id="submit">
                     <a href="#" class="switch" id="IHaveAcc">I have an account</a>
                  </div>
               </form>
            </div>
            <div class="login form-peice">
               <form class="login-form" action="" method="post">
                  <div class="form-heading">
                    <h2>Sign In</h2>
                  </div>
                  <div class='form-group'>
                    <label class="text-success" id="AccSuccess" style="display:none">Account successfully registered.</label>
                    <?php
                    if($error_message != '') {
                    echo "<label class='text-danger'>".$error_message."</label>";
                        }
                      if($success_message != '') {
                      echo "<label class='text-success'>".$success_message."</label>";
                                }
                                ?>
                  </div>
                <br>
                  <div class="form-group">
                     <label for="loginemail">Email Address</label>
                     <input type="email" name="loginemail" required>
                  </div>

                  <div class="form-group">
                     <label for="loginPassword">Password</label>
                     <input type="password" name="loginpassword" required>
                  </div>

                  <div class="CTA">
                     <input type="submit" name="form1" style="background-color:#4fbfa8" value="Sign In">
                     <a href="#" class="switch">I'm New User</a>
                  </div>
               </form>
            </div><!-- End Signup Form -->
         </div>
      </div>
   </section>


</div>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script  src="js/index.js"></script>
<script type="text/javascript">

function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}
  $(document).ready(function()
    {
        function isEmail(email) {
  var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  return regex.test(email);
  
}
        
        $("#Txt_Phone").attr('maxlength','11');
        
      $('#submit').click(function()
          {
            var fname = $("#Txt_Firstname").val();
            var lname = $("#Txt_Lastname").val();
            var email = $("#Txt_Email").val();
            var phone = $("#Txt_Phone").val();
            var pass = $("#Txt_Pass").val();
            var confpass = $("#Txt_ConfirmPass").val();
            if(fname == "" || lname==""|| email == "" || phone == "" || pass == "" || confpass == "")
            {
              $("#AlrtBlank").show();
              $("#AlrtUnmatch").hide();
              $('#AlrtSuccess').hide();
              $("#AccSuccess").hide();
              <?php $error_message = '';?>
            }
            else if (pass != confpass)
            {
              $("#AlrtUnmatch").show();
              $("#AlrtBlank").hide();
              $('#AlrtSuccess').hide();
              $("#AccSuccess").hide();
              <?php $error_message = '';?>
            }
            else
            {
              $.ajax(
                {
                  url:'Queries.php',
                  method:'POST',
                  data:
                  {
                    fname:fname,
                    lname:lname,
                    email:email,
                    phone:phone,
                    password:pass,
                    role: 'guest',
                    photo: 0,
                    status:1,
                    source:'AddCustomer'
                  },
                  success:function(data)
                  {
                    $("#AlrtUnmatch").hide();
                    $("#AlrtBlank").hide();
                    $('#AlrtSuccess').show();
                    $("#Txt_Fullname").val('');
                    $("#Txt_Email").val('');
                    $("#Txt_Phone").val('');
                    <?php $error_message = '';?>
                    $("#Txt_Pass").val('');
                    $("#Txt_ConfirmPass").val('');
                    $("#AccSuccess").show();
                    $("#IHaveAcc").trigger('click');

                  },
                  error:function()
                  {
                    alert('Error registering account.');
                  }
                });
            }
          });
    });
</script>
</body>
</html>
