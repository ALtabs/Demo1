<!DOCTYPE html>
<?php include('header.php');
?>
    <div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <!-- breadcrumb-->
              <div class="left" style="padding-bottom: 10px;"><a href="index.php" class="btn btn-primary"> <i class="fa fa-arrow-left "> Back to Shope</i></a>
             </div>

            </div>
            <div id="checkout" class="col-lg-12">
              <div class="box">

                  <?php if (empty($_SESSION['customer'])) :?>

                <form method="GET" action="checkout1.php" autocomplete="on" >
                  <h1>Checkout - Shipping Address</h1>
                  <div class="nav flex-column flex-md-row nav-pills text-center"><a href="checkout.php" class="nav-link flex-sm-fill text-sm-center active"> <i class="fa fa-map-marker"> </i>Shipping Address</a><a href="#" class="nav-link flex-sm-fill text-sm-center disabled"> <i class="fa fa-truck"> </i>Delivery & Payment Method</a><a href="#" class="nav-link flex-sm-fill text-sm-center disabled"> <i class="fa fa-eye"> </i>Order Review</a></div>
                  <div class="content py-3">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="firstname">Firstname</label>
                          <input id="firstname" name="firstname" type="text" id="txtbfname"class="form-control" required>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="lastname">Lastname</label>
                          <input id="lastname" name="lastname" type="text" id="txtblname"class="form-control" required>
                        </div>
                      </div>
                    </div>
                    <!-- /.row-->
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="company">Address 1</label>
                          <input id="address1" type="text" name="address1" id="txtbadd1"class="form-control" required>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="street">Address 2 </label>
                          <input id="address2" type="text" name="address2" id="txtbadd2"class="form-control" placeholder="optional">
                        </div>
                      </div>
                    </div>
                    <!-- /.row-->
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="phone">Phone Number <span class="warning"> </span></label>
                          <input type="tel" class="form-control phoness" id="txtbphone"name="phone" required placeholder="ex: 09123456789 <-follow this format" onkeypress="return isNumberKey(event)">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="email">Email</label>
                          <input id="email" name="email" id="txtbemail"type="email" class="form-control" required>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-lg-6">
                          <div class="form-group">
                            <label for="company">Province</label><br>
                            <select name="province" id="CMBProvince" class="form-control" required>
                              <option>Select Region</option>
                            <?php
                            $statement=$pdo->prepare("SELECT * FROM provinces");
                            $statement->execute();
                            $result1=$statement->fetchAll(PDO::FETCH_ASSOC);
                           
                            foreach ($result1 as $row)
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
                            <select class="form-control" name="city" id="City" required>
                              
                            </select>
                          </div>
                         
                        </div>
                      
                            <div id="Txt_Zipcode" style="display:none"><label class='form-control'></label></div>
                     
                      </div>
                    <!-- /.row-->
                  </div>
                  <div class="box-footer d-flex justify-content-between"><a href="basket.php" class="btn btn-outline-secondary"><i class="fa fa-chevron-left"></i>Back to Cart</a>
                    <button type="submit" id="btn_checkout"class="btn btn-primary" name="checkoutcrt">Continue <i class="fa fa-spinner fa-pulse"></i></button>
                  </div>
                </form>

                 <?php endif; ?>

                 <?php if (!empty($_SESSION['customer'])) : 
                    $id=$_SESSION['customer']['id'];

                    $statement=$pdo->prepare("SELECT * FROM cust_guest c JOIN cities cc ON c.cities=cc.city_id INNER JOIN provinces ccc ON ccc.province_id = cc.province_id WHERE c.g_code=?");
                    $statement->execute(array($id));
                    $total = $statement->rowCount();
                    $result=$statement->fetchAll(PDO::FETCH_ASSOC);
                    if ($total!=0) {
                      foreach ($result as $row ){
                        
                         $add1=$row['add1'];
                         $add2=$row['add2'];
                         $muni=$row['muni'];
                         $state= $row['cities'];
                         $phonenum=$row['phonenum'];
                         $email=$row['email'];
                      }?>

                       <form method="GET" action="checkout1.php" autocomplete="on" >
                  <h1>Checkout - Shipping Address</h1>
                  <div class="nav flex-column flex-md-row nav-pills text-center"><a href="checkout.php" class="nav-link flex-sm-fill text-sm-center active"> <i class="fa fa-map-marker"> </i>Shipping Address</a><a href="#" class="nav-link flex-sm-fill text-sm-center disabled"> <i class="fa fa-truck"> </i>Delivery & Payment Method</a><a href="#" class="nav-link flex-sm-fill text-sm-center disabled"> <i class="fa fa-eye"> </i>Order Review</a></div>
                  <div class="content py-3">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="firstname">Firstname</label>
                          <input id="firstname" name="firstname" type="text" class="form-control"  value="<?php echo $row['first_name']; ?>" required>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="lastname">Lastname</label>
                          <input id="lastname" name="lastname" type="text" class="form-control"
                          value="<?php echo  $row['last_name']; ?>" required>
                        </div>
                      </div>
                    </div>
                    <!-- /.row-->
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="company">Address 1</label>
                          <input id="address1" type="text" name="address1" class="form-control" 
                          value="<?php echo $row['add1'];?>" 
                          required>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="street">Address 2 </label>
                          <input id="address2" type="text" name="address2" class="form-control" value="<?php echo $row['add2'] ?>" placeholder="optional">
                        </div>
                      </div>
                      <div class="col-md-6">
                        
                        <div class="form-group">
                          <label for="phone">Phone Number <span class="warning"> </span></label>
                          <input type="tel" class="form-control phoness" name="phone" value="<?php echo $row['phonenum']; ?>" required placeholder="ex: 09123456789 <-follow this format" onkeypress="return isNumberKey(event)" >
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="email">Email</label>
                          <input id="email" name="email" type="email" class="form-control" value="<?php
                         echo  $row['email']; ?>" required>
                        </div>
                      </div>
                    </div>
                    <!-- /.row-->
                    <div class="row">
                      <div class="col-md-6 col-lg-6">
                        <div class="form-group">
                          <label for="city">Province</label>
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
                          <label for="zip">City/Municipal</label>
                          <select class="form-control" name="city" id="City" required>
                              
                            </select>
                        </div>
                      </div>

                      
                            <div id="Txt_Zipcode" style="display:none"></div>
                          
                    </div>
                    <!-- /.row-->
                  </div>
                  <div class="box-footer d-flex justify-content-between"><a href="basket.php" class="btn btn-outline-secondary"><i class="fa fa-chevron-left"></i>Back to Cart</a>
                    <button type="submit" class="btn btn-primary" name="checkoutcrt">Continue <i class="fa fa-spinner fa-pulse"></i></button>
                  </div>
                </form>
                       
                      


                    

                   <?php  ; }
                   else
                   {
                      $statement = $pdo->prepare('SELECT * FROM tbl_user where id=?');
                      $statement->execute(array($id));
                      $result = $statement->fetchAll();
                      foreach($result as $row){
                      
                   ?>

                         <form method="GET" action="checkout1.php" autocomplete="on" >
                  <h1>Checkout - Shipping Address</h1>
                  <div class="nav flex-column flex-md-row nav-pills text-center"><a href="checkout.php" class="nav-link flex-sm-fill text-sm-center active"> <i class="fa fa-map-marker"> </i>Shipping Address</a><a href="#" class="nav-link flex-sm-fill text-sm-center disabled"> <i class="fa fa-truck"> </i>Delivery & Payment Method</a><a href="#" class="nav-link flex-sm-fill text-sm-center disabled"> <i class="fa fa-eye"> </i>Order Review</a></div>
                  <div class="content py-3">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="firstname">Firstname</label>
                          <input id="firstname" name="firstname" type="text" id="txtbfname"class="form-control"  value="<?php echo $row['first_name'];?>" required>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="lastname">Lastname</label>
                          <input id="lastname" name="lastname" type="text" id="txtblname"class="form-control" value="<?php echo $row['last_name'];?>" required>
                        </div>
                      </div>
                    </div>
                    <!-- /.row-->
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="company">Address 1</label>
                          <input id="address1" type="text" name="address1" id="txtbadd1"class="form-control" required>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="street">Address 2 </label>
                          <input id="address2" type="text" name="address2" id="txtbadd2"class="form-control" placeholder="optional">
                        </div>
                      </div>
                    </div>
                    <!-- /.row-->
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="phone">Phone Number <span class="warning"> </span></label>
                          <input type="tel" class="form-control phoness" id="txtbphone"name="phone"  required placeholder="ex: 09123456789 <-follow this format" value="<?php echo $row['phone'];?>" onkeypress="return isNumberKey(event)">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="email">Email</label>
                          <input id="email" name="email" id="txtbemail"type="email" class="form-control" value="<?php echo $row['email'];?>" required>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-lg-6">
                          <div class="form-group">
                            <label for="company">Province</label><br>
                            <select name="province" id="CMBProvince" class="form-control" required>
                              <option>Select Region</option>
                            <?php
                            $statement=$pdo->prepare("SELECT * FROM provinces");
                            $statement->execute();
                            $result1=$statement->fetchAll(PDO::FETCH_ASSOC);
                           
                            foreach ($result1 as $row)
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
                            <select class="form-control" name="city" id="City" required>
                              
                            </select>
                          </div>
                         
                        </div>
                        
                           
                            
                            <div id="Txt_Zipcode" style="display:none"><label class='form-control'></label></div>
                          
                      </div>
                    <!-- /.row-->
                  </div>
                  <div class="box-footer d-flex justify-content-between"><a href="basket.php" class="btn btn-outline-secondary"><i class="fa fa-chevron-left"></i>Back to Cart</a>
                    <button type="submit" id="btn_checkout"class="btn btn-primary" name="checkoutcrt">Continue <i class="fa fa-spinner fa-pulse"></i></button>
                  </div>
                </form>

                   <?php }}
                endif; ?>

              </div>
              <!-- /.box-->
            </div>
            <!-- /.col-lg-9-->
           
            <!-- /.col-lg-3-->
          </div>
        </div>
      </div>
    </div>
    <!--
    *** FOOTER ***
    _________________________________________________________
    -->
 
   <?php include('footer.php'); ?>

   <script type="text/javascript">
   
   $('.phoness').attr('maxlength','11');
   function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}

     $(document).ready(function()
      {

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
                setTimeout(function(){ $("#loader").modal('hide');$('#City').html(data);$('#Txt_Zipcode').html(''); }, 1000);
              },
              error:function()
              {}
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


        $('#btn_checkout').click(function(){
          var fname = $('#txtbfname').val();
          var lname = $('#txtblname').val();
          var add1 = $('#txtbadd1').val();
          var add2 = $('#txtbadd2').val();
          var phone = $('#txtbphone').val();
          var email = $('#txtbemail').val();
          var region = $("#CMBProvince").val();
          var city = $('#City').val();
          
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
                setTimeout(function(){ $("#loader").modal('hide');$('#City').html(data);$('#Txt_Zipcode').html(''); }, 1000);
              },
              error:function()
              {}
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


      });
   </script>