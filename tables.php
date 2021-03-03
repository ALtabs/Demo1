<?php 
session_start();
include("admin/inc/config.php");
include('pagination.php');



if(isset($_POST['products']))
{

$Products=$pdo->prepare('SELECT * FROM tbl_order i JOIN tbl_user ii ON i.cust_id = ii.id JOIN tbl_product iii ON iii.p_id = i.product_id');
$Products->execute();
$result = $Products->fetchAll(PDO::FETCH_ASSOC);

  if($Products)
  {
      ?>
      <table class="table table-bordered">
      <thead>                  
      <tr>
      <th style="width: 10px">Product</th>
      <th>Size</th>
      <th>Quantity</th>
      <th>Unit Price</th>
      <th>Discount</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($result as $row) {?>
      <tr>
        <td><img src="assets/uploads/<?php echo $row['p_featured_photo'];?>"></td>
        <td><?php echo $row['size'];?></td>
        <td><?php echo $row['quantity'];?></td>
        <td><?php echo $row['unit_price'];?></td>
        <td><?php echo $row['order_discount'];?></td>
      </tr>
    <?php } ?>
  </tbody>
</table>
<?php
    }
  
}

if(isset($_POST['prices']))
{
  $price = $pdo->prepare("SELECT * FROM provinces i INNER JOIN cities ii ON i.province_id = ii.province_id INNER JOIN tbl_shipping_cost iii ON iii.city_id = ii.city_id");
  $price->execute();
  $res=$price->fetchAll(PDO::FETCH_ASSOC);

  if($price)
  {
  ?>

    <thead>
        <th>Province name</th>
        <th>City Name</th>
        <th>Amount</th>
    </thead>
    <tbody>
    <?php foreach ($res as $row){?>
        <tr>
            <td><?php echo $row['province_name'];?></td>
            <td><?php echo $row['city_name'];?></td>
            <td><?php echo $row['amount'];?></td>
        </tr>
    </tbody>

  <?php
    } 
  }
}

