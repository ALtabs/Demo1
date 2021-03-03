<?php 
include('header.php');
?>

    <div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <!-- breadcrumb-->
              <nav aria-label="breadcrumb">
                
              </nav>
            </div>
            <div class="col-lg-3">
              <!--
              *** PAGES MENU ***
              _________________________________________________________
              -->
              <!--
              <div class="card sidebar-menu mb-4">
                <div class="card-header">
                  <h3 class="h4 card-title">Pages</h3>
                </div>
                <div class="card-body">
                  <ul class="nav nav-pills flex-column">
                    <li><a href="text.html" class="nav-link">Text page</a></li>
                    <li><a href="contact.html" class="nav-link">Contact page</a></li>
                    <li><a href="faq.html" class="nav-link">FAQ</a></li>
                  </ul>
                </div>
              </div>
              <div class="banner"><a href="#"><img src="img/banner.jpg" alt="sales 2014" class="img-fluid"></a></div>
            -->
            </div>
            <div class="col-lg-12">
              <div id="contact" class="">
                <h1>Contact</h1>
                <p class="lead">Are you curious about something? Do you have some kind of problem with our products?</p>
                <p>Please feel free to contact us.</p>
                <hr>
<?php
  $statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
  $statement->execute();
  $result = $statement->fetchAll(PDO::FETCH_ASSOC);                           
  foreach ($result as $row)
  {
    $address = $row['contact_address'];
    $phone = $row['contact_phone'];
    $fax = $row['contact_fax'];
    $email = $row['receive_email'];
    $map = $row['contact_map_iframe'];
  } 
