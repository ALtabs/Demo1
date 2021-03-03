<?php
ob_start();
session_start();
include("inc/config.php");
//include("inc/functions.php");
include("inc/CSRF_Protect.php");
$csrf = new CSRF_Protect();
$error_message = '';
$success_message = '';
$error_message1 = '';
$success_message1 = '';

// Check if the user is logged in or not
if(!isset($_SESSION['user'])) {
	header('location: ../validate.php');
	exit;
}
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Admin Panel</title>

	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<meta name="description" content="">

	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<!--<link rel="stylesheet" href="css/ionicons.min.css">-->
	<!--<link rel="stylesheet" href="css/datepicker3.css">-->
	<!--<link rel="stylesheet" href="css/all.css">-->
	<link rel="stylesheet" href="css/select2.min.css"><!-- for Selecting of category-->
	<link rel="stylesheet" href="css/dataTables.bootstrap.css"><!-- for display datatables -->
	<!---<link rel="stylesheet" href="css/jquery.fancybox.css">-->
	<link rel="stylesheet" href="css/AdminLTE.min.css"><!-- for admin Design -->
	<link rel="stylesheet" href="css/_all-skins.min.css"><!--for sidebar theme-->
	<!--<link rel="stylesheet" href="css/on-off-switch.css"/>-->
	<link rel="stylesheet" href="css/summernote.css"><!--for the text description-->
	<link rel="stylesheet" href="style.css"><!--for proper displaying-->



	<script>
			/*
				VIEWPORT BUG FIX
				iOS viewport scaling bug fix, by @mathias, @cheeaun and @jdalton
			*/
			(function(doc){var addEvent='addEventListener',type='gesturestart',qsa='querySelectorAll',scales=[1,1],meta=qsa in doc?doc[qsa]('meta[name=viewport]'):[];function fix(){meta.content='width=device-width,minimum-scale='+scales[0]+',maximum-scale='+scales[1];doc.removeEventListener(type,fix,true);}if((meta=meta[meta.length-1])&&addEvent in doc){fix();scales=[.25,1.6];doc[addEvent](type,fix,true);}}(document));
		</script>

</head>

