<?php require_once('header.php');

if($error_message != '') {
    echo "<script>alert('".$error_message."')</script>";
}
if($success_message != '') {
    echo "<script>alert('".$success_message."')</script>";
}
?>

<section class="content-header">
    <div class="content-header-left">
        <h1>View Orders</h1>
    </div>
  
</section>


<section class="content">

  <div class="row">
    <div class="col-md-12">


      <div class="box box-info">
        <div class="box-body table-responsive" >
           <table id="" class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>SL</th>
                    <th>Customer Details</th>
                    <th>Product Details</th>
                     <th>
                       Shipping Payment
                    </th>
                    <th>
                       Total Payment
                    </th>

                    <th>Shipping Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                      $i=0;
                $status='pending';
                $status1='shipped';
                $statement = $pdo->prepare("SELECT * 
                 FROM cust_cart t4 JOIN cust_guest t1 ON t4.g_code=t1.g_code  JOIN cities t2 ON t1.cities=t2.city_id JOIN provinces t3 ON t2.province_id = t3.province_id WHERE t4.payment_status=? OR t4.payment_status=?  ORDER BY t4.date_purchase DESC");
                $statement->execute(array($status,$status1));
                $result = $statement->fetchAll(PDO::FETCH_ASSOC); 
                
                foreach($result as $row):
                $i++;?>
                 
                <tr class="<?php if($row['payment_status']=='pending'){echo 'bg-r';}if($row['payment_status']=='shipped'){echo 'bg-g';}
                   	 if($row['payment_status']=='complete'){echo 'bg-success';} ?>" >
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
                        		<?php echo' <b>'.$row['shipping_cost']; ?>
                        </td>
                        <td>
                        		<?php echo' <b>'.$row['total_payment']; ?>
                        </td>
                        <td>
                        		<?php echo' <b>'.$row['payment_status']; ?>
                        </td>
                          <td>
                        	<?php if ($row['payment_status']=='pending') {?>
                        	<a href="order-delivered.php?changeid=<?php echo $row['order_id']; ?>" class="btn btn-primary btn-xs" style="width:100%;">Delivered</a>
                            <br>
                            	<br>
                            <a href="" class="btn btn-danger btn-xs" data-href="order-pending-delete.php?id=<?php echo $row['order_id']; ?>" data-toggle="modal" data-target="#confirm-delete" style="width:100%;">Cancel</a>

                        	<?php } if ($row['payment_status']=='shipped'): ?>
                        		<br>
                            <a href="order-complete.php?changeid=<?php echo $row['order_id']; ?>" class="btn btn-success btn-xs" data-href="order-complete.php?id=<?php echo $key['order_id']; ?>" style="width:100%;">Complete</a><br><br>
                            <a href="" class="btn btn-danger btn-xs" data-href="order-delete.php?id=<?php echo $row['order_id']; ?>" data-toggle="modal" data-target="#confirm-delete" style="width:100%;">Cancel</a>
                        	<?php endif?>
                        </td>
                    
                </tr>
                
                
                
          <?php endforeach;
                
                ?>
          
            </tbody>
          </table>
        </div>
      </div>
  

</section>


<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Delete Confirmation</h4>
            </div>
            <div class="modal-body">
                Are you sure you want to delete this item?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                <a class="btn btn-danger btn-ok">Delete</a>
            </div>
        </div>
    </div>
</div>




<?php require_once('footer.php'); ?>

<script type="text/javascript">
    $(document).ready(function()
        {

        });
</script>

