<?php require_once('header.php'); ?>

<?php
$error_message = '';

?>
<?php
if($error_message != '') {
    echo "<script>alert('".$error_message."')</script>";
}
if($success_message != '') {
    echo "<script>alert('".$success_message."')</script>";
}
?>

<section class="content-header">
    <div class="content-header-left">
        <h1>View Complete Orders</h1>
    </div>
    

</section>


<section class="content">

  <div class="row">
    <div class="col-md-12">


      <div class="box box-info">
        <div class="box-body table-responsive divcomplete"></div>
        <div class="box-body table-responsive" >
          <table id="example1" class="table table-bordered table-striped">

          	<?php echo ""; ?>
            <thead>
                <tr>
                    <th>SL</th>
                    <th>Customer Details</th>
                    <th>Product Details</th>
                    <th>
                       Total Payment
                    </th>
                    <th>Shipping Status</th>
                  
                </tr>
            </thead>
            <tbody>
                 <?php
                      $i=0;
                $status='complete';
                
                $statement = $pdo->prepare("SELECT * 
                 FROM cust_cart t4 JOIN cust_guest t1 ON t4.g_code=t1.g_code  JOIN cities t2 ON t1.cities=t2.city_id JOIN provinces t3 ON t2.province_id = t3.province_id WHERE t4.payment_status=? ORDER BY t4.date_purchase DESC");
                $statement->execute(array($status));
                $result = $statement->fetchAll(PDO::FETCH_ASSOC); 
                
                foreach($result as $row):
                $i++;?>
                 
                <tr class="bg-success" >
                 <td><?php echo $i; ?></td>
                 <td>
                     <b>Name:</b><br> <?php echo $row['first_name'].' '.$row['last_name']; ?><br>
                     <b>Street/Brgy:</b><br> <?php echo $row['add1'].' '.$row['add2'];?><br>
                     <b>City/zipcode/province:</b><br>
                     <?php echo $row['city_name'].'/'.$row['zipcode'].'/'.$row['province_name']; ?>
                     <br>
                     <b>Email:</b><br> <?php echo $row['email']; ?><br>
                     <b>Phone#:</b><br> <?php echo $row['phonenum']; ?><br><br>
                 </td>
                 <td>
                     
                          <?php
                        $del_id=$row['order_id'];
                        $order=$row['date_purchase'];
                           $statement = $pdo->prepare("SELECT *
                 FROM tbl_order t1 JOIN tbl_size t2 ON t1.size=t2.size_id  WHERE t1.cart_id= ? AND t1.order_date=? ORDER BY t1.order_date DESC");
                $statement->execute(array($del_id,$order));
                $result = $statement->fetchAll(PDO::FETCH_ASSOC);   
                    	foreach ($result as $key) {
                                echo '<b>Product Name:</b> '.$key['product_name'];
                                echo '<br>(<b>Size:</b> '.$key['size_name'].')';
                                echo '<br>(<b>Quantity:</b> '.$key['quantity'];
                                echo ', <b>Unit Price:</b> '.$key['unit_price'].')';
                                echo '<br><br>';
                          }    
                           ?>
                 </td>
                    
                    <td>
                        		<?php echo'<b>'. number_format($row['total_payment'],2); ?>
                        </td>
                    
                        
                        <td>
                        		<?php echo' <b>'.$row['payment_status']; ?>
                        </td>
                         
                    
                </tr>
                
                
                
          <?php endforeach;
                
                ?>
          z



            </tbody>
          </table>
        </div>
      </div>
  

</section>



<?php require_once('footer.php'); ?>

