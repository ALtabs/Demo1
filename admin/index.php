<?php require_once('header.php'); ?>

<section class="content-header">
	<h1>Dashboard</h1>
</section>

<?php

$statement = $pdo->prepare("SELECT * FROM tbl_top_category");
$statement->execute();
$total_top_category = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_mid_category");
$statement->execute();
$total_mid_category = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_end_category");
$statement->execute();
$total_end_category = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_product");
$statement->execute();
$total_product = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM cust_cart WHERE payment_status=?");
$statement->execute(array('complete'));
$total_order_completed = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM cust_cart WHERE payment_status=?");
$statement->execute(array('complete'));
$total_shipping_completed = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM cust_cart WHERE payment_status=?");
$statement->execute(array('pending'));
$total_order_pending = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_order WHERE del_status=?");
$statement->execute(array('pending'));
$total_order_complete_shipping_pending = $statement->rowCount();


 $dataPoints = array();

	 $handle = $pdo->prepare("SELECT * from tbl_product i INNER JOIN tbl_product_size ii ON i.p_id = ii.p_id WHERE ii.prod_stock <= 12");
	 $handle->execute(); 
     $result = $handle->fetchAll(\PDO::FETCH_OBJ);

     foreach($result as $row){

        array_push($dataPoints, array("y"=> $row->prod_stock, "label"=> $row->p_name));
    } 
    
     $dataStockPoints = array();

	 $handle = $pdo->prepare("SELECT g_code, SUM(total_payment) AS total,payment_status,date_purchase,order_id FROM cust_cart  WHERE payment_status = 'complete' GROUP BY date_purchase");
	 $handle->execute(); 
     $result = $handle->fetchAll(\PDO::FETCH_OBJ);

     foreach($result as $row){

        array_push($dataStockPoints, array("y"=> $row->total, "label"=> $row->date_purchase));
    } 
    
    
?>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<section class="content">
	<div class="row">
		<div class="col-md-4 col-sm-6 col-xs-12">
			<div class="info-box">
				<span class="info-box-icon bg-aqua"><i class="fa fa-cog"></i></span>
				<div class="info-box-content">
					<span class="info-box-text">Top Categories</span>
					<span class="info-box-number"><?php echo $total_top_category; ?></span>
				</div>
			</div>
		</div>
		<div class="col-md-4 col-sm-6 col-xs-12">
			<div class="info-box">
				<span class="info-box-icon bg-aqua"><i class="fa fa-cog"></i></span>
				<div class="info-box-content">
					<span class="info-box-text">Mid Categories</span>
					<span class="info-box-number"><?php echo $total_mid_category; ?></span>
				</div>
			</div>
		</div>
		<div class="col-md-4 col-sm-6 col-xs-12">
			<div class="info-box">
				<span class="info-box-icon bg-aqua"><i class="fa fa-cog"></i></span>
				<div class="info-box-content">
					<span class="info-box-text">End Categories</span>
					<span class="info-box-number"><?php echo $total_end_category; ?></span>
				</div>
			</div>
		</div>
		<div class="col-md-4 col-sm-6 col-xs-12">
			<div class="info-box">
				<span class="info-box-icon bg-aqua"><i class="fa fa-product-hunt"></i></span>
				<div class="info-box-content">
					<span class="info-box-text">Total Products</span>
					<span class="info-box-number"><?php echo $total_product; ?></span>
				</div>
			</div>
		</div>
		<div class="col-md-4 col-sm-6 col-xs-12">
			<div class="info-box">
				<span class="info-box-icon bg-green"><i class="fa fa-thumbs-up"></i></span>
				<div class="info-box-content">
					<span class="info-box-text">Completed Orders</span>
					<span class="info-box-number"><?php echo $total_order_completed; ?></span>
				</div>
			</div>
		</div>
		<div class="col-md-4 col-sm-6 col-xs-12">
			<div class="info-box">
				<span class="info-box-icon bg-green"><i class="fa fa-check"></i></span>
				<div class="info-box-content">
					<span class="info-box-text">Completed Shipping</span>
					<span class="info-box-number"><?php echo $total_shipping_completed; ?></span>
				</div>
			</div>
		</div>
		<div class="col-md-4 col-sm-6 col-xs-12">
			<div class="info-box">
				<span class="info-box-icon bg-red"><i class="fa fa-clock-o"></i></span>
				<div class="info-box-content">
					<span class="info-box-text">Pending Orders</span>
					<span class="info-box-number"><?php echo $total_order_pending; ?></span>
				</div>
			</div>
		</div>
		<div class="col-md-4 col-sm-6 col-xs-12">
			<div class="info-box">
				<span class="info-box-icon bg-red"><i class="fa fa-ship"></i></span>
				<div class="info-box-content">
					<span class="info-box-text">Pending Shipping</span>
					<span class="info-box-number"><?php echo $total_order_complete_shipping_pending; ?></span>
				</div>
			</div>
		</div>

	</div>
	<br><br>

