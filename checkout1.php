<!DOCTYPE html>
<?php include('header.php');

if (!isset($_GET['checkoutcrt'])) {
  # code...
    header("location: ".BASE_URL."index.php?invalid=invalidprocess"); 
}
?>

  <?php if(isset($_GET['checkoutcrt'])){?>

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
                <form method="get" action="checkout2.php">
                  <h1>Checkout - Delivery & Payment method</h1>
                  <div class="nav flex-column flex-sm-row nav-pills"><a href="checkout.php" class="nav-link flex-sm-fill text-sm-center"> <i class="fa fa-map-marker">                  </i>Address</a><a class="nav-link flex-sm-fill text-sm-center active"> <i class="fa fa-truck">                       </i>Delivery & Payment Method</a><a class="nav-link flex-sm-fill text-sm-center disabled"> <i class="fa fa-eye">                     </i>Order Review</a></div>
                  <div class="content py-3">
                    <div class="row">
                      <div class="col-md-6 ">
                        <div class="box shipping-method" >
                          <h4>Delivery Method</h4>
                           <h4 class="text-center">J&T Express</h4>
                          <p>Free yourself from waiting a day to get your parcel picked up, GrabExpress is on-demand which means your parcel will get picked up immediately and delivered straight to your recipient.</p>
                          <div class="box-footer text-center">
                            <input type="hidden" name="delivery" value="delivery1">
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6 ">
                        <div class="box shipping-method" >
                          <h4>Payment Method</h4>
                          <h4 class="text-center">COD/COP</h4>
                          <p>it's flexible payment options for you. Payments can be secured the safe way..</p>
                          <div class="box-footer text-center">
                            <input type="hidden" name="delivery" value="delivery1">
                          </div>
                        </div>
                      </div>
          <input type="hidden" name="province" value="<?php echo $_GET['province'];?>"/>
          <input type="hidden" name="firstname" value="<?php echo $_GET['firstname'];?>"/>
          <input type="hidden" name="lastname" value="<?php echo $_GET['lastname'];?>"/>
          <input type="hidden" name="address1" value="<?php echo $_GET['address1'];?>"/>
          <input type="hidden" name="address2" value="<?php echo $_GET['address2'];?>"/>
          <input type="hidden" name="muni" value="<?php echo $_GET['city'];?>"/>
          <input type="hidden" name="email" value="<?php echo $_GET['email'];?>"/>
          <input type="hidden" name="phone" value="<?php echo $_GET['phone'];?>"/>
                              
                    </div>
                  </div>
                  <div class="box-footer d-flex justify-content-between"><a href="checkout.php" class="btn btn-outline-secondary"><i class="fa fa-chevron-left"></i>Back to Shipping Address</a>
                    <button type="submit" class="btn btn-primary" name="continue">Continue<i class="fa fa-spinner fa-pulse"></i></button>
                  </div>
                </form>
              </div>
              <!-- /.box-->
            </div>
            <!-- /.col-md-9-->
            
            <!-- /.col-md-3-->
          </div>
        </div>
      </div>
    </div>



  <?php }else{?>




<div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <!-- breadcrumb-->
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li aria-current="page" class="breadcrumb-item active">Checkout - Delivery method</li>
                </ol>
              </nav>
            </div>
            <div id="checkout" class="col-lg-12">
              <div class="box">
                <form method="get" action="checkout2.php" autocomplete="on">
                  <h1>Checkout - Delivery & Payment method</h1>
                  <div class="nav flex-column flex-sm-row nav-pills"><a href="checkout.php" class="nav-link flex-sm-fill text-sm-center"> <i class="fa fa-map-marker">                  </i>Address</a><a class="nav-link flex-sm-fill text-sm-center active"> <i class="fa fa-truck">                       </i>Delivery & Payment Method</a><a class="nav-link flex-sm-fill text-sm-center disabled"> <i class="fa fa-eye">                     </i>Order Review</a></div>
                  <div class="content py-3">
                    <div class="row">
                      <div class="col-md-6 ">
                        <div class="box shipping-method" >
                          <h4>Delivery Method</h4>
                           <h4 class="text-center">J&T Express</h4>
                          <p>Free yourself from waiting a day to get your parcel picked up, GrabExpress is on-demand which means your parcel will get picked up immediately and delivered straight to your recipient.</p>
                          <div class="box-footer text-center">
                            <input type="hidden" name="delivery" value="delivery1">
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6 ">
                        <div class="box shipping-method" >
                          <h4>Payment Method</h4>
                          <h4 class="text-center">COD/COP</h4>
                          <p>it's flexible payment options for you. Payments can be secured the safe way..</p>
                          <div class="box-footer text-center">
                            <input type="hidden" name="delivery" value="delivery1">
                          </div>
                        </div>
                      </div>
                      <input type="hidden" name="countrycode" value="<?php echo $_GET['countrycode'];?>">           
                    </div>
                  </div>
                  <div class="box-footer d-flex justify-content-between"><a href="checkout.php" class="btn btn-outline-secondary"><i class="fa fa-chevron-left"></i>Back to Shipping Address</a>
                    <button type="submit" class="btn btn-primary" name="continue">Continue<i class="fa fa-chevron-right"></i></button>
                  </div>
                </form>
              </div>
              <!-- /.box-->
            </div>
            <!-- /.col-md-9-->
            
            <!-- /.col-md-3-->
          </div>
        </div>
      </div>
    </div>










 <?php }
   ?>


    
    <!--
    *** FOOTER ***
    _________________________________________________________
    -->
    <?php include('footer.php'); ?>