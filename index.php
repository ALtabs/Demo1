<?php 
include('header.php');
?>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=PT+Sans&display=swap" rel="stylesheet"> 

<div id="all">
  <div class="content">
    <div class="container-fluid" >
          <div class="row">
            <div class="col-md-12">
            	  <div style="height: 450px;">

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
  	<?php 
                $statement = $pdo->prepare("SELECT * FROM tbl_slider ORDER BY id DESC LIMIT 5");
                $statement->execute();
                $result = $statement->fetchAll();
                $counter=0;
                foreach ($result as $key) {
                	$actives='';
                	if ($counter==0) {
                		$actives='active';
                	}
                

                ?>
    <li data-target="#carouselExampleIndicators" data-slide-to="<?php echo $counter; ?>" class="<?php echo $actives;?>"></li>
    <?php $counter++; }?>
  </ol>
  <div class="carousel-inner">
<?php 

  	 $counter=0;
                foreach ($result as $key) {
                	$actives='';
                	if ($counter==0) {
                		$actives='active';
                	}
                ?>

    <div class="carousel-item <?php echo $actives; ?>">
      <img src="assets/uploads/<?php echo $key['photo'];?>" class="d-block w-100" height="814" alt="<?php echo $key['photo']?>">
    </div>

    <?php $counter++; }?>
    
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
            	  </div>
            </div>
          </div>
        </div>
      </div>
      <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><hr><br>
<div class="content">
        <div class="hot" >
            <div class="container-fluid">
              <div class="row">
                <div class="col-md-12 ">
                  <h3 class="mb-0 text-center" >Latest Product</h3>
                </div>
              </div>
            </div>
          <br><br>
          <div class="container">
            <div class="row">
                <?php
                foreach ($result1 as $row1) {
                  $string=$row1['p_short_description'];
                    ?>
                  
                  <div class="col-md-4">              
                    <div class="pro_photo clickable">
                      <a href="details.php?proid=<?php echo $row1['p_id'];?>&&count=<?php echo $row1['p_name']?>">
                       <img src="assets/uploads/<?php echo $row1['p_featured_photo'];?>" alt="Nature" class="responsive" width="430" height="250"></a>
 						
 						
                    	<div class="text text-center" style="padding-bottom: 10px;font-family:'PT Sans', sans-serif;">
                    <h3 style="color: black"><a href="details.php?proid=<?php echo $row1['p_id'];?>&&count=<?php echo $row1['p_name']?>" style="text-decoration: none; color: black;"><?php echo $row1['p_name']; ?></a></h3>  </div>
                   
                      <div class="middle">
                        <a href="details.php?proid=<?php echo $row1['p_id'];?>&&count=<?php echo $row1['p_name']?>" style="text-decoration: none; color: black;"><?php echo $string;?>
                        </a>
                      </div>
               
                     <p class="price text-center" style="color: black; padding-bottom: 15px;position:relative;margin-top:-5%" > 
                     	 <span style="font-size: 20px;">&#8369;<?php echo number_format($row1['p_current_price'],2);?></span>&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;
                      <del class="product-old-price" >&#8369; <?php echo number_format($row1['p_old_price'],2);?></del> 
                     
                    </p>
                    
                   </div>
                  </div>
               <?php }
                ?>
            </div>
            <p class="read-more text-center" id="pagination_controls"><?php echo $paginationCtrls; ?></p>
          </div>
        </div>
  </div>
</div>



<?php include 'footer.php'; ?>