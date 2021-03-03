<?php 
include('header.php');

if (isset($_REQUEST['proid'])) {
    $id=$_REQUEST['proid'];
    $statement = $pdo->prepare("SELECT * FROM tbl_product WHERE p_id=?");
  $statement->execute(array($_REQUEST['proid']));
  $total = $statement->rowCount();
  $result = $statement->fetchAll(PDO::FETCH_ASSOC);
  if( $total == 0 ) {
    header('location: signout.php');
    unset($_REQUEST['proid']);
    exit;
  }



 $statement = $pdo->prepare("SELECT * FROM tbl_product WHERE p_id=?");
  $statement->execute(array($_REQUEST['proid']));
  $total = $statement->rowCount();
  $result = $statement->fetchAll(PDO::FETCH_ASSOC);
  if( $total == 0 ) {
    header('location: signout.php');
    exit;
  }

if (!isset($_GET['proid'])) {
    unset($_REQUEST['proid']);
      header("location: ".BASE_URL."index.php");
}

   }else{
    unset($_REQUEST['proid']);
      header("location: ".BASE_URL."index.php");
   }

if (isset($_SESSION['error'])) {
  # code...
    $error_message = "Please select your size number".'<br>';
    unset($_SESSION['error']);
}
if (isset($_SESSION['error1'])) {
   $error_message = 'Product already in cart.';
    unset($_SESSION['error1']);
}
if (isset($_SESSION['success'])) {
  # code...
    $success_message = "Product Added Successfully ".'<br>';
    unset($_SESSION['success']);
}
?>

    
    <?php $statement1 = $pdo->prepare("SELECT * FROM tbl_product WHERE p_id=?");
          $statement1->execute(array($id));
          $result1 = $statement1->fetchAll();

          foreach ($result1 as $row) {
            # code...
            $ids=$row['p_id'];
            $proName=$row['p_name'];

            $cur_prize=$row['p_current_price'];
            $old_prize=$row['p_old_price'];
            $desc=$row['p_description'];
            $short_desc=$row['p_short_description'];
            $feature=$row['p_feature'];
            $photo=$row['p_featured_photo'];
            $p_condition=$row['p_condition'];
            $return=$row['p_return_policy'];
            $medcat=$row['pmcat_id'];


          }
      $statement = $pdo->prepare("SELECT * FROM tbl_product_size WHERE p_id=? AND prod_stock!=?");
      $statement->execute(array($id,0));
      $result = $statement->fetchAll(PDO::FETCH_ASSOC);             
      foreach ($result as $row) {
        $size_id[]= $row['size_id'];
      }

          ?>

    <meta charset="utf-8" />
    	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    	
    	<link rel="stylesheet" href="css1/foundation.css" />
    	
    	<script src="js1/vendor/modernizr.js"></script>
    	<script src="js1/vendor/jquery.js"></script>
  		<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js"></script>

   <link rel="stylesheet" href="admin/css/dataTables.bootstrap.css">
  		<script type="text/javascript" src="xzoom.min.js"></script>


<style type="text/css">
	/* Compatibility styles for frameworks like bootstrap, foundation e.t.c */
.xzoom-source img, .xzoom-preview img, .xzoom-lens img {
  display: block;
  max-width: none;
  max-height: none;
}
/* --------------- */

/* xZoom Styles below */
.xzoom-container { 
  display: inline-block; 
}

.xzoom-thumbs {
  text-align: left;
  margin-bottom: 10px;
  margin-right: 20px;
}

.xzoom { 
  
}
.xzoom2, .xzoom3, .xzoom4, .xzoom5 {
 
  margin-bottom: 15px;  
}

/* Thumbs */
.xzoom-gallery, .xzoom-gallery2, .xzoom-gallery3, .xzoom-gallery4, .xzoom-gallery5 { 
  border: 1px solid #cecece; 
  margin-left: 2px;
  margin-bottom: 10px;
   margin-right: 0px;
}

.xzoom-source, .xzoom-hidden {
  display: block;
  position: static;
  float: none;
  clear: both;
}

/* Everything out of border is hidden */
.xzoom-hidden {
  overflow: hidden;
}

/* Preview */
.xzoom-preview {
  border: 1px solid #888;
  background: #2f4f4f;

}

/* Lens */
.xzoom-lens {
  border: 1px solid #555;
  box-shadow: -0px -0px 10px rgba(0,0,0,0.50);
  cursor: none;
}

/* Loading */
.xzoom-loading {
  background-position: center center;
  background-repeat: no-repeat;
  opacity: .7;
  width: 48px;
  height: 48px;
}

