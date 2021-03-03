<?php include('header.php');
$id = $_SESSION['customer']['id'];
?>

    <div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <!-- breadcrumb-->
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li aria-current="page" class="breadcrumb-item active">My account</li>
                </ol>
              </nav>
            </div>
            <div class="col-lg-3">
              <!--
              *** CUSTOMER MENU ***
              _________________________________________________________
              -->
              <div class="card sidebar-menu">
                <div class="card-header">
                  <h3 class="h4 card-title">Customer section</h3>
                </div>
                <div class="card-body">
                  <ul class="nav nav-pills flex-column">
                    <a href="dashboard.php" class="nav-link active"><i class="fa fa-list"></i> My orders</a>
                    <a href="customer-account.php" class="nav-link"><i class="fa fa-user"></i> My account</a>
                  </ul>
                </div>
              </div>
              <!-- /.col-lg-3-->
              <!-- *** CUSTOMER MENU END ***-->
            </div>
            <div class="col-lg-9">
              <div class="box">
                <h1>My account</h1>
                <div id="Personal_Details_filled">
                <h3 class="mt-5">Personal details</h3>
                <div class="alert alert-success" style="display:none" id="EditSuccess">Personal details successfully edited.</div>
                <div class="alert alert-warning" style="display:none" id="BlankRegion">Please input region.</div>
                <div class="alert alert-danger" style="display:none" id="BlankPostal">Postal is required.</div>

                    <?php
                    
                    $user=$pdo->prepare('SELECT * FROM cust_guest i INNER JOIN cities ii on ii.city_id = i.cities INNER JOIN provinces iii ON iii.province_id = ii.province_id WHERE g_code = ?');
                      $user->execute(array($id));
                      $result = $user->fetchAll(PDO::FETCH_ASSOC);
                      $total = $user->rowCount();
 
                    if($total!=0){
                        
                        foreach($result as $row):
                        
                    ?>
                    <div class="row" style="display:none">
                        <div class="col-md-6">
                            <div class="form-group">
                                <img src="assets/uploads/users/<?php echo $row['photo'];?>">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="firstname">Firstname</label><br>
                          <input type="text" id="LblFname" name="info"class="form-control" value="<?php echo $row['first_name'];?>" readonly>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="lastname">Lastname</label><br>
                          <input type="text" id="LblLname"name="info"class="form-control" value="<?php echo $row['last_name'];?>" readonly>
                        </div>
                      </div>
                    </div>
                    <!-- /.row-->
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="company">Address 1</label><br>
                          <input type="text" id="Lbladd1"name="info" class="form-control" value="<?php echo $row['add1'];?>" readonly>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="street">Address 2</label><br>
                          <input type="text" id="Lbladd2"name="info" class="form-control" value="<?php echo $row['add2'];?>" readonly>
                        </div>
                      </div>
                    </div>
                    <!-- /.row-->
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="phone">Telephone</label><br>
                          <input type="text" id="LblTel" name="info" class="form-control" value="<?php echo $row['phonenum'];?>" readonly>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="email">Email</label><br>
                          <input type="text" id="LblEmail" name="info" class="form-control" value="<?php echo $row['email'];?>" readonly>
                        </div>
                      </div>
                    </div>
                    <div class="row" id="DIV1">
                      <div class="col-md-6 col-lg-6">
                        <div class="form-group">
                          <label for="company">Province</label><br>
                          <input type="text" id="LblMuni"name="info" class="form-control" value="<?php echo $row['province_name'];?>" readonly>
                        </div>
                       
                      </div>
                      <div class="col-md-6 col-lg-6">
                        <div class="form-group">
                          <label for="state">Municipal/City</label><br>
                          <input type="text" id="LblCity"name="info"class="form-control"value="<?php echo $row['city_name'];?>"readonly>
                        </div>
                        
                      </div>
                    <label id="LblZip" class="form-control" style="display:none"><?php echo $row['zipcode'];?></label>
                      </div>
                      <div class="row" id="DIV2" style="display:none">
                        <div class="col-md-6 col-lg-6">
                          <div class="form-group">
                            <label for="company">Province</label><br>
                            <select name="province" id="CMBProvince" class="form-control">
                              <option>Select Region</option>
                            <?php
                            $query = $pdo->prepare("SELECT * FROM provinces");
                            $query->execute();
                            $result = $query->fetchAll();
                            foreach($result as $row)
                            {
                              ?>
                              <option value="<?php echo $row['province_id']; ?> " > <?php echo $row['province_name'];?></option> 
                              <?php
                            } 
                            ?>
                            </select>
                          </div>
                        </div>
                        <div class="col-md-6 col-lg-6">
                          <div class="form-group">
                            <label for="city">Municipal/City</label><br>
                            <select class="form-control" name="city" id="City">
                              
                            </select>
                          </div>
                         
                        </div>

                            <div id="Txt_Zipcode" style="display:none"></div>

                        <div class="DIV3">
                        
                        </div>
                      </div>
                      <div class="col-md-12 text-center">
                            <button type="button" id="Btn_Edit" class="btn btn-info"><i class="fa fa-save"></i> Edit Info</button>
                            <button type="button" id="Btn_Save" style="display:none" class="btn btn-primary"><i class="fa fa-save"></i> Save Changes</button>
                        </div>
                      <?php endforeach; } else{?>
                      <div class="row" style="display:none">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="file" class="form-control">
                            </div>
                        </div>
                    </div>
                      <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="firstname">Firstname</label><br>
                          <input type="text" id="LblNFname" name="info"class="form-control"  value="<?php echo $_SESSION['customer']['first_name'];?>" readonly>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="lastname">Lastname</label><br>
                          <input type="text" id="LblNLname"name="info"class="form-control"  value="<?php echo $_SESSION['customer']['last_name'];?>" readonly>
                        </div>
                      </div>
                    </div>
                    <!-- /.row-->
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="company">Address 1</label><br>
                          <input type="text" id="LblNadd1"name="info" class="form-control" placeholder="Address 1">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="street">Address 2</label><br>
                          <input type="text" id="LblNadd2"name="info" class="form-control" placeholder="Address 2 (Optional)">
                        </div>
                      </div>
                    </div>
                    <!-- /.row-->
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="phone">Telephone</label><br>
                          <input type="text" id="LblNTel" name="info" class="form-control" value="<?php echo $_SESSION['customer']['phone'];?>" readonly>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="email">Email</label><br>
                          <input type="text" id="LblNEmail" name="info" class="form-control" value="<?php echo $_SESSION['customer']['email'];?>" readonly>
                        </div>
                      </div>
                    </div>
                      <div class="row">
                        <div class="col-md-6 col-lg-6">
                          <div class="form-group">
                            <label for="company">Province</label><br>
                            <select name="province" id="CMBNProvince" class="form-control">
                              <option>Select Region</option>
                            <?php
                            $query = $pdo->prepare("SELECT * FROM provinces");
                            $query->execute();
                            $result = $query->fetchAll();
                            foreach($result as $row)
                            {
                              ?>
                              <option value="<?php echo $row['province_id']; ?> " > <?php echo $row['province_name'];?></option> 
                              <?php
                            } 
                            ?>
                            </select>
                          </div>
                        </div>
                        <div class="col-md-6 col-lg-6">
                          <div class="form-group">
                            <label for="city">Municipal/City</label><br>
                            <select class="form-control" name="city" id="NCity">
                              
                            </select>
                          </div>
                         
                        </div>
                            <div id="Txt_NZipcode" style="display:none"></div>
                        <div class="col-md-6">
                          <button type="button" class="btn btn-primary" style="float:right" id="BtnSave_New" >Save info</button
                        </div>
                    </div>
                      <?php }?> 
                </div>
              </div>
              <br>
              <hr>
              <br>
              <h3 class="lead">Change your personal details or your password here.</h3><br>
                <div class="alert alert-danger" id="BlankNewPass" style="display:none">Please input old password.</div>
                <div class="alert alert-warning" id="PassIncorrect" style="display:none">Password incorrect.</div>
                <div class="alert alert-warning" id="BlankPass" style="display:none">A field cannot be empty.</div>
                <div class="alert alert-danger" id="PassNotMatch" style="display:none">Passwords do not match.</div>
                <div class="alert alert-success" id="PassSuccess" style="display:none">Password successfully changed.</div>
                <form>
                  <div class="row" id="CheckPass">
                    <div class="col-md-6">
                      <div class="form-group">
                        <input id="password_old" type="password" class="form-control" placeholder="Old Password">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <button type="button" id="Btn_CheckPass" class="btn btn-primary">Check</button>
                      </div>
                    </div>
                  </div>
                  <div id="NewPass" style="display:none">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="password_1">New password</label>
                          <input id="Txt_Pass" type="password" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="password_2">Retype new password</label>
                          <input id="Txt_ConfirmPass" type="password" class="form-control">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-12 text-right">
                        <button type="button" id="Btn_NewPass" class="btn btn-primary"><i class="fa fa-save"></i> Save new password</button>
                      </div>
                    </div>
                  </div>
                </form>
            </div>
          </div>
        </div>
      </div>
    </div>
   
