<?php include('header.php');?>
   <div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
             <div class="col-lg-7 text-center">
              <div class="box">
                <h1>Create Account</h1>
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
                  <div class="alert alert-danger" id="BlankInfo" style="display:none">A field cannot be empty.</div>
                  <div class="alert alert-warning" id="PassUnmatch" style="display:none">Passwords do not match.</div>
                  <input type="text" name="cust_name" id="Txt_Fullname"class="form-control" required placeholder="Full name"><br>
                  <input type="text" name="email" id="Txt_Email" class="form-control" required placeholder="Email Address"><br>
                  <input type="text" name="phone" id="Txt_Phone"class="form-control" required placeholder="Phone Number"><br>
                  <input type="password" name="pass" id="Txt_Pass" class="form-control" required placeholder="Password"><br>
                  <input type="password" name="confirm_pass" id="Txt_ConfirmPass"class="form-control" required placeholder="Confirm Password">
                <button type="button" id="Btn_Register"class="btn btn-success">Register</button>
              </div>
            </div>
            <div class="col-lg-5">
              <div class="box">
                <img class="responsive" src="images/wallpaper1.jpg" width="500">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
   <?php include('footer.php'); ?>
   <script type="text/javascript">
     $(document).ready(function()
      {
        $('#Btn_Register').click(function()
          {
            var name = $("#Txt_Fullname").val();
            var email = $("#Txt_Fullname").val();
            var phone = $("#Txt_Phone").val();
            var pass = $("#Txt_Pass").val();
            var confpass = $("#Txt_ConfirmPass").val();
            if(name == "" || email == "" || phone == "" || pass == "" || confpass == "")
            {
              $('#BlankInfo').show();
              $('#PassUnmatch').hide();
            }
            else if (pass != confpass)
            {
              $('#PassUnmatch').show();
              $("#BlankInfo").hide();
            }
            else
            {
              $.ajax(
                {
                  url:'Queries.php',
                  method:'POST',
                  data:
                  {
                    fullname:name,
                    email:email,
                    phone:phone,
                    password:pass,
                    role: 'User',
                    status:1,
                    source:'AddCustomer'
                  },
                  success:function(data)
                  {
                    alert('done');
                  },
                  error:function(){}
                });
            }

          });
      });
   </script>