/* Additional class that applied to thumb when it is active */
.xactive {  

}

/* Caption */
.xzoom-caption {
  position: absolute;
  bottom: -43px;
  left: 0;
  background: #000;
  width: 100%;
  text-align: left;
}

.xzoom-caption span {
  color: #fff;
  font-family: Arial, sans-serif;
  display: block;
  font-size: 0.75em;
  font-weight: bold;
  padding: 0px;
}

.alert-lightgreen
{
  background-color:#4fbfa8;
  color:white;
}
</style>

 <div class="container-fluid">
 <br>
   <div class="col-lg-12 text-left">
              <!-- breadcrumb-->
              <br>
               <?php  if($error_message != '') {
                    echo "<div class='danger' style='padding: 10px;background:#f1f1f1;margin-bottom:20px; color:red'>".$error_message."</div>
                    "; 
                      }
                      if($success_message != '') {
                      echo "<div class='success' style='padding: 10px;background:#f1f1f1;margin-bottom:20px;color:green'>".$success_message."</div>";
                      
                                }

                                ?>
            </div> 
 
          <div class="row">
         
            <div class="col-lg-12">
              <div id="productMain" class="row">
                <div class="col-md-6">
                 <!--<label class="alert alert-lightgreen" style="padding:1px;font-size:12px;position:absolute;">Scroll to zoom</label>-->
                	 <?php $statement1 = $pdo->prepare("SELECT  * FROM tbl_product WHERE p_id=?");
                        $statement1->execute(array($ids));
                        $result1 = $statement1->fetchAll();
                          foreach ($result1 as $row) {
                             $rowcheck=$row['p_featured_photo']; 
                          }

                        ?>

                  <img class="xzoom3" src="assets/uploads/<?php echo $rowcheck;?>" xoriginal="assets/uploads/<?php echo $rowcheck;?>" />

          <div class="xzoom-thumbs">
             <?php $statement1 = $pdo->prepare("SELECT  * FROM tbl_product WHERE p_id=?");
                        $statement1->execute(array($ids));
                        $result1 = $statement1->fetchAll();
                          foreach ($result1 as $key) {
                             $check=$key['p_featured_photo']; 
                             $validate=0;
                             $pID=$key['p_id'];
                             if ($check==$key['p_featured_photo']) {?>
                             		
                       <a href="assets/uploads/<?php echo $check;?>"><img class="xzoom-gallery3"  src="assets/uploads/<?php echo $check;?>" width="80"></a>
                          <?php $validate=1;   }}?>

                   <?php   if ($validate==1){
                         $statement1 = $pdo->prepare("SELECT  * FROM tbl_product_photo WHERE p_id=?");
                        $statement1->execute(array($pID));
                        $result1 = $statement1->fetchAll();
                        
                        foreach ($result1 as $row1) {?>

                        	 <a href="assets/uploads/product_photos/<?php echo $row1['photo'];?>"><img class="xzoom-gallery3" width="80" src="assets/uploads/product_photos/<?php echo $row1['photo'];?>" ></a>

            		  <?php }}?> 
            		  <?php if($old_prize!=0):

                    $discount=$old_prize-$cur_prize;
                    $percentage=$discount*100;
                    $totaldis=$percentage/$old_prize;

                  endif;
                    ?>
          </div>
                </div>
                <div class="col-md-6">
                  <div class="" style="padding-left:10px;">
                      <form action="cartprocess.php?id=<?php echo $id?>" method="post"/>
                       <?php $csrf->echoInputField(); ?>  
                       <input type="hidden" name="totaldis" value="<?php echo round($totaldis, 1)?>">
                      <input type="hidden" name="ProID" value="<?php echo $id?>">
                      <input type="hidden" name="ProName" value="<?php echo $proName?>">
                      <input type="hidden" name="Prophoto" value="<?php echo $photo?>">                  
                    <h2><?php echo $proName ?></h2>

                    <div class="form-group text-muted"><?php echo $short_desc ?></div>
                    
                    <div class="form-group">
                      <button type="button" id="details" style="padding:1px!important;background-color:transparent!important;color:#4fbfa8!important">See product details</button>
                      &nbsp;&nbsp;&nbsp;

                      <button type="button" id="ShippingCost" style="padding:1px!important;background-color:transparent!important;color:#4fbfa8!important">Shipping Cost details</button>
                    </div>

                     <div class="form-group col-md-3 form-check-inline">
                
                    <input type="hidden" name="pro_price" value="<?php echo $cur_prize; ?> ">

                     <label style="font-size:25px;"> US&nbsp;</label><label style="font-size:25px;"> $<?php echo $cur_prize; ?></label>

                      </div>