<div class="modal fade" id="loader" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" data-backdrop="static">
  <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
    <div class="loader">
    </div>
    <h2 style="color:white">&nbsp;&nbsp;Loading..</h2>
  </div>
</div>

<?php include('footer.php');?>

<script type="text/javascript">
  function fetch_data()
  {
    var operation = "fetching_the_data";
    $.ajax({
      type: 'POST',
      url:'Queries2.php',
      data:{guest:operation},
      success:function(s)
      {
        $('.DIV3').html(s);
      },
    });
  }
</script>

<script type="text/javascript">
  $(document).ready(function()
    {
        $("#password_old").keyup(function(event) {
            if (event.keyCode === 13) {
                $("#Btn_CheckPass").click();
            }
        });

      $('#Btn_CheckPass').click(function()
        {
          
          var oldpass = $("#password_old").val();
          if(oldpass == "")
          {
            $('#BlankNewPass').show();
            $('#PassSuccess').hide();
          }
          else
          {
            var id = <?php echo $id;?>;
            var pass = $("#password_old").val();
            $.ajax(
              {
                url:'PassQuery.php',
                method:'POST',
                data:
                {
                  Logid:id,
                  pass:pass,
                  source: 'ConfirmPass'
                },
                success:function(g)
                {
                  if(g == "exist")
                  {
                    $('#BlankNewPass').hide();
                    $('#PassIncorrect').hide();
                    $('#NewPass').show();
                    $('#PassSuccess').hide();
                    $('#CheckPass').hide();
                  }
                  else if (g == "notexist")
                  {
                    $('#PassIncorrect').show();
                    $('#PassSuccess').hide();
                    $('#BlankNewPass').hide();
                  }
                },
                error:function()
                {
                    alert('Error validating password.');
                }
              });


            
          }
        });
        
        $("#Txt_Pass").keyup(function(event) {
    if (event.keyCode === 13) {
        $("#Btn_NewPass").click();
    }
});

$("#Txt_ConfirmPass").keyup(function(event) {
    if (event.keyCode === 13) {
        $("#Btn_NewPass").click();
    }
});

      $('#Btn_NewPass').click(function()
        {
          var passid = <?php echo $id;?>;
          var pass = $('#Txt_Pass').val();
          var confirmpass = $('#Txt_ConfirmPass').val();
          if(pass == "" || confirmpass == "")
          {
            $('#BlankPass').show();
          }
          else if (pass != confirmpass)
          {
            $('#BlankPass').hide();
            $('#PassNotMatch').show();
            $('#PassSuccess').hide();
          }
          else
          {    
            var passid = <?php echo $id;?>;
            var pass = $('#Txt_Pass').val();
            $.ajax(
              {
                url:'PassQuery.php',
                method:'POST',
                data:
                {
                  pass:pass,
                  userid:passid,
                  source:'ChangePass'
                },
                success:function()
                {
                  $('#BlankPass').hide();
                  $('#PassNotMatch').hide();
                  $('#PassSuccess').show();
                  $("#password_old").val('');
                  $('#NewPass').hide();
                  $('#CheckPass').show();
                },
                error:function()
                {
                  alert('Error changing new password.');
                }
              });
            
          }
          
        });

      $('#Btn_Edit').click(function()
        {
          $('input[name="info"]').prop('readonly',false);
          $('#NameGroup2').show();
          $('#NameGroup1').hide();
          $('#Btn_Save').show();
          $('#Btn_Edit').hide();
          $('#DIV1').hide();
          $('#DIV2').show();
        });

      $('#Btn_Save').click(function()
        {
          $('#NameGroup2').hide();
          $('#NameGroup1').show();
          var fname = $('#LblFname').val();
          var lname = $('#LblLname').val();
          var fullname = fname +' '+lname;
          var add1 = $('#Lbladd1').val();
          var add2 = $('#Lbladd2').val();
          var muni = $('#CMBProvince').val();
          var city  = $('#City').val();
          var tel  = $('#LblTel').val();
          var email  = $('#LblEmail').val();
          var zip = $('#Txt_Zipcode').val();
          $('input[name="info"]').prop('readonly',true);
          var id = <?php echo $id;?>;
          if(muni == "Select Region" || city == "Select City/Municipal" && zip == "")
          {
            $('#BlankRegion').show();
            $('#BlankPostal').show();
            $('#CMBProvince').css('border-color','red');
          }
          else
          {
             $.ajax({
              url:'Queries.php',
              method: 'POST',
              data:
              {
                full_name: fullname,
                add1:add1,
                add2:add2,
                muni:muni,
                cities:city,
                phonenum:tel,
                email:email,
                g_code:id,
                source:'Edit'
              },
              success:function(data)
              {
                fetch_data();
                $('#EditSuccess').show();
                $('.DIV3').show();
                $('#BlankRegion').hide();
                $('#BlankPostal').hide();
                $('#DIV2').hide();
                $('#Btn_Save').hide();
                $('#Btn_Edit').show();
                setTimeout(function(){
                  location.reload();
                }, 3000);
                
              },
              error:function()
              {}
            });
          } 
          
        });

        $(document).on('change','#CMBProvince',function()
          {
              $("#loader").modal('show');
            var province = $(this).val();
            $.ajax({
              method:'POST',
              url:'Queries2.php',
              data:
              {
                id:province
              },
              dataType:"html",
              success:function(data)
              {
                setTimeout(function(){ $("#loader").modal('hide');$('#City').html(data); }, 1000);
                    
              },
              error:function()
              {
                  Alert('Error loading city, try again later.');
              }
            });
          });

        $(document).on('change', '#City',function(){
           var cities = $(this).val();
            $.ajax({
              method:'POST',
              url:'Queries2.php',
              data:
              {
                postal:cities
              },
              dataType:"html",
              success:function(data)
              {
                $('#Txt_Zipcode').html(data);
              },
              error:function()
              {}
            });
        });

        $(document).on('change','#CMBNProvince',function()
          {
             $("#loader").modal('show');
            var province = $(this).val();
            $.ajax({
              method:'POST',
              url:'Queries2.php',
              data:
              {
                id:province
              },
              dataType:"html",
              success:function(data)
              {
               setTimeout(function(){ $("#loader").modal('hide');$('#NCity').html(data); }, 1000);
              },
              error:function()
              {}
            });
          });

        $(document).on('change', '#NCity',function(){
           var cities = $(this).val();
            $.ajax({
              method:'POST',
              url:'Queries2.php',
              data:
              {
                postal:cities
              },
              dataType:"html",
              success:function(data)
              {
                $('#Txt_NZipcode').html(data);
              },
              error:function()
              {}
            });
        });

        $("#BtnSave_New").click(function()
        { 
            var fname = $("#LblNFname").val();
            var lname = $("#LblNLname").val();
            var add1 = $("#LblNadd1").val();
            var add2 = $("#LblNadd2").val();
            var tel = $("#LblNTel").val();
            var email = $("#LblNEmail").val();
            var prov = $("#CMBNProvince").val();
            var city = $("#NCity").val();
            var code = $("#Txt_NZipcode").html();
            var id= <?php echo $id;?>;
            if(fname == "")
            {
                $("#LblNFname").css('border-color','red');
            }
            if(fname != "")
            {
                $("#LblNFname").css('border-color','silver');
            }
            if(lname == "")
            {
                $("#LblNLname").css('border-color','red');
            }
            if(lname != "")
            {
                $("#LblNLname").css('border-color','silver');
            }
            if(add1 == "")
            {
                $("#LblNadd1").css('border-color','red');
            }
            if(add1 != "")
            {
                $("#LblNadd1").css('border-color','silver');
            }
            if(tel == "")
            {
                $("#LblNTel").css('border-color','red');
            }
            if(tel != "")
            {
                $("#LblNTel").css('border-color','silver');
            }
            if(email == "")
            {
                $("#LblNEmail").css('border-color','red');
            }
            if(email != "")
            {
                $("#LblNEmail").css('border-color','silver');
            }
            if(prov == "Select Region")
            {
                $("#CMBNProvince").css('border-color','red');
            }
            if(prov != "Select Region")
            {
                $("#CMBNProvince").css('border-color','silver');
            }
            if(city == null)
            {
                $("#NCity").css('border-color','red');
            }
            if(city != null)
            {
                $("#NCity").css('border-color','silver');
            }
            if(fname!=""&&lname!=""&&add1!=""&&tel!=""&&email!=""&&prov!="Select Region"&&city!=null)
            {
                $.ajax(
                    {
                        url:'Queries.php',
                        method:'POST',
                        data:
                        {
                            first:fname,
                            last:lname,
                            add1:add1,
                            add2:add2,
                            muni:prov,
                            cities:city,
                            phonenum:tel,
                            email:email,
                            g_code:id,
                            source:'AddGuest'
                        },
                        success:function(data)
                        {
                            alert('Information successfully saved.');
                            location.reload();
                        },
                        error:function()
                        {
                            alert('Error adding guest information.');
                        }
                    });
            }
        });



    });
</script>