<div class="box">
	<div id="divChart">
		<button class="btn" id="btnTable" style="background-color:transparent"><span class="fa fa-table fa-lg"></span> View as table</button>
		<div id="line_chart" style="width:100%;height:500px">
		</div>
	</div>
	<div id="divTable" style="display:none">
		<button class="btn" id="btnChart" style="background-color:transparent"><span class="fa fa-area-chart fa-lg"></span> View as chart</button>
		<section class="content-header">
	<div class="content-header-left">
		<h2>Daily Sales</h2>
    </div>
</section>
<section class="content">
    <div class="box box-info">
        <div class="box-body">
<?php
  $sales=$pdo->prepare('
SELECT g_code, SUM(total_payment) AS total,payment_status,date_purchase,order_id FROM cust_cart  WHERE payment_status = "complete" GROUP BY date_purchase DESC');
  $sales->execute();
  $result = $sales->fetchAll(PDO::FETCH_ASSOC);

  if($sales)
  {
  ?>
  <table id="example1" class="table table-bordered table-striped">
  <thead>                  
  <tr>
  <th>Code</th>
  <th>Total</th>
  <th>Status</th>
  <th>Date Purchased</th>
  </tr>
  </thead>
  <tbody>
  <?php foreach ($result as $row) {?>
  <tr>
  <td><?php echo $row['g_code'];?></td>
  <td><?php echo $row['total'];?></td>
  <td><?php echo $row['payment_status'];?></td>
   <td><?php echo $row['date_purchase'];?></td>
  </tr>
  <?php } ?>
  </tbody>
  </table>
  <?php
  }
?>
        </div>
	</div>
</section>
	</div>
</div>
<br><br>
	
<div class="box">
	<div id="divItem">
		<button class="btn" id="btnPTable" style="background-color:transparent">
			<span class="fa fa-table fa-lg"></span> View as table
		</button>
		<div id="chartContainer" style="height: 370px; width: 100%;"></div>
	</div>


	<div id="divItemTable" style="display:none">
		<button class="btn" id="btnPChart" style="background-color:transparent">
			<span class="fa fa-area-chart fa-lg"></span> View as chart
		</button>
		<div class="content-header-left">
		<h2>Item Inventory</h2>
    </div>
		<section class="content">
    <div class="box box-info">
        <div class="box-body">
<?php
  $Products=$pdo->prepare('SELECT * from tbl_product i INNER JOIN tbl_product_size ii ON i.p_id = ii.p_id INNER JOIN tbl_size iii ON iii.size_id = ii.size_id WHERE ii.prod_stock <=12');
  $Products->execute();
  $result = $Products->fetchAll(PDO::FETCH_ASSOC);

  if($Products)
  {
  ?>
  <table id="example1" class="table table-bordered table-striped">
  <thead>                  
  <tr>
  <th>Name</th>
  <th>Size</th>
  <th>Quantity</th>
  </tr>
  </thead>
  <tbody>
  <?php foreach ($result as $row) {?>
  <tr>
  <td><?php echo $row['p_name'];?></td>
  <td><?php echo $row['size_name'];?></td>
  <td><?php echo $row['prod_stock'];?></td>
  </tr>
  <?php } ?>
  </tbody>
  </table>
  <?php
  }
?>
        </div>
	</div>
</section>
	</div>
</div>



<script>
window.onload = function () {
 
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	exportEnabled: true,
	theme: "light1", // "light1", "light2", "dark1", "dark2"
	title:{
		text: "Item Inventory"
	},
	axisY: {
		title: "Item Quantity",
		includeZero: true
		
	},
	axisX: {
		title: "Product Name",
		includeZero: true
		
	},
	data: [{
		type: "column", //change type to bar, line, area, pie, etc  
		dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
	}]
});

chart.render();

var stockchart = new CanvasJS.Chart("line_chart", {
	animationEnabled: true,
	exportEnabled: true,
	theme: "light1", // "light1", "light2", "dark1", "dark2"
	title:{
		text: "Daily Sales"
	},
	axisY: {
		title: "Amount",
		includeZero: true
		
	},
	axisX: {
		title: "Date",
		includeZero: true
		
	},
	data: [{
		type: "line", //change type to bar, line, area, pie, etc  
		dataPoints: <?php echo json_encode($dataStockPoints, JSON_NUMERIC_CHECK); ?>
	}]
});

stockchart.render();

}
</script>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<?php require_once('footer.php'); ?>

<script type="text/javascript">
	$(document).ready(function()
		{
			$("#btnTable").click(function()
				{
					$("#divChart").hide();
					$("#divTable").show();
				});
			$("#btnChart").click(function()
				{
					$("#divChart").show();
					$("#divTable").hide();
				});

			$("#btnPChart").click(function()
				{
					$("#divItem").show();
					$("#divItemTable").hide();
				});

			$("#btnPTable").click(function()
				{
					$("#divItem").hide();
					$("#divItemTable").show();
				});
		});
</script>