<?php if($old_prize!=0): ?>
                      <div class="form-group col-md-2 form-check-inline">

                        <del style="font-size:19px;" class="mx-2 font-weight-light text-muted">&#8369;<?php echo number_format($old_prize,2); ?> </del>
                      </div>
                      <div class="form-group col-md- form-check-inline">
                        <label class="badge badge-danger" style="float:right;width:120px;font-size:19px"> &nbsp;<?php echo  round($totaldis,1);?>% OFF</label>
                      </div>
                    <?php endif;
                   ?>
                      <br>
                     <div class="form-group col-md-5 form-check-inline">
                    <select name="selectsize" class="form-control required" id="ring_id">
                         <option value="">Select ring size</option>
                                            <?php
                                            $statement = $pdo->prepare("SELECT * FROM tbl_size");
                                            $statement->execute();
                                            $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                            foreach ($result as $row) {
                                                if(in_array($row['size_id'],$size_id)) {
                                                    ?>
                                                    <option value="<?php echo $row['size_id']; ?>"><?php echo $row['size_name']; ?></option>
                                                    <?php
                                                }
                                            }
                                            ?>
                          </select>
                        </div>
                     <div class="form-group col-md-3 form-check-inline">
                   <a href="#" data-toggle="modal" data-target="#ring-modal">Size guide</a>
                      </div>
         <br>
                  <div class="form-group col-md-5 form-check-inline ">
                    <div class="form-group">
                      <label for="email" >Quantity:&nbsp;</label>
                        <?php $value=1;?>
                       <input type="number" min="0" value="1" step="1" class="form-control" name="cart_qty">
                     </div>
                  </div> 
                      <p class="buttons"><button type="submit" name="formcart" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Add to cart</button></p>
                  </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
 </div>


<div class="hot">           
  <div class="container">
    <hr>
    <div class="row">
      <div class="col-md-12">
      
        <?php $statement1 = $pdo->prepare("SELECT * FROM tbl_product t1 JOIN tbl_product_size t2 ON t2.p_id=t1.p_id WHERE t1.pmcat_id=? AND t1.p_id!=? AND t2.prod_stock!=? GROUP BY t1.p_name ");
      $statement1->execute(array($medcat,$id,0));
      $total = $statement1->rowCount();
      $result = $statement1->fetchAll(PDO::FETCH_ASSOC);
      if( $total == 0 ) {?>
          <h2 class="mb-0 text-center" style="color: black">There is no similar item</h2>
     <?php }else{?>
           <h3 class="mb-0 text-center" style="color: black">You may also like</h3>
     <?php } ?>  
      </div>
    </div>
    <br>
  </div>
</div>

<div class="container">
  <div class="row">

    <?php
    $statement1 = $pdo->prepare("SELECT * FROM tbl_product t1 JOIN tbl_product_size t2 ON t1.p_id=t2.p_id WHERE t1.pmcat_id=? AND t1.p_id!=? AND t2.prod_stock!=? GROUP BY t1.p_name ");
    $statement1->execute(array($medcat,$id,0));
    $result1 = $statement1->fetchAll();

    foreach ($result1 as $row1) {?>

      <div class="col-md-3">              
        <div class="pro_photo clickable">
          <a href="details.php?proid=<?php echo $row1['p_id']; ?>">
            <img src="assets/uploads/<?php echo $row1['p_featured_photo'];?>" alt="Nature" class="responsive" width="250" height="250"></a>


          <div class="text">
            <h3><a href="details.php?proid=<?php echo $row1['p_id']; ?>" style="color: black; margin-left: 10px;" class="proName"><?php echo $row1['p_name'];?></a></h3>
            <p class="price" style="color: black; margin-left: 10px;" > 
            <?php  echo $row1 ['p_current_price']; ?>
            <del class="product-old-price" > <?php  echo $row1 ['p_old_price']; ?></del>
            </p>
          </div>
        </div>

      </div>
    <?php }
    ?>
  </div>
</div> 