?>

                <div class="row">
                  <div class="col-md-6">
                    <h3><i class="fa fa-phone"></i> Call center</h3>
                    <p class="text-muted">Operating Hours: <br> Monday to Friday <br> 8:30 AM - 5:30 PM.</p>
                    <table>
                      <tr>
                        <td><span class="fa fa-mobile fa-2x"></span></td>
                        <td style="color:#20c997;"> &nbsp; <?php echo $phone;?></td>
                      </tr>
                      <tr>
                        <td><span class="fa fa-fax"></span></td>
                        <td style="color:#20c997;">&nbsp; <?php echo $fax;?></td>
                      </tr>
                    </table>
                  </div>
                  <div class="col-md-6">
                    <h3><i class="fa fa-envelope"></i> Electronic support</h3>
                    <p class="text-muted">Please feel free to write an email to us.</p>
                    <ul>
                      <li><strong><a href="mailto:"><?php echo $email;?></a></strong></li>
                    </ul>
                  </div>
                </div>
                <br>
                <div class="row">
                  <div class="col-md-12">
                    <h3 style="text-align: center"><i class="fa fa-map-marker"></i>Address</h3>
                    <br><br>
                    <center><?php echo $map;?></center>
                  </div>
                </div>
                <br><hr><br>
                <h2>Contact form</h2>
                <div class="alert alert-danger" id="AlrtBlank" style="display:none">A field cannot be empty.</div>
                <div class="alert alert-success" id="AlrtSuccess" style="display:none">Your message has been sent to the developers! Thank you</div>

                <?php if (empty($_SESSION['customer']['id'])):?>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="firstname">Firstname</label>
                        <input id="firstname" type="text" class="form-control">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="lastname">Lastname</label>
                        <input id="lastname" type="text" class="form-control">
                      </div>
                    </div>
                    <div class="col-md-12">
                      <div class="form-group">
                        <label for="email">Email Address</label>
                        <input id="email" type="text" class="form-control">
                      </div>
                    </div>
                    <div class="col-md-12">
                      <div class="form-group">
                        <label for="subject">Subject</label>
                        <input id="subject" type="text" class="form-control">
                      </div>
                    </div>
                    <div class="col-md-12">
                      <div class="form-group">
                        <label for="message">Message</label>
                        <textarea id="message" class="form-control" placeholder="Your message here..."></textarea>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-12 text-center">
                    <button type="button" id="Btn_Send" class="btn btn-primary"><i class="fa fa-envelope-o"></i> Send message</button>
                  </div>
                <?php endif;
                if (!empty($_SESSION['customer']['id'])):
                   $id=$_SESSION['customer']['id'];

                    $statement=$pdo->prepare("SELECT * FROM cust_guest WHERE g_code=?");
                    $statement->execute(array($id));
                    $total = $statement->rowCount();
                    $result=$statement->fetchAll(PDO::FETCH_ASSOC);
                    if ($total!=0) {
                      foreach ($result as $row ){
                        $string=$row['full_name'];
                        $firstName1 = substr($string, 0, strpos($string, ' '));
                        $lastName1 = substr($string, strlen($firstName1));
                        $email = $row['email'];
                      }
                    }
                  ?>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="firstname">Firstname</label>
                        <input id="c_firstname" type="text" class="form-control" value="<?php echo $firstName1?>" readonly>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="lastname">Lastname</label>
                        <input id="c_lastname" type="text" class="form-control" value="<?php echo $lastName1?>" readonly>
                      </div>
                    </div>
                    <div class="col-md-12">
                      <div class="form-group">
                        <label for="email">Email Address</label>
                        <input id="c_email" type="text" class="form-control" value="<?php echo $email?>" readonly>
                      </div>
                    </div>
                    <div class="col-md-12">
                      <div class="form-group">
                        <label for="subject">Subject</label>
                        <input id="c_subject" type="text" class="form-control">
                      </div>
                    </div>
                    <div class="col-md-12">
                      <div class="form-group">
                        <label for="message">Message</label>
                        <textarea id="c_message" class="form-control" placeholder="Your message here..."></textarea>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-12 text-center">
                    <button type="button" id="c_Btn_Send" class="btn btn-primary"><i class="fa fa-envelope-o"></i> Send message</button>
                  </div>
                  <?php endif;?>
                  
              </div>
            </div>
            <!-- /.col-md-9-->
            
          </div>
        </div>
      </div>
    </div>
    <br>
    <!--
    *** FOOTER ***

    _________________________________________________________
   -->

   <?php include('footer.php');?>

   <script type="text/javascript">
     $(document).ready(function()
      {
        $('#Btn_Send').click(function()
          {
            var fname = $('#firstname').val();
            var lname = $('#lastname').val();
            var fullname = fname +' '+ lname;
            var email = $('#email').val();
            var sub = $('#subject').val();
            var msg = $('#message').val();

            if(fname == "" || lname == "" || email == "" || sub == "" || msg == "")
            {
              $('#AlrtBlank').show();
              $('#AlrtSuccess').hide();
            }
            else
            {

              $.ajax(
                {
                  url: 'Queries.php',
                  method:'POST',
                  data:
                  {
                    fullname:fullname,
                    email:email,
                    subject:sub,
                    message:msg,
                    source:'AddMsg'
                  },
                  success:function()
                  {
                    $('#AlrtBlank').hide();
                    $('#AlrtSuccess').show();
                  },
                  error:function()
                  {
                    alert('Error sending message.');
                  }
                });
            }

          });

        $("#c_Btn_Send").click(function()
          {
            var fname = $('#c_firstname').val();
            var lname = $('#c_lastname').val();
            var fullname = fname +' '+ lname;
            var email = $('#c_email').val();
            var sub = $('#c_subject').val();
            var msg = $('#c_message').val();

            if(fname == "" || lname == "" || email == "" || sub == "" || msg == "")
            {
              $('#AlrtBlank').show();
              $('#AlrtSuccess').hide();
            }
            else
            {

              $.ajax(
                {
                  url: 'Queries.php',
                  method:'POST',
                  data:
                  {
                    fullname:fullname,
                    email:email,
                    subject:sub,
                    message:msg,
                    source:'AddMsg'
                  },
                  success:function()
                  {
                    $('#AlrtBlank').hide();
                    $('#AlrtSuccess').show();
                  },
                  error:function()
                  {
                    alert('Error sending message.');
                  }
                });
            }
          });
      });
   </script>