<body class="hold-transition fixed skin-blue sidebar-mini">

	<div class="wrapper">

		<header class="main-header">

			<a href="index.php" class="logo">
				<span class="logo-lg">Azureh</span>
			</a> 

			<nav class="navbar navbar-static-top">
				
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
					<span class="sr-only">Toggle navigation</span>
				</a>

				<span style="float:left;line-height:50px;color:#fff;padding-left:15px;font-size:18px;">Admin Panel</span>

				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<?php if($_SESSION['user']['role'] == "DATADMIN"){?>
						<li class="navbar-nav">
							<a href="account.php">Accounts</a>
						</li>
						<?php }?>
						<li class="dropdown user user-menu">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<img src="../assets/uploads/users/<?php echo $_SESSION['user']['photo']; ?>" class="user-image" alt="User Image">
								<span class="hidden-xs"><?php echo $_SESSION['user']['first_name'].' '.$_SESSION['user']['last_name']; ?></span>
							</a>
							<ul class="dropdown-menu">
								<li class="user-footer">
									<div>
										<a href="profile-edit.php" class="btn btn-default btn-flat">Edit Profile</a>
									</div>
									<div>
										<a href="logout.php" class="btn btn-default btn-flat">Log out</a>
									</div>
								</li>
							</ul>
						</li>
					</ul>
				</div>

			</nav>
		</header>

  		<?php $cur_page = substr($_SERVER["SCRIPT_NAME"],strrpos($_SERVER["SCRIPT_NAME"],"/")+1); ?>

  		<aside class="main-sidebar">
    		<section class="sidebar">
      			<ul class="sidebar-menu">
      				
      				
			        <li class="treeview <?php if($cur_page == 'index.php') {echo 'active';} ?>">
			          <a href="index.php">
			            <i class="fa fa-tachometer"></i> <span>Dashboard</span>
			          </a>
			        </li>
			    	<?php	if($_SESSION['user']['role'] == "DATADMIN" || $_SESSION['user']['role'] == "WAREHOUSE") { ?>
			        <li class="treeview <?php if( ($cur_page == 'size.php') || ($cur_page == 'size-add.php') || ($cur_page == 'size-edit.php') || ($cur_page == 'color.php') || ($cur_page == 'color-add.php') || ($cur_page == 'color-edit.php') || ($cur_page == 'country.php') || ($cur_page == 'country-add.php') || ($cur_page == 'country-edit.php') || ($cur_page == 'shipping-cost.php') || ($cur_page == 'shipping-cost-edit.php') || ($cur_page == 'top-category.php') || ($cur_page == 'top-category-add.php') || ($cur_page == 'top-category-edit.php') || ($cur_page == 'mid-category.php') || ($cur_page == 'mid-category-add.php') || ($cur_page == 'mid-category-edit.php') || ($cur_page == 'end-category.php') || ($cur_page == 'end-category-add.php') || ($cur_page == 'end-category-edit.php') ) {echo 'active';} ?>">
						<a href="#">
							<i class="fa fa-list-alt"></i>
							<span>Item Section</span>
							<span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
							</span>
						</a>
						<ul class="treeview-menu">
							<li><a href="top-category.php"><i class="fa fa-arrow-up"></i> Top Category</a></li>
							<li><a href="mid-category.php"><i class="fa fa-arrow-right"></i> Mid Category</a></li>
							<li><a href="end-category.php"><i class="fa fa-arrow-down"></i> End  Category</a></li>
							<li><a href="size.php"><i class="fa fa-crop"></i> Size</a></li>
							<li><a href="shipping-cost.php"><i class="fa fa-ship"></i> Shipping Cost</a></li>
							
						</ul>
					</li>

					<li class="treeview <?php if( ($cur_page == 'product.php') || ($cur_page == 'product-add.php') || ($cur_page == 'product-edit.php') ) {echo 'active';} ?>">
			          <a href="#">
			            <i class="fa fa-product-hunt"></i> <span>Products</span>
			            <span class="pull-right-container">
			            	<i class="fa fa-angle-left pull-right"></i>
			            </span>
			          </a>
			          <ul class="treeview-menu">
							<li><a href="product.php"><i class="fa fa-cube"></i> Items</a></li>
							<li><a href="stock.php"><i class="fa fa-cart-arrow-down"></i> Stocks</a></li>
						</ul>
			        </li>

			    	<?php }?>


			    	<?php if($_SESSION['user']['role'] == "DATADMIN" || $_SESSION['user']['role'] == "ACCOUNTING") {?>

			         <li class="treeview <?php if( ($cur_page == 'order.php') || ($cur_page == 'slidervideo.php') ) {echo 'active';} ?>">
						<a href="#">
							<i class="fa fa-shopping-cart"></i>
							<span>Transaction</span>
							<span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
							</span>
						</a>
						<ul class="treeview-menu">
							<li><a href="order.php"><i class="fa fa-cog  fa-spin"></i>Pending Order</a></li>
							<li><a href="completeorder.php"><i class="fa fa-calendar-check-o"></i>Complete Order</a></li>
						</ul>
					</li>

					<?php }?>
				
			        
					<?php if($_SESSION['user']['role'] == "DATADMIN") {?>
			       <li class="treeview <?php if( ($cur_page == 'customer-message.php') ) {echo 'active';} ?>">
						<a href="#">
							<i class="fa fa-envelope"></i>
							<span>Message</span>
							<span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
							</span>
						</a>
						<ul class="treeview-menu">
							<li><a href="customer-message.php"><i class="fa fa-circle-o"></i> Customer Concern</a></li>
						</ul>
					</li>

					<li class="treeview <?php if( ($cur_page == 'customer.php') || ($cur_page == 'customer-add.php') || ($cur_page == 'customer-edit.php') ) {echo 'active';} ?>">
			          <a href="customer.php">
			            <i class="fa fa-id-card"></i> <span>Customer</span>
			          </a>
			        </li>


			        <li class="treeview <?php if( ($cur_page == 'sliderphoto.php') || ($cur_page == 'slidervideo.php') ) {echo 'active';} ?>">
						<a href="#">
							<i class="fa fa-hand-o-right"></i>
							<span>Carousel</span>
							<span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
							</span>
						</a>
						<ul class="treeview-menu">
							<li><a href="sliderphoto.php"><i class="fa fa-photo"></i> Photo Carousel</a></li>
							<li><a href="slidervideo.php"><i class="fa fa-video-camera"></i> Video Carousel</a></li>
						</ul>
					</li>

			        <!-- <li class="treeview <?php/* if( ($cur_page == 'slider.php') ) {echo 'active';} */?>">
			          <a href="slider.php">
			            <i class="fa fa-film"></i> <span>Slider</span>
			          </a>
			        </li> -->

			        <li class="treeview <?php if( ($cur_page == 'service.php') ) {echo 'active';} ?>">
			          <a href="service.php">
			            <i class="fa fa-twitter"></i> <span>Service</span>
			          </a>
			        </li>

			        <li class="treeview <?php if( ($cur_page == 'testimonial.php') ) {echo 'active';} ?>">
			          <a href="testimonial.php">
			            <i class="fa fa-comments-o"></i> <span>Testimonial</span>
			          </a>
			        </li>

			        <li class="treeview <?php if( ($cur_page == 'faq.php') ) {echo 'active';} ?>">
			          <a href="faq.php">
			            <i class="fa fa-weixin"></i> <span>FAQ</span>
			          </a>
			        </li>

			        <li class="treeview <?php if( ($cur_page == 'photo.php') || ($cur_page == 'video.php') ) {echo 'active';} ?>">
						<a href="#">
							<i class="fa fa-hand-o-right"></i>
							<span>Gallery</span>
							<span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
							</span>
						</a>
						<ul class="treeview-menu">
							<li><a href="photo.php"><i class="fa fa-photo"></i> Photo Gallery</a></li>
							<li><a href="video.php"><i class="fa fa-video-camera"></i> Video Gallery</a></li>
						</ul>
					</li>



					<!-- <li class="treeview <?php //if( ($cur_page == 'post.php') ||($cur_page == 'post-add.php') ||($cur_page == 'post-edit.php') || ($cur_page == 'category.php') || ($cur_page == 'category-add.php') || ($cur_page == 'category-edit.php') ) {echo 'active';} ?>">
						<a href="#">
							<i class="fa fa-hand-o-right"></i>
							<span>Blog Posts</span>
							<span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
							</span>
						</a>
						<ul class="treeview-menu">
							<li><a href="category.php"><i class="fa fa-circle-o"></i> Category</a></li>
							<li><a href="post.php"><i class="fa fa-circle-o"></i> Posts</a></li>
						</ul>
					</li> -->

	
			       <!-- <li class="treeview <?php //if( ($cur_page == 'page.php') ) {echo 'active';} ?>">
			          <a href="page.php">
			            <i class="fa fa-hand-o-right"></i> <span>Page</span>
			          </a>
			        </li> -->

			        <li class="treeview <?php if( ($cur_page == 'rating.php') ) {echo 'active';} ?>">
			          <a href="rating.php">
			            <i class="fa fa-percent"></i> <span>Rating</span>
			          </a>
			        </li>

			        <li class="treeview <?php if( ($cur_page == 'social-media.php') ) {echo 'active';} ?>">
			          <a href="social-media.php">
			            <i class="fa fa-android"></i> <span>Social Media</span>
			          </a>
			        </li>

			        <li class="treeview <?php if( ($cur_page == 'advertisement.php') ) {echo 'active';} ?>">
			          <a href="advertisement.php">
			            <i class="fa fa-bullhorn"></i> <span>Advertisement</span>
			          </a>
			        </li>

			        <li class="treeview <?php if( ($cur_page == 'subscriber.php')||($cur_page == 'subscriber.php') ) {echo 'active';} ?>">
			          <a href="subscriber.php">
			            <i class="fa fa-hand-o-right"></i> <span>Subscriber</span>
			          </a>
			        </li>

			        <li class="treeview <?php if( ($cur_page == 'settings.php') ) {echo 'active';} ?>">
			          <a href="settings.php">
			            <i class="fa fa-cogs"></i> <span>Settings</span>
			          </a>
			        </li>

			        <li class="treeview <?php if( ($cur_page == 'language.php') ) {echo 'active';} ?>">
			          <a href="language.php">
			            <i class="fa fa-cogs"></i> <span>Language Settings</span>
			          </a>
			        </li>


			       
			    <?php }?>
			        


      			</ul>
    		</section>
  		</aside>

  		<div class="content-wrapper">