<div class="modal" id="detailsmodal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h2 class="modal-title">Product Details.</h2>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div id="details" class="">
                <p></p>
                <h4>Product details</h4>
                <p><?php echo $short_desc ?></p>
                 <blockquote>
                  <p><em><?php echo $desc;?></em></p>
                </blockquote>
                <h4>Material &amp; care</h4>
                <ul>
                  <li><?php echo $feature?></li>
                </ul>
                <!---<h4>Ring Size Tip</h4>
                <ul>
                  <li>Wrap a thin strip of paper around the base of your finger. if you have larger knuckles, measure both. (You may want to choose a size between the two to allow the ring to slip on comfortably.)</li>
                  <li>Mark the spot where the paper meets.</li>
                   <li>Measure the paper's distance with a ruler</li>
                   <li>Use the chart to determine ring size. To size a ring you already have lay it directly onto the chart so that the black circle touches the ring's inner circle.</li>
                </ul>-->
               
                <hr>
                <h4>Our Service</h4>
                 <?php $statement = $pdo->prepare("SELECT * FROM tbl_service");
                    $statement->execute();
                    $result = $statement->fetchAll(PDO::FETCH_ASSOC);                           
                    foreach ($result as $row) {?>
                        <li><?php echo $row['title'];?></li>
                        <ul>
                          <li><p><?php echo $row['content'];?></p></li>
                        </ul>
                        
                  <?php   }?>
                

                
              </div>
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>


<div class="modal" id="shippingmodal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h2 class="modal-title">Shipping Cost Details.</h2>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div id="shipping">
              
              
          </div>
      </div>
    </div>
  </div>
</div>

<div id="ring-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true" class="modal fade">
        <div class="modal-dialog col-12" style="width: 100%">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title"><center>Size Guide</center></h5>
              <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
            </div>
              <div class="modal-body"> 
                <img src="img/ringsize.png" alt="" class="img-fluid list-inline-item">              
              </div>         
            <div class="modal-footer">
                
                <button class="btn btn-info" data-toggle="modal" data-target="#brace" data-dismiss="modal">Bracelet</button>
                  <button class="btn btn-primary" data-toggle="modal" data-target="#neckl" data-dismiss="modal" >Necklaces & Pendants</button>
              </div>
          </div>
        </div>
</div>

<div id="neckl" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true" class="modal fade">
      <div class="modal-dialog col-12" style="width: 100%">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title"><center>Size Guide</center></h5>
            <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
          </div>
            <div class="modal-body"> 
               <img src="img/necklace.jpg" alt="" class="img-fluid list-inline-item">
            </div>
            <div class="modal-footer">
              <button class="btn btn-info" data-toggle="modal" data-target="#brace" data-dismiss="modal">Bracelet</button>
                <button class="btn btn-primary" data-toggle="modal" data-target="#ring-modal" data-dismiss="modal" >Ring</button>
            </div>
        </div>
      </div>
</div>

<div id="brace" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true" class="modal fade">
      <div class="modal-dialog col-12" style="width: 100%">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title"><center>Size Guide</center></h5>
            <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
          </div>
            <div class="modal-body"> 
              <p class="text-center"></p>
                <img src="img/braceletsize.jpg" alt="" class="img-fluid list-inline-item">
            </div>
            <div class="modal-footer">
              <button class="btn btn-info" data-toggle="modal" data-target="#ring-modal" data-dismiss="modal">Ring</button>
                <button class="btn btn-primary" data-toggle="modal" data-target="#neckl" data-dismiss="modal" >Necklaces & Pendants</button>
            </div>           
        </div>
      </div>
</div>


<div id="copyright">
  <div class="container">
   <marquee>
    <p class="text-center text-lg-left"><?php echo  $copyright; ?></p> 
    </marquee>
  </div>
</div>


<script type="text/javascript">

fetch_data();
  function fetch_data()
  {
    var operation = "fetching_the_data";
    $.ajax({
      type: 'POST',
      url:'tables.php',
      data:{detailsshipping:operation},
      success:function(s)
      {
        $('#shipping').html(s);
      },
    });
  }

  $(document).ready(function()
    {
      $("#details").click(function()
        {
          $("#detailsmodal").modal('show');
        });
    });

  $(document).ready(function(){


    $("#ShippingCost").click(function(){

      $("#shippingmodal").modal('show');
    });
  });
 </script>


    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
    <script src="js1/foundation.min.js"></script>
    <script src="js1/setup.js"></script>
    <script type="text/javascript">
    let thumbnails = document.getElementsByClassName('thumbnail')

    let activeImages = document.getElementsByClassName('active')

    for (var i=0; i < thumbnails.length; i++){

      thumbnails[i].addEventListener('mouseover', function(){
        console.log(activeImages)
        
        if (activeImages.length > 0){
          activeImages[0].classList.remove('active')
        }
        

        this.classList.add('active')
        document.getElementById('featured').src = this.src
      })
    }


    let buttonRight = document.getElementById('slideRight');
    let buttonLeft = document.getElementById('slideLeft');

    buttonLeft.addEventListener('click', function(){
      document.getElementById('slider').scrollLeft -= 180
    })

    buttonRight.addEventListener('click', function(){
      document.getElementById('slider').scrollLeft += 180
    })


  </script>

