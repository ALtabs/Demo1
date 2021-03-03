<!DOCTYPE html>
<?php include("header.php");

if (isset($_SESSION['error12'])) {
  # code...
    $error_message = "Your Purchase quantity must not be more than the available stock".'<br>';
    unset($_SESSION['error12']);
}
if (isset($_SESSION['success12'])) {
  # code...
    $success_message = "Product Updated Successfully ".'<br>';
    unset($_SESSION['success12']);
}

 ?>

    <div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-12 text-center">
              <!-- breadcrumb-->
              <br>
               <?php  if($error_message != '') {
                    echo "<div class='danger' style='padding: 10px;background:#f1f1f1;margin-bottom:20px; color:red'>".$error_message."</div>";
                        }
                      if($success_message != '') {
                      echo "<div class='success' style='padding: 10px;background:#f1f1f1;margin-bottom:20px;color:green'>".$success_message."</div>";
                      
                                }

                                ?>

            </div>
            <div class="left" style="padding-bottom: 10px;"><a href="index.php" class="btn btn-primary"> <i class="fa fa-arrow-left "> Back to shopping</i></a>
             </div>



            <div id="basket" class="col-lg-12">
              <div class="box">
                <form method="POST" action="update.php">

                  <h1>Shopping cart</h1>
                  <p class="text-muted">You currently have <?php echo count($_SESSION['cart_p_id']); ?> item(s) in your cart. </p>
                  <div class="table-responsive">

                        <?php if( count($_SESSION['cart_p_id'])!=0){?>
                    <table class="table">


                      <thead>
                        <tr>

                          <th colspan="2">Product</th>
                          <th>Size</th>
                          <?php if($error_message != ''):?>
                          <th>Avail. Stock</th>
                          <?php endif;?>
                          <th>Purchase</th>
                          <th>Unit price</th>
                          <th>Discount</th>
                          <th colspan="2">Total</th>
                        </tr>
                      </thead>
                      <tbody>
                    <?php 

                         
                   if (isset($_SESSION['wcart'])!='') {
                          # code... 
                          $table_total_price = 0;
                        $i=0;
                        foreach($_SESSION['cart_p_id'] as $key) 
                        {
                            $i++;
                            $arr_cart_p_id[$i] = $key;
                        }

                        $i=0;
                        foreach($_SESSION['cart_size_id'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_size_id[$i] = $value;
                        }

                        $i=0;
                        foreach($_SESSION['cart_size_name'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_size_name[$i] = $value;
                        }

                        $i=0;
                        foreach($_SESSION['cart_p_qty'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_p_qty[$i] = $value;
                        }

                        $i=0;
                        foreach($_SESSION['cart_p_current_price'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_p_current_price[$i] = $value;
                        }

                        $i=0;
                        foreach($_SESSION['cart_p_name'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_p_name[$i] = $value;
                        }

                        $i=0;
                        foreach($_SESSION['cart_p_featured_photo'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_p_featured_photo[$i] = $value;
                        }

                        $i=0;
                        foreach($_SESSION['totaldis'] as $key) 
                        {
                            $i++;
                            $arr_cart_p_dis[$i] = $key;
                        }
                       
                         
                              
                          for ($i=1; $i<=count($arr_cart_p_id) ; $i++) :
                            $statement = $pdo->prepare("SELECT * FROM tbl_product_size WHERE p_id=?");
                            $statement->execute(array($arr_cart_p_id[$i]));
                            $result = $statement->fetchAll(PDO::FETCH_ASSOC);             
                           foreach ($result as $row) {
                             $size_id[]= $row['size_id'];
                             $p_stock=$row['prod_stock'];
                           }
                            ?>
                            
                           <tr>

                          <td>  
                            <input type="hidden" name="product_id[]" value="<?php echo $arr_cart_p_id[$i]; ?>">
                            <input type="hidden" name="proside[]" value="<?php echo $arr_cart_size_id[$i]; ?>">
                            <input type="hidden" name="product_name[]" value="<?php echo $arr_cart_p_name[$i]; ?>">
                            <a href="#"><img src="assets/uploads/<?php echo $arr_cart_p_featured_photo[$i];?>" alt="azureh"></a></td>
                          <td><?php echo $arr_cart_p_name[$i];?></td>
                          <td>
                             <select name="sizeupdate" class="form-control col-md-12" style="width: 60px;">
                             <option value="<?php echo $arr_cart_size_id[$i];?>"><?php echo $arr_cart_size_name[$i]; ?></option>
                                            <?php
                                            $statement = $pdo->prepare("SELECT * FROM tbl_size");
                                            $statement->execute();
                                            $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                            foreach ($result as $row) {
                                                if(in_array($row['size_id'],$size_id)) {
                                                    if($row['size_id']==$arr_cart_size_id[$i]){
                                                   }else
                                                    {?>
                                                       
                                                         <option value="<?php echo $row['size_id']; ?>"><?php echo $row['size_name']; ?></option>
                                              <?php }
                                                }
                                            }
                                            ?>
                          </select>
                                
                          </td>
                          <!---<td>
                            <input type="text" name="sizeupdate" class="form-control" style="width: 90px; text-align: center;" value="<?php //echo $arr_cart_size_name[$i]; ?>" readonly>
                          </td>-->
                          <?php if($error_message != ''):?>
                          <td><?php echo $p_stock;  ?></td>
                          <?php endif;?>
                          <td>
                           
                            <input type="text" min="0" value="<?php echo $arr_cart_p_qty[$i]; ?>" step="1" class="form-control" name="quantity[]" style="width: 60px;">
                          </td>
                          
                           
                          <td>&#8369; <?php echo $arr_cart_p_current_price[$i]; ?></td>

                          <td><?php echo $arr_cart_p_dis[$i];?>%</td>
                          <?php
                            $price=$arr_cart_p_current_price[$i];
                            $qty=$arr_cart_p_qty[$i];
                            $row_total_price = ((int)$price*(int)$qty);
                            $table_total_price = $table_total_price + $row_total_price;

                                ?>

                          <td>&#8369; <?php echo number_format($row_total_price, 2); ?></td>
                          <td><a href="cart-item-delete.php?id=<?php echo $arr_cart_p_id[$i]; ?>&size=<?php echo $arr_cart_size_id[$i]; ?>" class="btn btn-danger btn-sm"><span class="fa fa-trash"></span></a></a></td>
                          
                        </tr>

                   <?php  endfor; ?>

                      </tbody>
                      <tfoot>
                        <tr>

                          <th colspan="6">Total</th>
                          <th colspan="1" class="left">P <?php echo number_format($table_total_price, 2); ?></th>
                        </tr>
                      </tfoot>
                      
                    </table>
                  </div>
                  <!-- /.table-responsive-->
                  <div class="box-footer d-flex justify-content-between flex-column flex-lg-row">
                    <div class="left"><a href="index.php" class="btn btn-outline-secondary"><i class="fa fa-chevron-left"></i> Continue shopping</a></div>
                    <div class="right">
                        
                      <button  type="submit" class="btn btn-outline-secondary" name="proupdate"><i class="fa fa-refresh fa-spin"></i> Update cart</button>
                       <?php if($error_message == ''):?>
                           <a href="checkout.php" class="btn btn-primary"> Proceed to checkout<i class="fa fa-spinner fa-pulse"></i></a>
                          <?php endif;?>
                     
                    </div>
                  </div>
                      <?php } }?>
                 
                </form>
              </div>
              <!-- /.box-->
             
            </div>
            <!-- /.col-lg-9-->
           
            <!-- /.col-md-3-->
          </div>
        </div>
      </div>
    </div>
<?php include('footer.php')?>