if(isset($_POST['shipping_cost_operation']))
{ ?>
  <script type="text/javascript">
    $("#example1").DataTable();
      $('#example2').DataTable({
        "paging": true,
        "lengthChange": false,
        "searching": false,
        "ordering": true,
        "info": true,
        "autoWidth": false
      });
  </script>
  <?php
   $shipping_costs=$pdo->prepare('
SELECT * FROM provinces i INNER JOIN cities ii ON i.province_id = ii.province_id INNER JOIN tbl_shipping_cost iii ON iii.city_id = ii.city_id');
  $shipping_costs->execute();
  $result = $shipping_costs->fetchAll(PDO::FETCH_ASSOC);

  if($shipping_costs)
  {
  ?>
  <table id="example1" class="table table-bordered table-striped">
  <thead>                  
  <tr>
  <th>Province</th>
  <th>City</th>
  <th>Amount</th>
  <th width="10px">Edit</th>
  </tr>
  </thead>
  <tbody>
  <?php foreach ($result as $row) {?>
  <tr>
  <td><?php echo $row['province_name'];?></td>
  <td><?php echo $row['city_name'];?></td>
  <td><?php echo $row['amount'];?></td>
  <td>
    <button type="button" id="Btn_Edit" class="btn btn-info" shipping_id = "<?php echo $row['shipping_cost_id'];?>"
                                                             province_name = "<?php echo $row['province_name'];?>"
                                                             city_name = "<?php echo $row['city_name'];?>"
                                                             old_amt = "<?php echo $row['amount'];?>"
      >
      <span class="fa fa-wrench"></span>
    </button>
  </td>
  </tr>
  <?php } ?>
  </tbody>
  </table>
  <?php
  }
}

  if(isset($_POST['orders']))
  {
    $Order_ID = $_POST['cart_id'];
    $order = $pdo->prepare("SELECT * FROM tbl_order  WHERE cart_id = ?");
    $order->execute(array($Order_ID));
    $result = $order->fetchAll(PDO::FETCH_ASSOC);
      ?>
      <table class="table table-striped">
      <thead>
        <th>Product name</th>
        <th>Size</th>
        <th>Quantity</th>
        <th>Unit Price</th>
        <th>Method</th>
    </thead>
    <tbody>
    <?php foreach ($result as $row){?>
        <tr>
            <td><?php echo $row['product_name'];?></td>
            <td><?php echo $row['size'];?></td>
            <td><?php echo $row['quantity'];?></td>
            <td><?php echo $row['unit_price'];?></td>
            <td><?php echo $row['payment_id'];?></td>
        </tr>
    </tbody>
    <?php
    }
}

if(isset($_POST['carts']))
{
  $id = $_POST['cart_id'];

  $Products=$pdo->prepare('
SELECT * FROM tbl_user i INNER JOIN cust_cart ii ON i.id = ii.g_code INNER JOIN tbl_order iii ON iii.cart_id = ii.order_id WHERE i.id =? AND ii.payment_status="pending" GROUP BY iii.cart_id');
  $Products->execute(array($id));
  $result = $Products->fetchAll(PDO::FETCH_ASSOC);

  if($Products)
  {
  ?>
  <table class="table table-bordered" id="Table_Cart">
  <thead>                  
  <tr>
  <th>OR #</th>
  <th>Subtotal</th>
  <th>Shipping Cost</th>
  <th>Purchase Date</th>
  <th>Status</th>
  <th style="width:5px">Option</th>
  </tr>
  </thead>
  <tbody>
  <?php foreach ($result as $row) {
    ?>

  <tr>
  <td><?php echo $row['cart_id'];?></td>
  <td><?php echo $row['total_payment'];?></td>
  <td><?php echo $row['shipping_cost'];?></td>
  <td><?php echo $row['date_purchase'];?></td>
  <td><i><?php echo $row['payment_status'];?></i></td>
  <td style="width:5px">
    <!--<button type="button" id="BtnDeleteOrder" class="btn btn-danger"><span class="fa fa-trash"></span></button>-->
    <button type="button" id="BtnViewCart" class="btn btn-info" cart_id="<?php echo $row['cart_id'];?>"><span class="fa fa-info"></span></button>
  </td>
  </tr>
  <?php } ?>
  </tbody>
  </table>
  <?php
  }

}

if(isset($_POST['stocks']))
{
  ?>
  <script type="text/javascript">
    $("#example1").DataTable();
      $('#example2').DataTable({
        "paging": true,
        "lengthChange": false,
        "searching": false,
        "ordering": true,
        "info": true,
        "autoWidth": false
      });
  </script>
  <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Product name</th>
                <th>Size</th>
                <th>Quantity</th>
                <th width="40px">Option</th>
              </tr>
            </thead>
            <tbody>
              <?php $query = $pdo->prepare("SELECT * FROM  tbl_product_size i INNER JOIN tbl_size ii ON i.size_id = ii.size_id INNER JOIN tbl_product iii ON iii.p_id = i.p_id");
                $query->execute();
                $res = $query->fetchAll(PDO::FETCH_ASSOC);
                foreach($res as $row) 
                {
              ?>
              <tr>
                <td><?php echo $row['p_name'];?></td>
                <td><?php echo $row['size_name'];?></td>
                <td><?php echo $row['prod_stock'];?></td>
                <td>
                  <button type="button" id="BtnAdd" class="btn btn-success" 
                  de_id="<?php echo $row['id'];?>"
                  de_name="<?php echo $row['p_name'];?>"
                  de_size="<?php echo $row['size_name'];?>"
                  de_Qty="<?php echo $row['prod_stock'];?>"
                  >
                    <span class="fa fa-plus"></span>
                  </button>
                </td>
              </tr>
              <?php }?>
            </tbody>
          </table>
          <?php
}

if(isset($_POST['accountoperation']))
{
  ?>
  <script type="text/javascript">
    $("#example1").DataTable();
      $('#example2').DataTable({
        "paging": true,
        "lengthChange": false,
        "searching": false,
        "ordering": true,
        "info": true,
        "autoWidth": false
      });
  </script>
  <table id="example1" class="table table-bordered table-striped">
    <thead>
      <tr>
        <th>ID #</th>
        <th>Photo</th>
        <th>Fullname</th>
        <th>Email Address</th>
        <th>Phone #</th>
        <th>Role</th>
        <th>Status</th>
        <th width="60px">Option</th>
      </tr>
    </thead>
    <tbody>
      <?php $query = $pdo->prepare("SELECT * from tbl_user WHERE role != 'guest' AND role != 'DATADMIN'");
      $query->execute();
      $res = $query->fetchAll(PDO::FETCH_ASSOC);
      foreach($res as $row) 
      {
      ?>
          <tr>
            <td><?php echo$row['id'];?></td>.
            <td><img src="../assets/uploads/users/<?php echo $row['photo'];?>" class="img-responsive" style="width:100px"></td>
            <td><?php echo$row['full_name'];?></td>
            <td><?php echo$row['email'];?></td>
            <td><?php echo$row['phone'];?></td>
            <td><?php echo$row['role'];?></td>
            <td>
              <?php if($row['user_status'] > 0) {
                echo 'Active'; }
                else { echo 'Inactive'; }
               ?>
            </td>
            <td>
              <button type="button" class="btn btn-info" id="Btn_Edit" user_id="<?php echo $row['id'];?>"
                                                                       user_name="<?php echo $row['full_name'];?>"
                                                                       user_role="<?php echo $row['role'];?>"
                                                                       user_photo="<?php echo $row['photo'];?>"
                                                                                                          >
                <span class="fa fa-gear"></span>
              </button>
              <?php if($row['user_status'] > 0) {?>
              <button type="button" class="btn btn-danger" id="Btn_Block" user_id="<?php echo $row['id'];?>"
                                                                          user_name="<?php echo $row['full_name'];?>">
                <span class="fa fa-lock"></span>
              </button>
            <?php } else { ?>

              <button type="button" class="btn btn-success" id="Btn_Restore" user_id="<?php echo $row['id'];?>"
                                                                          user_name="<?php echo $row['full_name'];?>">
                <span class="fa fa-unlock"></span>
              </button>
            <?php }?>

            </td>
          </tr>
        </tbody>
<?php }
}

if(isset($_POST['customer']))
{
  ?>
  <script type="text/javascript">
    $("#example1").DataTable();
      $('#example2').DataTable({
        "paging": true,
        "lengthChange": false,
        "searching": false,
        "ordering": true,
        "info": true,
        "autoWidth": false
      });
  </script>
  <table id="example1" class="table table-bordered table-striped">
    <thead>
      <tr>
        <th>ID #</th>
        <th>Photo</th>
        <th>Fullname</th>
        <th>Email Address</th>
        <th>Status</th>
        <th>Role</th>
        <th width="40px">Option</th>
      </tr>
    </thead>
    <tbody>
      <?php $query = $pdo->prepare("SELECT * FROM tbl_user i INNER JOIN cust_guest ii ON i.id = ii.g_code INNER JOIN provinces iii ON iii.province_id = ii.muni INNER JOIN cities iiii ON iiii.city_id = ii.cities");
      $query->execute();
      $res = $query->fetchAll(PDO::FETCH_ASSOC);
      foreach($res as $row) 
      {
      ?>
          <tr>
            <td><?php echo$row['id'];?></td>
            <td><img src="../img/user/<?php echo$row['photo'];?>" class="img-responsive" style="width:100px"></td>
            <td>
              <?php echo$row['full_name'];?><br>
              <?php echo$row['phone'];?><br>
              <?php echo$row['province_name'];?>, <?php echo$row['city_name'];?>
                
              </td>
            <td><?php echo$row['email'];?></td>
            <td><?php 
            if($row['user_status'] == 1)
            {
                echo 'Active';
            }
            else{
              echo 'Inactive';
            }
            ?></td>
            <td><?php echo$row['status'];?></td>
            <td>
              <?php if($row['user_status']==1) {?>
              <button type="button" class="btn btn-danger" id="BtnLock" user_id="<?php echo$row['id'];?>"
                                                                        user_fullname="<?php echo$row['full_name'];?>">
                <span class="fa fa-lock"></span>
              </button>
            <?php }
                else
                { ?>
              <button type="button" class="btn btn-success" id="BtnUnlock" user_id="<?php echo$row['id'];?>"
                                                                             user_fullname="<?php echo$row['full_name'];?>">
                <span class="fa fa-unlock"></span>
              </button>
                <?php } ?>
            </td>
          </tr>
        </tbody>
<?php }
}

if(isset($_POST['subscribers']))
{
  ?>
  <script type="text/javascript">
    $("#example1").DataTable();
      $('#example2').DataTable({
        "paging": true,
        "lengthChange": false,
        "searching": false,
        "ordering": true,
        "info": true,
        "autoWidth": false
      });
  </script>
  <table id="example1" class="table table-bordered table-striped">
    <thead>
      <tr>
        <th>ID #</th>
        <th>Email</th>
        <th>Date subscribed</th>
        <th>Status</th>
      </tr>
    </thead>
    <tbody>
      <?php $query = $pdo->prepare("SELECT * FROM tbl_subscriber");
      $query->execute();
      $res = $query->fetchAll(PDO::FETCH_ASSOC);
      foreach($res as $row) 
      {
      ?>
          <tr>
            <td><?php echo$row['subs_id'];?></td>
            <td><?php echo$row['subs_email'];?></td>
            <td><?php echo$row['subs_date'];?></td>
            <td><?php echo$row['subs_active'];?></td>
            </td>
          </tr>
        </tbody>
<?php }
}

if(isset($_POST['detailsshipping']))
{ ?>
    <script type="text/javascript">
    $("#example1").DataTable();
      $('#example2').DataTable({
        "paging": true,
        "lengthChange": false,
        "searching": false,
        "ordering": true,
        "info": true,
        "autoWidth": false
      });
  </script>
  <table id="example1" class="table table-bordered table-striped" >
                <thead>
                  <tr>
                    <th >Province</th>
                    <th >Municipality/City</th>
                    <th >Shipping Amount</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $statement=$pdo->prepare("SELECT * FROM tbl_shipping_cost i JOIN cities ii ON i.city_id = ii.city_id JOIN provinces iii ON i.province_id = iii.province_id");
                    $statement->execute();
                    $ship=$statement->fetchAll(PDO::FETCH_ASSOC);
                    foreach ($ship as $cost) {?>
                  <tr>
                    <td><?php echo $cost['province_name'];?></td>
                    <td><?php echo $cost['city_name'];?></td>
                    <td><?php echo $cost['amount'];?></td>
                  </tr>
                    <?php } ?>
                </tbody>
              </table>
              <?php
}



?>